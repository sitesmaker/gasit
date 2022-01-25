<?php
/**
 * @var array $arParams
 * @var array $arResult
 */

use dnext\Helper;


if (!empty($arResult['DETAIL_PICTURE']['SRC'])) {
    $arResult['IMAGE'] = Helper::getImageById($arResult['DETAIL_PICTURE']['ID'], 420, 620);
}
