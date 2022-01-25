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
<?php if (!empty($arResult['VIDEO']) &&
    isset($arResult['PROPERTIES']['SHOW']['VALUE_XML_ID']) &&
    $arResult['PROPERTIES']['SHOW']['VALUE_XML_ID'] === 'Y'): ?>
    <section class="container video_block wrap">
        <div class="media-content" data-video-content data-aos="fade-in" data-aos-duration="1000">
            <a href="#" class="nx-video__link" data-video-load="<?= $arResult['VIDEO'] ?>?playsinline=1"
               style="background-image: url('<?= $arResult['BACKGROUND_IMAGE'] ?>')">
                <svg class="nx-video__icon">
                    <use xlink:href="#icon-play"></use>
                </svg>
            </a>
        </div>
    </section>
<?php endif; ?>