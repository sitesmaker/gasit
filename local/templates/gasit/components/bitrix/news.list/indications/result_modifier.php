<?php
/**
 * @var array $arParams
 * @var array $arResult
 */

use dnext\Helper;


if (!empty($arResult['ITEMS'])) {
    foreach ($arResult['ITEMS'] as &$indication) {
        $indication['IMAGE'] = Helper::getImageById($indication['PREVIEW_PICTURE']['ID'], 200, 200);
    }
}
unset($indication);
