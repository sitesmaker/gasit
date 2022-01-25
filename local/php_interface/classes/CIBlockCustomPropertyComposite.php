<?php


namespace dnext;

use CFile;
use CIBlockElement;
use CIBlockProperty;
use CLightHTMLEditor;
use CModule;


/**
 * Класс для комплексного пользовательского свойства элемента инфоблока.
 * Проверены работа с тегами, компонентами и различными функциями битрикса. Как итог - подборка стабильно работающих
 * с минимальными вложениями элементов.
 *
 * Поддержка множественности значений, простого текстового редактора, простой загрузки файлов.
 *
 * Регистрация в init.php:
 * AddEventHandler("iblock", "OnIBlockPropertyBuildList",
 *      array("\dnext\CIBlockCustomPropertyComposite", "GetUserTypeDescription"));
 * AddEventHandler("iblock", "OnBeforeIBlockElementDelete",
 *      array("\dnext\CIBlockCustomPropertyComposite", "OnBeforeIBlockElementDelete"));
 *
 * Class CIBlockCustomPropertyComposite
 *
 * @package dnext
 */
class CIBlockCustomPropertyComposite
{
    /**
     * @return array
     */
    public static function GetUserTypeDescription(): array
    {
        return [
            "PROPERTY_TYPE" => "S", // основное поле - строка
            "USER_TYPE" => "CUSTOMPROPCOMPOSITE",
            "DESCRIPTION" => "[dnext] Составное поле",
            "ConvertToDB" => [__CLASS__, "ConvertToDB"],
            "ConvertFromDB" => [__CLASS__, "ConvertFromDB"],
            "GetPropertyFieldHtml" => [__CLASS__, "GetPropertyFieldHtml"],
            "GetPropertyFieldHtmlMulty" => [__CLASS__, "GetPropertyFieldHtmlMulty"],
            "GetPublicViewHTML" => [__CLASS__, "GetPublicViewHTML"],
            
            //"CheckFields" => array(__CLASS__, "CheckFields"),
            //"GetLength" =>array(__CLASS__,"GetLength"),
            //"GetAdminListViewHTML" =>array(__CLASS__,"GetAdminListViewHTML"),
            //"GetPublicEditHTML" =>array(__CLASS__,"GetPublicEditHTML"),
            //"GetSettingsHTML" =>array(__CLASS__,"GetSettingsHTML"),
            //"PrepareSettings" =>array(__CLASS__,"PrepareSettings"),
        ];
    }
    
    /**
     * Если свойство содержит одно значение.
     * Для массива значений, когда не реализован GetPropertyFieldHtmlMulty,
     * вызывается последовательно для каждого элемента массива.
     *
     * @param $arProperty
     * @param $value
     * @param $strHTMLControlName
     *
     * @return string
     */
    public static function GetPropertyFieldHtml($arProperty, $value, $strHTMLControlName): string
    {
        return self::getHTMLForOneStep($value['VALUE'], $strHTMLControlName["VALUE"]);
    }
    
    /**
     * Отдаёт цельный блок всех полей ввода для одного значения свойства.
     *
     * @param $value
     * @param $strHTMLControlName
     *
     * @return string
     */
    private static function getHTMLForOneStep($value, $strHTMLControlName): string
    {
        $HTMLOutput = '';
        
        if (!empty($value)) {
            $HTMLOutput .= '<input name="' . $strHTMLControlName . '[del]" value="Y" type="checkbox"><label><strong>&nbsp;&nbsp;Удалить пункт</strong></label>'
                . '<br /><br />';
        }
        
        $HTMLOutput .= '<label><span>Подзаголовок:</span></label><br />'
            . '<input name="' . $strHTMLControlName . '[NAME]" value="' . htmlspecialcharsbx(
                $value['NAME']
            ) . '" size="50" type="text">'
            . '<br /><br />';
        
        $HTMLOutput .= '<label><span>Текстовое описание (<u>не более 2000 знаков</u>):</span></label><br />'
            . self::getIncludeEditor($value['DESCR'], $strHTMLControlName . '[DESCR]')
            . '<br /><br />';
        
        $HTMLOutput .= self::getIncludeUploader($value['IMG'], $strHTMLControlName . '[IMG]');
        return $HTMLOutput;
    }
    
