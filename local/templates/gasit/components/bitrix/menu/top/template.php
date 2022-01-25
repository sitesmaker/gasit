<?php

if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) {
    die();
}
/** @var array $arParams */
/** @var array $arResult */
/** @global CMain $APPLICATION */
/** @global CUser $USER */
/** @global CDatabase $DB */
/** @var CBitrixComponentTemplate $this */
/** @var string $templateName */
/** @var string $templateFile */
/** @var string $templateFolder */
/** @var string $componentPath */
/** @var CBitrixComponent $component */

$prefix = ($APPLICATION->GetCurPage(false) !== '/') ? '/' : '';
?>
<?php if (!empty($arResult)): ?>
    <div class="mnav__menu">
        <ul class="main-menu">
            <?php foreach ($arResult as $arItem): ?>
                <li class="main-menu__el" data-menu-el>
                    <a href="<?= $prefix . $arItem['LINK'] ?>" data-button-anchor
                       class="main-menu__link"
                       data-href="<?= $prefix . $arItem["LINK"] ?>">
                        <span><?= $arItem['TEXT'] ?></span>
                    </a>
                </li>
            <?php endforeach; ?>
        </ul>
    </div>
<?php endif ?>