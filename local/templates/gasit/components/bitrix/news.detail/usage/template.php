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
<section class="container usage wrap" id="usage">
    <div class="flex-row usage_block">
        <div class="flex-col md-12 usage_img" data-aos="fade-in" data-aos-duration="1000">
            <img src="<?= $arResult['IMAGE'] ?>" alt="">
        </div>
        <div class="flex-col md-12 usage_content" data-aos="fade-in" data-aos-duration="1000" data-aos-delay="200">
            <div class="header_block">
                <h2><?= $arResult['NAME'] ?></h2>
                <?php if (!empty($arResult['DISPLAY_PROPERTIES']['SUBTITLE']['DISPLAY_VALUE'])) : ?>
                    <div class="text_large">
                        <?= $arResult['DISPLAY_PROPERTIES']['SUBTITLE']['DISPLAY_VALUE'] ?>
                    </div>
                <?php endif; ?>
                <?php if (!empty($arResult['DETAIL_TEXT'])): ?>
                    <div class="text">
                        <?= $arResult['DETAIL_TEXT'] ?>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>