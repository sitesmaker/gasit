<?php

if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) {
    die();
}
/**
 * @global CMain $APPLICATION
 * @global array $GASIT_COMMON_DATA
 */
?>
<?php /** Завершение основного контента сайта //div class="wrapper__content" */ ?>
        <?php $APPLICATION->IncludeFile(
            SITE_TEMPLATE_PATH . '/.include/up.php',
            [],
            ['MODE' => 'php']
        );
        ?>
        <?php $APPLICATION->IncludeFile(
            SITE_TEMPLATE_PATH . '/.include/warning.php',
            [
                'TEXT' => $GASIT_COMMON_DATA['WARNING_TEXT'] ?? '',
            ],
            ['MODE' => 'html']
        );
        ?>
        <?php $APPLICATION->IncludeFile(
            SITE_TEMPLATE_PATH . '/.include/cookies.php',
            [
                'TEXT' => $GASIT_COMMON_DATA['COOKIES_TEXT'] ?? '',
            ],
            ['MODE' => 'php']
        );
        ?>
    </div>
<footer class="footer">
    <div class="footer__wrap container">
        <div class="footer__top_block">
            <div class="logo">
                <img src="<?= $GASIT_COMMON_DATA['LOGO'] ?>"
                     alt="<?= SITE_SERVER_NAME ?>">
                <?php if (!empty($GASIT_COMMON_DATA['LOGO_TEXT'])): ?>
                    <div class="logo_text">
                        <?= $GASIT_COMMON_DATA['LOGO_TEXT'] ?>
                    </div>
                <?php endif; ?>
            </div>
            <div class="info_block">
                <a href="<?= 'tel:' . $GASIT_COMMON_DATA['PHONE']['CLEAN_VALUE'] ?>" class="phone">
                    <?= $GASIT_COMMON_DATA['PHONE']['VALUE'] ?>
                </a>
                <div class="download-link btn-block__item">
                    <svg>
                        <use xlink:href="#icon-download"></use>
                    </svg>
                    <a href="<?= $GASIT_COMMON_DATA['INSTRUCTION_FILE'] ?>" target="_blank" download="">
                        <span><?= $GASIT_COMMON_DATA['INSTRUCTION_TITLE'] ?></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="contraindications">
            <?= $GASIT_COMMON_DATA['CONTRAINDICATIONS_TEXT'] ?>
        </div>
        <div class="footer__bottom_block">
            <div id="footnote" class="footer__footnote">
                * Предельное значение действия препарата – до 2-х часов
            </div>

            <div class="footer__copy">
                &copy; <?= date('Y') ?> АО «ПФК Обновление». Все материалы, названия и/или внешний вид продукции являются товарными знаками. Все права защищены RENEWAL®
            </div>
            <div class="footer_block__link">
                <?php $APPLICATION->IncludeComponent(
                    "bitrix:menu",
                    "footer",
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
                        "ROOT_MENU_TYPE" => "policy",
                        "USE_EXT" => "N",
                        "COMPONENT_TEMPLATE" => "policy",
                    ],
                    false
                ); ?>
                <div class="footer__dnext">Разработка сайта —
                    <a href="https://dnext.ru/"
                       class="link"
                       target="_blank"
                       rel="noopener">
                        <span>Next</span>
                    </a>
                </div>
            </div>

        </div>
    </div>
</footer>
</div>

</body>
</html>
