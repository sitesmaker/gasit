<?
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 01.06.2019
 * Time: 09:12
 */
# Пользовательское текстовое поле с визуальым редактором

use Bitrix\Main\EventManager;
EventManager::getInstance()->addEventHandler('main', 'OnUserTypeBuildList', ['ALSEUserFieldHtml', 'GetDescription']);

class ALSEUserFieldHtml extends \CUserTypeString
{
	function GetDescription()
	{
		return array(
			"USER_TYPE_ID" => "alsehtml",
			"CLASS_NAME" => 'ALSEUserFieldHtml',
			"DESCRIPTION" => "HTML",
			"BASE_TYPE" => "string",
		);
	}

	function GetEditFormHTML($arUserField, $arHtmlControl)
	{
		if($arUserField["ENTITY_VALUE_ID"]<1 && strlen($arUserField["SETTINGS"]["DEFAULT_VALUE"])>0)
			$arHtmlControl["VALUE"] = htmlspecialcharsbx($arUserField["SETTINGS"]["DEFAULT_VALUE"]);
		if($arUserField["SETTINGS"]["ROWS"] < 8)
			$arUserField["SETTINGS"]["ROWS"] = 8;

		if($arUserField['MULTIPLE'] == 'Y')
			$name = preg_replace("/[\[\]]/i", "_", $arHtmlControl["NAME"]);
		else
			$name = $arHtmlControl["NAME"];

		ob_start();

		\CFileMan::AddHTMLEditorFrame(
			$name,
			$arHtmlControl["VALUE"],
			$name."_TYPE",
			strlen($arHtmlControl["VALUE"])?"html":"text",
			array(
				'height' => $arUserField['SETTINGS']['ROWS']*10,
			)
		);

		if($arUserField['MULTIPLE'] == 'Y')
			echo '<input type="hidden" name="'.$arHtmlControl["NAME"].'" >';

		$html = ob_get_contents();
		ob_end_clean();

		return $html;
	}

	function OnBeforeSave($arUserField, $value)
	{
		if($arUserField['MULTIPLE'] == 'Y')
		{
			foreach($_POST as $key => $val)
			{
				if( preg_match("/".$arUserField['FIELD_NAME']."_([0-9]+)_$/i", $key, $m) )
				{
					$value = $val;
					unset($_POST[$key]);
					break;
				}
			}
		}
		return $value;
	}
}