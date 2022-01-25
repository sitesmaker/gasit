<?php

@session_set_cookie_params(86400);
@ini_set('session.gc_maxlifetime', 86400);

use Bitrix\Iblock\ElementTable;
use Bitrix\Main\Config\Configuration;
use Bitrix\Main\Data\Cache;
use Bitrix\Main\Loader;
use dnext\Helper;


/** Параметры отладки для подключённых компонентов */
$exceptionHandling = Configuration::getValue('exception_handling');
define('DEBUG_ENABLE', $exceptionHandling['debug']);

if (file_exists($_SERVER['DOCUMENT_ROOT'] . '/local/vendor/autoload.php')) {
    require_once $_SERVER['DOCUMENT_ROOT'] . '/local/vendor/autoload.php';
}

/** Отключаем Kint, если его использовали, все забытые в коде вызовы перестанут работать */
if (!DEBUG_ENABLE && class_exists('Kint\Kint')) {
    \Kint\Kint::$enabled_mode = false;
}

/** Отключаем кэширование компонентов при включённой отладке, чтобы не сбрасывать кэш */
if (DEBUG_ENABLE) {
    COption::SetOptionString('main', 'component_cache_on', 'N');
}

/** Подключение констант проекта */
if (file_exists(__DIR__ . '/constants.php')) {
    require_once(__DIR__ . '/constants.php');
}

/** Подключение функций проекта */
if (file_exists(__DIR__ . '/functions.php')) {
    require_once(__DIR__ . '/functions.php');
}

/**
 * Загрузка глобальных данных в константы
 * неизящно, но просто и банально
 */
global $GASIT_COMMON_DATA;
if (defined('GASIT_COMMON_IBLOCK_ID') &&
    !empty(constant('GASIT_COMMON_IBLOCK_ID'))) {
    try {
        $cache = Cache::createInstance(); // получаем экземпляр класса
        if ($cache->initCache(36000000, IBLOCK_TYPE . '_common_data')) { // проверяем кеш и задаём настройки
            $GASIT_COMMON_DATA = $cache->getVars(); // достаем переменные из кеша
        } elseif ($cache->startDataCache()) {
            if (Loader::includeModule('iblock')) {
                $rs = ElementTable::query()
                    ->addFilter('IBLOCK_ID', GASIT_COMMON_IBLOCK_ID)
                    ->setSelect(['ID', 'IBLOCK_ID', 'CODE', 'PREVIEW_TEXT', 'DETAIL_TEXT'])
                    ->setCacheTtl(36000000)
                    ->exec();
                if ($GASIT_COMMON_DATA = $rs->fetch()) {
                    $rs = \CIBlockElement::GetProperty(
                        $GASIT_COMMON_DATA['IBLOCK_ID'],
                        $GASIT_COMMON_DATA['ID'],
                        ['sort' => 'asc'],
                        [
                            'CODE' => [
                                'LOGO',
                                'LOGO_TEXT',
                                'PHONE',
                                'INSTRUCTION_TITLE',
                                'INSTRUCTION_FILE',
                                'CONTRAINDICATIONS_TEXT',
                                'WARNING_TEXT',
                                'COOKIES_TEXT',
                                'SEO_HEAD',
                                'SEO_BODY',
                            ],
                            'EMPTY' => 'N',
                        ]
                    );
                    while ($property = $rs->fetch()) {
                        if (in_array($property['CODE'], ['LOGO', 'INSTRUCTION_FILE'], true)) {
                            $GASIT_COMMON_DATA[$property['CODE']] = CFile::GetPath($property['VALUE']);
                            continue;
                        }
                        if ($property['CODE'] === 'PHONE') {
                            $GASIT_COMMON_DATA[$property['CODE']]['VALUE'] = $property['VALUE'];
                            $GASIT_COMMON_DATA[$property['CODE']]['CLEAN_VALUE'] = Helper::getPhoneWithoutMask(
                                $property['VALUE']
                            );
                            continue;
                        }
                        if (isset($property['VALUE']['TEXT'])) {
                            $GASIT_COMMON_DATA[$property['CODE']] = $property['VALUE']['TEXT'];
                            continue;
                        }
                        if (false !== strpos($property['CODE'], 'SEO_') &&
                            strlen($property['VALUE']) > 0) {
                            $GASIT_COMMON_DATA[$property['CODE']] = str_replace(
                                '<script',
                                '<script data-skip-moving="true"',
                                $property['VALUE']
                            );
                            continue;
                        }
                        $GASIT_COMMON_DATA[$property['CODE']] = $property['VALUE'];
                    }
                    $cache->endDataCache($GASIT_COMMON_DATA); // записываем в кеш
                }
            }
        }
    } catch (\Exception $e) {
        // @todo добавить логирование в журнал событий
    }
}
