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
<?php if (!empty($arResult['ITEMS'])): ?>
    <section class="container where_buy wrap" id="where_buy">
        <div class="header_block" data-aos="fade-in" data-aos-duration="1000">
            <h2><?= $arResult['NAME'] ?></h2>
        </div>
        <div class="flex-row">
            <?php $delay = 0 ?>
            <?php foreach ($arResult['ITEMS'] as $pharmacy): ?>
                <?php if (!empty($pharmacy['DISPLAY_PROPERTIES']['URL']['VALUE'])): ?>
                    <a href="<?= $pharmacy['DISPLAY_PROPERTIES']['URL']['VALUE'] ?>" target="_blank" class="where_buy_item md-6 sm-8 xs-12"
                         data-aos="fade-in" data-aos-duration="1000" data-aos-delay=<?= $delay += 50 ?>>
                        <?php if (!empty($pharmacy['LOGO'])): ?>
                            <img src="<?= $pharmacy['LOGO'] ?>"
                                 alt="<?= $pharmacy['PREVIEW_PICTURE']['ALT'] ?>">
                        <?php endif; ?>
<!--                        <a href="--><?//= $pharmacy['DISPLAY_PROPERTIES']['URL']['VALUE'] ?><!--" target="_blank">-->
                            <span><?= $pharmacy['NAME'] ?></span>
<!--                        </a>-->
                    </a>
                <?php endif; ?>
            <?php endforeach; ?>
        </div>
    </section>
<?php endif; ?>