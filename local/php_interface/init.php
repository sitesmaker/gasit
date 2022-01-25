<?
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 26.10.2019
 * Time: 09:12
 */

use Bitrix\Main\Context;

require_once('SplClassLoader.php');
$classLoader = new SplClassLoader('ALSE', __DIR__ . '/lib'); // Классы в пространстве имен ALSE
$classLoader->register();

require_once __DIR__.'/define.php';

/*include_once(__DIR__.'/../js/config.php');*/

# Пользвательские свойства элементов инфоблока
include_once __DIR__.'/iblockFields/ALSEUserFieldHtml.php';
include_once(__DIR__ .'/iblockFields/ALSEIblockFieldTable.php');
include_once(__DIR__ .'/iblockFields/ALSEIblockFieldOptions.php');

# Различные вспомогательные функции
include_once __DIR__.'/functions.php';

\Bitrix\Main\Loader::includeModule('alsem.areas');

class OnEndBufferContentHandler
{
    /**
     * Заменяем все '®'
     *
     * @param $bufferContent
     */
    public function bufferWordingFix(&$bufferContent)
    {
        $replaceWord = '®';
        $replaceWordHtmlCode = '&#174;';
        $replaceUnicodeWordCode = '\x{00AE}';
        $request = Context::getCurrent()->getRequest();
        $splitRequestDir = explode('/', trim($request->getRequestedPageDirectory(), '/'));
        $isAdminPage = ($splitRequestDir['0'] === 'bitrix' && $splitRequestDir['1'] === 'admin');
        
        global $USER;
        $isDeveloper = ($USER->GetLogin() === 'developer');
        
        if (!$isAdminPage && !$isDeveloper) {
            $bufferContent = preg_replace(
                '/(' . $replaceWord . '|' . $replaceWordHtmlCode . '|' . $replaceUnicodeWordCode . ')/iu',
				'<sup>' . $replaceWord . '</sup>',
                $bufferContent
            );
            $action = $request->getPostList()->get('action');
            if (!empty($action) && $action === 'showMore') {
                $showMoreContent = json_decode($bufferContent, true);
                $reloadJsonContent = false;
                if (!empty($showMoreContent) && isset($showMoreContent['items'])) {
                    $showMoreContent['items'] = preg_replace(
                        '/(' . $replaceWord . '|' . $replaceWordHtmlCode . '|' . $replaceUnicodeWordCode . ')/iu',
                        '<sup>' . $replaceWord . '</sup>',
                        $showMoreContent['items']
                    );
                    $reloadJsonContent = true;
                }
                if ($reloadJsonContent) {
                    $bufferContent = json_encode($showMoreContent);
                }
            }
        }
    }
}
/**
 * Обработка содержимого буфера перед выводом
 */
AddEventHandler('main', 'OnEndBufferContent', ['OnEndBufferContentHandler', 'bufferWordingFix']);


/** Добавить блок ниже в основной общий init.php комплекта лэндингов! */
try {
    \Bitrix\Main\Loader::registerAutoLoadClasses(
        null,
        [
            'dnext\\CIBlockCustomPropertyComposite' => '/local/php_interface/classes/CIBlockCustomPropertyComposite.php',
        ]
    );
    
    $eventManager = \Bitrix\Main\EventManager::getInstance();
    $eventManager->addEventHandler(
        'iblock',
        'OnIBlockPropertyBuildList',
        [
            '\dnext\CIBlockCustomPropertyComposite',
            'GetUserTypeDescription',
        ]
    );
    $eventManager->addEventHandler(
        'iblock',
        'OnBeforeIBlockElementDelete',
        [
            '\dnext\CIBlockCustomPropertyComposite',
            'OnBeforeIBlockElementDelete',
        ]
    );
} catch (\Throwable $e) {
    // @todo: запись в журнал событий
}
