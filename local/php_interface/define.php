<?
if(\Bitrix\Main\Loader::includeModule('intervolga.migrato'))
{
	define('EIFA_IBLOCK_PRODUCTS_SLIDER', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('eifa_product_slider'));
	define('EIFA_IBLOCK_EFFECTS_SLIDER', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('eifa_effects_slider'));
	define('EIFA_IBLOCK_USAGE', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('eifa_usage'));
	define('EIFA_IBLOCK_WHEREBUY', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('eifa_wherebuy'));

	define('KVATRAN_IBLOCK_PRODUCTS_SLIDER', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('kvatran_product_slider'));
	define('KVATRAN_IBLOCK_RELEASE_FORM', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('kvatran_release_form'));
	define('KVATRAN_IBLOCK_USAGE', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('kvatran_usage'));
	define('KVATRAN_IBLOCK_WHEREBUY', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('kvatran_wherebuy'));

	define('FLOGARDIN_IBLOCK_PRODUCTS_SLIDER', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('flogardin_product_slider'));
	define('FLOGARDIN_IBLOCK_SYMPTOMS', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('flogardin_symptoms'));
	define('FLOGARDIN_IBLOCK_EFFECT_ACTION', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('flogardin_effect_action'));
	define('FLOGARDIN_IBLOCK_USAGE', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('flogardin_usage'));
	define('FLOGARDIN_IBLOCK_WHEREBUY', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('flogardin_wherebuy'));

	define('SINBIOTIK_IBLOCK_PRODUCT_SLIDER', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('sinbiotik_product_slider'));
	define('SINBIOTIK_IBLOCK_WHENUSE', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('sinbiotik_whenuse'));
	define('SINBIOTIK_IBLOCK_WHEREBUY', (int)\Intervolga\Migrato\Data\Module\Iblock\Iblock::getPublicId('sinbiotik_wherebuy'));
}

/** Добавить блок ниже в основной общий init.php комплекта лэндингов! */
define('PLACEHOLDER', '/local/templates/komboflex/assets/images/placeholder.png');
