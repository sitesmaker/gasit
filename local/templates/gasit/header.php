<?php

if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) {
    die();
}

/**
 * @global CMain $APPLICATION
 * @global CDatabase $DB
 * @global CUser $USER
 * @global array $GASIT_COMMON_DATA
 */
use Bitrix\Main\Page\Asset;
use Bitrix\Main\Page\AssetLocation;


$asset = Asset::getInstance();
$asset->addString(
    '<link rel="icon" type="image/png" href="/favicon.png">',
    AssetLocation::BEFORE_CSS
);
$asset->addCss(SITE_TEMPLATE_PATH . '/assets/vendor.css');
$asset->addCss(SITE_TEMPLATE_PATH . '/assets/app.min.css');

$asset->addJs(SITE_TEMPLATE_PATH . '/assets/app.min.js', true);
?>
<!DOCTYPE HTML>
<html xml:lang="<?= LANGUAGE_ID ?>" lang="<?= LANGUAGE_ID ?>">
<head>
    <meta charset="<?= LANG_CHARSET ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <?php
    $APPLICATION->ShowMeta('robots');
    $APPLICATION->ShowMeta('author');
    $APPLICATION->ShowMeta('keywords');
    $APPLICATION->ShowMeta('description');
    $APPLICATION->ShowLink('canonical');
    ?>
    <title><?php $APPLICATION->ShowTitle(); ?></title>
    <?php
    $APPLICATION->ShowHeadStrings();
    $APPLICATION->ShowHeadScripts();
    $APPLICATION->ShowCSS(true);
    ?>
    <meta property="og:title" content="<?php $APPLICATION->ShowTitle(); ?>"/>
    <meta property="og:description" content="<?php $APPLICATION->ShowProperty('description', ''); ?>"/>
    <meta property="og:image" content="favicon.png">
    <?= $GASIT_COMMON_DATA['SEO_HEAD'] ?? '' ?>
</head>
<body id="home">
<?= $GASIT_COMMON_DATA['SEO_BODY'] ?? '' ?>
<?php if ($USER->IsAdmin()): ?>
    <div class="bx-panel-box" data-bx-panel><?php $APPLICATION->ShowPanel(); ?></div>
<?php endif; ?>
<header class="header" data-header>
    <div class="header__wrap">
        <div class="container header__container">
            <div class="header__mtoggle">
                <a href="<?= SITE_DIR ?>" class="mtoggle" data-mtoggle>
                    <span class="mtoggle__icon"></span>
                </a>
            </div>
            <div class="header__brand md-12 sm-10">
                <a href="<?= SITE_DIR ?>" class="brand">
                    <img src="<?= $GASIT_COMMON_DATA['LOGO'] ?>"
                         alt="<?= SITE_SERVER_NAME ?>"
                         class="brand__img">
                </a>
            </div>
            <div class="spacer"></div>
            <div class="header__nav md-12 sm-14">
                <nav class="mnav" data-nav>
                    <div class="mnav__wrap" data-custom-scroll>
                        <div class="mnav__brand">
                            <a href="<?= SITE_DIR ?>" class="brand">
                                <img src="<?= $GASIT_COMMON_DATA['LOGO'] ?>"
                                     alt="<?= SITE_SERVER_NAME ?>"
                                     class="brand__img">
                            </a>
                        </div>
                        <?php $APPLICATION->IncludeComponent(
                            "bitrix:menu",
                            "top",
                            [
                                "ALLOW_MULTI_SELECT" => "N",
                                "DELAY" => "N",
                                "MAX_LEVEL" => "1",
                                "MENU_CACHE_GET_VARS" => [
                                    0 => "",
                                    1 => "",
                                ],
                                "MENU_CACHE_TIME" => "3600",
                                "MENU_CACHE_TYPE" => "A",
                                "MENU_CACHE_USE_GROUPS" => "N",
                                "ROOT_MENU_TYPE" => "top",
                                "USE_EXT" => "N",
                                "COMPONENT_TEMPLATE" => "top",
                            ],
                            false
                        ); ?>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<div class="wrapper">
    <div class="wrapper__content">
        <?php /** Далее основной контент сайта */ ?>
