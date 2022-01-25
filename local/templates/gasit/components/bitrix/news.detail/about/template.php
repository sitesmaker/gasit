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
<section class="container about-medication wrap">
    <div class="flex-row">
        <div class="flex-col about-medication_item md-12 sm-12" data-aos="slide-right" data-aos-duration="1000">
            <div class="bg_img">
                <img src="<?= $arResult['BACKGROUND_IMAGE'] ?>"
                     alt="<?= $arResult['DETAIL_PICTURE']['ALT'] ?>">
            </div>
            <div class="medication_img">
                <img src="<?= $arResult['MEDICATION_IMAGE'] ?>"
                     alt="<?= $arResult['PREVIEW_PICTURE']['ALT'] ?>">
            </div>
        </div>
        <div class="flex-col about-medication_item md-12 sm-12" data-aos="slide-left" data-aos-duration="1000">
            <div class="header_block">
                <h1><?= $arResult['NAME'] ?></h1>
            </div>
            <div class="description">
                <?= $arResult['PREVIEW_TEXT'] ?>
            </div>
            <div class="btn-block">
                <?php if (!empty($arResult['DISPLAY_PROPERTIES']['WHERE_BUY_TITLE']['DISPLAY_VALUE']) &&
                    !empty($arResult['DISPLAY_PROPERTIES']['WHERE_BUY_ANCHOR']['VALUE'])): ?>
                    <a href="<?= $arResult['DISPLAY_PROPERTIES']['WHERE_BUY_ANCHOR']['VALUE'] ?>"
                       class="btn btn-block__item">
                        <span><?= $arResult['DISPLAY_PROPERTIES']['WHERE_BUY_TITLE']['DISPLAY_VALUE'] ?></span>
                    </a>
                <?php endif; ?>
                <?php if (!empty($arResult['INSTRUCTION_TITLE']) &&
                    !empty($arResult['INSTRUCTION_FILE'])): ?>
                    <div class="download-link btn-block__item">
                        <svg>
                            <use xlink:href="#icon-download"></use>
                        </svg>
                        <a href="<?= $arResult['INSTRUCTION_FILE'] ?>"
                           target="_blank" download>
                            <span><?= $arResult['INSTRUCTION_TITLE'] ?></span>
                        </a>
                    </div>
                <?php endif; ?>
            </div>
            <?php if (!empty($arResult['DISPLAY_PROPERTIES']['INGREDIENTS_TITLE']['DISPLAY_VALUE']) &&
                !empty($arResult['DISPLAY_PROPERTIES']['INGREDIENTS_LIST']['DISPLAY_VALUE'])): ?>
                <div class="ingredients">
                <span>
                    <?= $arResult['DISPLAY_PROPERTIES']['INGREDIENTS_TITLE']['DISPLAY_VALUE'] ?>
                </span>
                    <div class="ingredients_description">
                    <span>
                        <?= $arResult['DISPLAY_PROPERTIES']['INGREDIENTS_LIST']['DISPLAY_VALUE'] ?>
                    </span>
                        <svg>
                            <use xlink:href="#icon-ingredient"></use>
                        </svg>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>
</section>
<section class="container advantage wrap">
    <div class="advantage_block">
        <?php if (!empty($arResult['DISPLAY_PROPERTIES']['ADVANTAGES_LIST']['DISPLAY_VALUE'])): ?>
            <div class="advantage_item" data-aos="slide-up" data-aos-duration="1000">
                <?php foreach ($arResult['DISPLAY_PROPERTIES']['ADVANTAGES_LIST']['DISPLAY_VALUE'] as $key => $text): ?>
                    <div class="advantage_item__elem flex-col md-8 sm-8">
                        <svg>
                            <use xlink:href="<?= '#icon-info-' . ($key + 1) ?>"></use>
                        </svg>
                        <span>
                            <?= $text ?>
                        </span>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>
        <div class="advantage_item" data-aos="fade-in" data-aos-duration="1000" data-aos-delay="400">
            <div class="text">Пр</div>
            <div class="grad_line"><span></span></div>
            <div class="text">должительный <span>эффект! <a href="#footnote">*</a></span></div>
        </div>
    </div>
</section>