    /**
     * Подключение простого текстового редактора, на выходе HTML для вставки
     *
     * @param $content
     * @param $strHTMLControlName
     *
     * @return string
     */
    private static function getIncludeEditor($content, $strHTMLControlName): string
    {
        $id = preg_replace("/([^a-z0-9])/is", "_", $strHTMLControlName);
        $inputName = $strHTMLControlName . '[TEXT]';
        $inputType = $strHTMLControlName . '[TYPE]';
        
        $editorHTML = '';
        
        if (CModule::IncludeModule("fileman")) {
            $editorHTML .= '<input type="hidden" name="' . $inputType . '" value="html">';
            ob_start();
            $LHE = new CLightHTMLEditor();
            $LHE->Show(
                [
                    'id' => $id,
                    'width' => '80 % ',
                    'height' => '250px',
                    'inputName' => $inputName,
                    'content' => htmlspecialchars_decode($content['TEXT']),
                    'bUseFileDialogs' => false,
                    'bFloatingToolbar' => false,
                    'bArisingToolbar' => false,
                    'bInitByJS' => false,
                    'bSetDefaultCodeView' => true,
                    'toolbarConfig' => [
                        'Bold',
                        'Italic',
                        'Underline',
                        'Strike',
                        'RemoveFormat',
                        'CreateLink',
                        'DeleteLink',
//                        'Image', 'Video',
                        'JustifyLeft',
                        'JustifyCenter',
                        'JustifyRight',
                        'JustifyFull',
                        'InsertOrderedList',
                        'InsertUnorderedList',
                        'Outdent',
                        'Indent',
                        'BackColor',
                        'ForeColor',
                        'StyleList',
                        'HeaderList',
                        'FontList',
                        'FontSizeList',
                        'Table',
                    ],
                ]
            );
            $editorHTML .= ob_get_clean();
        } else {
            $editorHTML .= '<input type="hidden" name="' . $inputType . '" value="text">';
            $editorHTML .= '<textarea name="' . $inputName . '" style="width: 80%; height: 250px;">' . $content['TEXT'] . '</textarea>';
        }
        return $editorHTML;
    }
    
    /**
     * Подключение диалога загрузки файла с обвесом, на выходе HTML для вставки
     *
     * @param $imageId
     * @param $strHTMLControlName
     *
     * @return false|string
     */
    private static function getIncludeUploader($imageId, $strHTMLControlName)
    {
        $imageHTML = CFile::InputFile(
                $strHTMLControlName,
                60,
                $imageId,
                '',
                0,
                'IMAGE',
                '',
                0,
                '',
                'name=' . $strHTMLControlName . '[del]', // подменяем name у чекбокса на удаление, возвращает 'Y'
                false,
                false
            )
            . '<br />';
        if ((int)$imageId > 0) {
            $imageHTML .= '<br />';
            $imageHTML .= CFile::Show2Images(
                    getImageById($imageId, 120, 90), // превью на странице
                    $imageId, // картинка при клике-увеличении на превью
                    800,
                    600,
                    'border=1',
                    'иллюстрация',
                    true
                )
                . '<input name="' . $strHTMLControlName . '[old_file]" value="' . $imageId . '" type="hidden">'
                . '<br />';
        } else {
            $imageHTML .= '<label><span style="color: #808080">(прикрепить иллюстрацию)</span></label><br />';
        }
        
        return $imageHTML;

//        Для одного значения работает, со множественным начинаются сбои и глюки, дорабатывать смысла нет
//        ob_start();
//        global $APPLICATION;
//        $APPLICATION->IncludeComponent(
//            'custom:richelieu.file.upload', // based on bitrix:main.file.input
//            "custom_upload",
//            array(
//                "INPUT_NAME" => $strHTMLControlName,
//                "INPUT_VALUE" => $imageId,
//                "MULTIPLE" => "N",
//                "MODULE_ID" => "iblock",
//                "MAX_FILE_SIZE" => "",
//                "ALLOW_UPLOAD" => "I",
//                "ALLOW_UPLOAD_EXT" => "",
//            ),
//            false
//        );
//        return ob_get_clean();
    }

// ! Работает странно при множественности, ошибка выскакивает, но заполненные
// значения пропадают из полей, может смутить заполнителя
//    public static function CheckFields($arProperty, $value)
//    {
//        $arResult = array();
//        if (empty($value['VALUE']['NAME'])) {
//            $arResult[] = 'Заполните поле названия!';
//        }
//        if (empty($value['VALUE']['DESCR']['TEXT'])) {
//            $arResult[] = 'Необходимо текстовое описание!';
//        }
//
//        return $arResult;
//    }
    
