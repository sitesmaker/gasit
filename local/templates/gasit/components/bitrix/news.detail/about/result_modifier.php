<?php
/**
 * @var array $arParams
 * @var array $arResult
 */

use dnext\Helper;


if (!empty($arResult['DETAIL_PICTURE']['SRC'])) {
    $arResult['BACKGROUND_IMAGE'] = Helper::getImageById($arResult['DETAIL_PICTURE']['ID'], 597, 597);
}
if (!empty($arResult['PREVIEW_PICTURE']['SRC'])) {
    $arResult['MEDICATION_IMAGE'] = Helper::getImageById($arResult['PREVIEW_PICTURE']['ID'], 515, 440);
}

if (!empty($arResult['DISPLAY_PROPERTIES']['INGREDIENTS_LIST']['DISPLAY_VALUE'])) {
    $displayValue = is_array($arResult['DISPLAY_PROPERTIES']['INGREDIENTS_LIST']['DISPLAY_VALUE']) ?
        $arResult['DISPLAY_PROPERTIES']['INGREDIENTS_LIST']['DISPLAY_VALUE'] :
        [$arResult['DISPLAY_PROPERTIES']['INGREDIENTS_LIST']['DISPLAY_VALUE']];
    $arResult['DISPLAY_PROPERTIES']['INGREDIENTS_LIST']['DISPLAY_VALUE'] = implode(
        '+<span class="span-br"></span>',
        $displayValue
    );
}

if (!empty($arResult['DISPLAY_PROPERTIES']['ADVANTAGES_LIST']['DISPLAY_VALUE'])) {
    $displayValue = is_array($arResult['DISPLAY_PROPERTIES']['ADVANTAGES_LIST']['DISPLAY_VALUE']) ?
        $arResult['DISPLAY_PROPERTIES']['ADVANTAGES_LIST']['DISPLAY_VALUE'] :
        [$arResult['DISPLAY_PROPERTIES']['ADVANTAGES_LIST']['DISPLAY_VALUE']];
    $arResult['DISPLAY_PROPERTIES']['ADVANTAGES_LIST']['DISPLAY_VALUE'] = array_slice($displayValue, 0, 3);
}

global $GASIT_COMMON_DATA;
$arResult['INSTRUCTION_TITLE'] = $GASIT_COMMON_DATA['INSTRUCTION_TITLE'] ?? '';
$arResult['INSTRUCTION_FILE'] = $GASIT_COMMON_DATA['INSTRUCTION_FILE'] ?? '';
