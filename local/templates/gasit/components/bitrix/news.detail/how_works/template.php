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
$this->setFrameMode(true);
?>
<section class="container how_works wrap" id="action">
    <div class="header_block"  data-aos="fade-in" data-aos-duration="1000">
        <h2><?= $arResult['NAME'] ?></h2>
        <?php if (!empty($arResult['DETAIL_TEXT'])): ?>
            <div class="text">
                <?= $arResult['DETAIL_TEXT'] ?>
            </div>
        <?php endif; ?>
    </div>
    <div class="flex-row">
        <div class="flex-col md-12 sm-12 how_works__item" data-aos="fade-in" data-aos-duration="1000" data-aos-delay="200">
            <div class="img_block">
                <img src="<?= $arResult['BEFORE_IMAGE'] ?>"
                     alt="<?= $arResult['PREVIEW_PICTURE']['ALT'] ?>">
                <?php if (!empty($arResult['DISPLAY_PROPERTIES']['SYMPTOMS_LIST']['DISPLAY_VALUE'])): ?>
                    <div class="description">
                        <?php foreach ($arResult['DISPLAY_PROPERTIES']['SYMPTOMS_LIST']['DISPLAY_VALUE'] as $text): ?>
                            <div class="description_item">
                                <p><?= $text ?></p>
                            </div>
                        <?php endforeach; ?>
                    </div>
                <?php endif; ?>
            </div>
        </div>
        <div class="flex-col md-12 sm-12 how_works__item" data-aos="fade-in" data-aos-duration="1000" data-aos-delay="400">
            <img src="<?= $arResult['AFTER_IMAGE'] ?>"
                 alt="<?= $arResult['DETAIL_PICTURE']['ALT'] ?>">
        </div>
    </div>
</section>