    /**
     * from: bitrix/modules/main/classes/general/usertypestr.php
     * Эта функция вызывается перед сохранением значений в БД.
     *
     * Вызывается из метода Update объекта $USER_FIELD_MANAGER.
     * Для множественных значений функция вызывается несколько раз.
     *
     * @param array $arUserField Массив описывающий поле.
     * @param mixed $value Значение.
     *
     * @return string значение для вставки в БД.
     * @static
     */
    /*    public static function OnBeforeSave($arUserField, $value)
        {
            if (strlen($value) > 0) {
                return "" . round(doubleval($value), $arUserField["SETTINGS"]["PRECISION"]);
            }
        }
    */
    
    /**
     * Если свойство множественное, содержиит массив значений, в метод передаётся весь массив для вывода
     *
     * @param $arProperty
     * @param $arValues
     * @param $strHTMLControlName
     *
     * @return string
     */
    public static function GetPropertyFieldHtmlMulty($arProperty, $arValues, $strHTMLControlName): string
    {
        $HTMLOutput = [];
        foreach ($arValues as $intPropertyValueID => $arOneValue) {
            $HTMLOutput[] = self::getHTMLForOneStep(
                $arOneValue['VALUE'],
                $strHTMLControlName["VALUE"] . "[$intPropertyValueID]"
            );
        }
        // Плюс пустое поля для ввода нового шага - прибавляем к имени [n#IND#] для обработки
        $HTMLOutput[] = self::getHTMLForOneStep(
            [],
            $strHTMLControlName["VALUE"] . "[n0]"
        );
        return '&nbsp;' . implode("<br /><hr /><br />", $HTMLOutput);
    }
    
    /**
     * @param $arProperty
     * @param $value
     * @param $strHTMLControlName
     *
     * @return string
     */
    public static function GetPublicViewHTML($arProperty, $value, $strHTMLControlName): string
    {
//        $LINK_IBLOCK_ID = (int)$arProperty["LINK_IBLOCK_ID"];
//        if ($LINK_IBLOCK_ID) {
//            $ELEMENT_ID = (int)$value["VALUE"];
//            if ($ELEMENT_ID) {
//                $rsElement = \CIBlockElement::GetList(array(), array(
//                    "IBLOCK_ID" => $arProperty["LINK_IBLOCK_ID"],
//                    "ID" => $value["VALUE"]
//                ), false, false, array("ID", "PREVIEW_PICTURE", "DETAIL_PICTURE"));
//                $arElement = $rsElement->Fetch();
//                if (is_array($arElement)) {
//                    return \CFile::Show2Images($arElement["PREVIEW_PICTURE"], $arElement["DETAIL_PICTURE"]);
//                }
//            }
//        }
        return "Составное поле";
    }
    
