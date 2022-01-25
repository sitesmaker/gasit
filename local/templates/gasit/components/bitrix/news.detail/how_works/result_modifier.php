<?php
/**
 * @var array $arParams
 * @var array $arResult
 */

use dnext\Helper;


if (!empty($arResult['PREVIEW_PICTURE']['SRC'])) {
    $arResult['BEFORE_IMAGE'] = Helper::getImageById($arResult['PREVIEW_PICTURE']['ID'], 510, 510);
}
if (!empty($arResult['DETAIL_PICTURE']['SRC'])) {
    $arResult['AFTER_IMAGE'] = Helper::getImageById($arResult['DETAIL_PICTURE']['ID'], 510, 510);
}

if (!empty($arResult['DISPLAY_PROPERTIES']['SYMPTOMS_LIST']['DISPLAY_VALUE'])) {
    $displayValue = is_array($arResult['DISPLAY_PROPERTIES']['SYMPTOMS_LIST']['DISPLAY_VALUE']) ?
        $arResult['DISPLAY_PROPERTIES']['SYMPTOMS_LIST']['DISPLAY_VALUE'] :
        [$arResult['DISPLAY_PROPERTIES']['SYMPTOMS_LIST']['DISPLAY_VALUE']];
    $arResult['DISPLAY_PROPERTIES']['SYMPTOMS_LIST']['DISPLAY_VALUE'] = array_slice($displayValue, 0, 3);
}
