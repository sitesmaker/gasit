<?php
/**
 * @var array $arParams
 * @var array $arResult
 */

use dnext\Helper;


if (!empty($arResult['DISPLAY_PROPERTIES']['VIDEO']['VALUE']) &&
    isset($arResult['PROPERTIES']['SHOW']['VALUE_XML_ID']) &&
    $arResult['PROPERTIES']['SHOW']['VALUE_XML_ID'] === 'Y') {
    if (!empty($arResult['DISPLAY_PROPERTIES']['VIDEO']['VALUE'])) {
        $arResult['VIDEO'] = Helper::isValidYoutubeId($arResult['DISPLAY_PROPERTIES']['VIDEO']['VALUE']) ?
            $arResult['DISPLAY_PROPERTIES']['VIDEO']['VALUE'] :
            Helper::getYoutubeData($arResult['DISPLAY_PROPERTIES']['VIDEO']['VALUE'])['VIDEO'];
    }
    
    if (!empty($arResult['DETAIL_PICTURE']['SRC'])) {
        $arResult['BACKGROUND_IMAGE'] = Helper::getImageById($arResult['DETAIL_PICTURE']['ID'], 1200, 675);
    }
}
