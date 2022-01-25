<?php

require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/header.php");
/**
 * @global CMain $APPLICATION
 * @global array $GASIT_COMMON_DATA
 */

$APPLICATION->SetTitle('Правила пользования сайтом');
$APPLICATION->SetPageProperty(
    'description',
    'Правила пользования сайтом.'
);
?>
<div class="privacy_section container sbox text">
    <?php $APPLICATION->IncludeFile(
        SITE_TEMPLATE_PATH . '/.include/rules.php',
        [
            'TEXT' => $GASIT_COMMON_DATA['DETAIL_TEXT'],
        ],
        ['MODE' => 'html']
    );
    ?>
</div>
<?php require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/footer.php"); ?>
