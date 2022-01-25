<?php

require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/header.php");
/**
 * @global CMain $APPLICATION
 * @global array $GASIT_COMMON_DATA
 */

$APPLICATION->SetTitle('Политика конфиденциальности');
$APPLICATION->SetPageProperty(
    'description',
    'Политика конфиденциальности'
);
?>
<div class="container privacy_section sbox text">
    <?php $APPLICATION->IncludeFile(
        SITE_TEMPLATE_PATH . '/.include/privacy.php',
        [
            'TEXT' => $GASIT_COMMON_DATA['PREVIEW_TEXT'],
        ],
        ['MODE' => 'html']
    );
    ?>
</div>
<?php require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/footer.php"); ?>
