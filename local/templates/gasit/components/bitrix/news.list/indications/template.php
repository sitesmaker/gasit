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
    <section class="container indications wrap">
        <div class="header_block" data-aos="fade-in" data-aos-duration="1000">
            <h2><?= $arResult['NAME'] ?></h2>
        </div>
        <div class="flex-row indications_block">
            <?php $delay = 0 ?>
            <?php foreach ($arResult['ITEMS'] as $indication): ?>
                <div class="flex-col md-8 sm-12 indications_block__item"
                     data-aos="fade-in" data-aos-duration="1000" data-aos-delay=<?= $delay += 200 ?>>
                    <img src="<?= $indication['IMAGE'] ?>"
                         alt="<?= $indication['PREVIEW_PICTURE']['ALT'] ?>">
                    <div>
                        <?= $indication['NAME'] ?>
                        <?php if (!empty($indication['PREVIEW_TEXT'])): ?>
                            <span><?= $indication['PREVIEW_TEXT'] ?></span>
                        <?php endif; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </section>
<?php endif; ?>