    /**
     * Сохранение в БД. Вызывается для каждого значения последовательно при множественности свойства.
     *
     * @param $arProperty
     * @param $value
     *
     * @return array
     */
    public static function ConvertToDB($arProperty, $value): array
    {
        /** @noinspection UnserializeExploitsInspection */
        if (unserialize($value['VALUE']) === false || unserialize(base64_decode($value['VALUE'])) === false) {
            if ($value['VALUE']['del'] === 'Y' || // или у нас всё пусто, зачем это сохранять
                (empty($value['VALUE']['NAME']) && empty($value['VALUE']['DESCR']['TEXT']) &&
                    (empty($value['VALUE']['IMG']['size']) && empty($value['VALUE']['IMG']['old_file'])))) {
                unset($value['VALUE'], $value['DESCRIPTION']);
            } else {
                /**
                 * $arr_file=Array(
                 * "name" => $_FILES[IMAGE_ID][name],
                 * "size" => $_FILES[IMAGE_ID][size],
                 * "tmp_name" => $_FILES[IMAGE_ID][tmp_name],
                 * "type" => "",
                 * "old_file" => "",
                 * "del" => "Y",
                 * "MODULE_ID" => "iblock");
                 * $fid = CFile::SaveFile($arr_file, "landings");
                 * if (strlen($fid)>0):
                 * ?><?echo CFile::ShowImage($fid, 200, 200, "border=0", "", true);
                 * endif;
                 * ?>
                 * <form method = "post" enctype = 'multipart/form-data'>
                 * <?echo CFile::InputFile("IMAGE_ID", 20, $str_IMAGE_ID);?>
                 * <input type="submit" value="Сохранить">
                 * </form>
                 */
                /**
                 * Алгоритм по файлу (встроен в \CFile::SaveFile частично, см. поля del, old_file?):
                 * - если стоит чекбокс удалить, не задан новый файл или он с ошибкой, удаляем
                 * - если стоит чекбокс удалить и задан новый файл без ошибок, заменяем
                 * - если новый файл задан и с ним всё хорошо, заменяем
                 * - если новый файл не задан, сохраняем старое значение
                 */
//                if (\CFile::CheckImageFile($value['VALUE']['IMG']) === null) {
//                    $fileId = \CFile::SaveFile($value['VALUE']['IMG'], 'receipt');
//                    if ((int)$fileId > 0) {
//                        $value['VALUE']["IMG"] = (int)$fileId;
//                    } else {
//                        unset($value['VALUE']["IMG"]);
//                    }
//                } elseif (!empty($value['VALUE']["IMG"]['old_file'])) {
//                    $value['VALUE']["IMG"] = (int)$value['VALUE']["IMG"]["old_file"];
//                }
                if ($value['VALUE']['IMG']['del'] === 'Y' && (!empty($value['VALUE']['IMG']['error']) || empty($value['VALUE']['IMG']['size']))) {
                    CFile::Delete($value['VALUE']["IMG"]['old_file']);
                    unset($value['VALUE']['IMG']);
                }
                if (!empty($value['VALUE']['IMG']['size']) && CFile::CheckImageFile($value['VALUE']['IMG']) === null) {
                    $value['VALUE']['IMG']['MODULE_ID'] = 'iblock';
                    $fileId = CFile::SaveFile($value['VALUE']['IMG'], 'receipt');
                    if ((int)$fileId > 0) {
                        $value['VALUE']["IMG"] = (int)$fileId;
                    } else {
                        unset($value['VALUE']["IMG"]);
                    }
                } elseif (!empty($value['VALUE']["IMG"]['old_file'])) {
                    $value['VALUE']["IMG"] = (int)$value['VALUE']["IMG"]["old_file"];
                }
                $value['VALUE'] = base64_encode(
                    serialize($value['VALUE'])
                ); // кодируем от греха, мало ли что в тексте будет
            }
        }
        return $value;
    }
    
    /**
     * Чтение из БД. Вызывается последовательо для каждого значения при множественности свойства.
     *
     * @param $arProperty
     * @param $value
     *
     * @return mixed
     */
    public static function ConvertFromDB($arProperty, $value)
    {
        /** @noinspection UnserializeExploitsInspection */
        $value['VALUE'] = unserialize(base64_decode($value['VALUE']));
        return $value;
    }
    
    /**
     * Обработка события удаления элемента - удалим и все связанные файлы, см. CFile
     *
     * @param $ELEMENT_ID
     */
    public function OnBeforeIBlockElementDelete($ELEMENT_ID): void
    {
        $arProperties = [];
        $rsElement = CIBlockElement::GetList(
            [],
            ["ID" => $ELEMENT_ID],
            false,
            false,
            ["ID", "IBLOCK_ID"]
        );
        $arElement = $rsElement->Fetch();
        if ($arElement) {
            $rsProperties = CIBlockProperty::GetList(
                [],
                [
                    "IBLOCK_ID" => $arElement["IBLOCK_ID"],
                    "USER_TYPE" => self::GetUserTypeDescription()['USER_TYPE'],
                ]
            );
            while ($arProperty = $rsProperties->Fetch()) {
                $arProperties[] = $arProperty;
            }
        }
        
        $arFiles = [];
        foreach ($arProperties as $arProperty) {
            $rsPropValues = CIBlockElement::GetProperty(
                $arElement["IBLOCK_ID"],
                $arElement["ID"],
                [],
                [
                    "EMPTY" => "N",
                    "ID" => $arProperty["ID"],
                ]
            );
            while ($arPropValue = $rsPropValues->Fetch()) {
                $fileId = (int)$arPropValue['VALUE']['IMG'];
                if ($fileId > 0) {
                    $arFiles[] = $fileId;
                }
            }
        }
        
        foreach ($arFiles as $file) {
            CFile::Delete($file);
        }
    }
}
