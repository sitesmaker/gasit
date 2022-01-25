<?php
/**
 * @var array $arParams
 * @var array $arResult
 */

use dnext\Helper;


if (!empty($arResult['ITEMS'])) {
    foreach ($arResult['ITEMS'] as &$pharmacy) {
        $pharmacy['LOGO'] = Helper::getImageById($pharmacy['PREVIEW_PICTURE']['ID'], 200, 200);
    }
}
unset($pharmacy);
