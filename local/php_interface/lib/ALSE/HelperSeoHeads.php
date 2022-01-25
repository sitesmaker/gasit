<?php
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 01.06.2019
 * Time: 09:12
 */

namespace ALSE;

use Bitrix\Main\Page\Asset;

class HelperSeoHeads
{
	/**
	 * Вызывать до $APPLICATION->ShowHead()
	 */
	public static function showHead()
	{
		static::setCurDirCanonical();
		static::showMetaOpenGraph();
	}
	public static function setCurDirCanonical()
	{
		global $APPLICATION;
		if(strlen($APPLICATION->GetProperty('canonical')) <= 0)
		{
			$APPLICATION->SetPageProperty('canonical', static::getCanonicalUrl());
		}
	}
	public static function showMetaOpenGraph()
	{
		global $APPLICATION;

		$APPLICATION->AddBufferContent(['\ALSE\HelperSeoHeads', "getMetaOpenGraph"]);
	}
	public static function getMetaOpenGraph()
	{
		global $APPLICATION;
		$asset = Asset::getInstance();

		# title
		$title = $APPLICATION->GetProperty('og:title');
		if(strlen($title) <= 0) $title = $APPLICATION->GetProperty('title');
		if(strlen($title) <= 0) $title = $APPLICATION->GetTitle();
		$asset->addString('<meta property="og:title" content="'.$title.'"/>');

		# description
		$description = $APPLICATION->GetProperty('og:description');
		if(strlen($description) <= 0) $description = $APPLICATION->GetProperty('description');
		if(strlen($description) > 0)
		{
			$asset->addString('<meta property="og:description" content="'.$description.'"/>');
		}

		# image
		$image = $APPLICATION->GetProperty('og:image');
		if(strlen($image) > 0)
		{
			$asset->addString('<meta property="og:image" content="'.$image.'"/>');
		}

		# type
		$type = $APPLICATION->GetProperty('og:type');
		if(strlen($type) <= 0) $type = 'website';
		$asset->addString('<meta property="og:type" content="'.$type.'"/>');

		# url
		$url = $APPLICATION->GetProperty('og:url');
		if(strlen($url) <= 0) $url = static::getCanonicalUrl();
		$asset->addString('<meta property="og:url" content="'.$url.'"/>');
	}
	public static function getCanonicalUrl()
	{
		global $APPLICATION;
		return "http".(\CMain::IsHTTPS() ? 's':'')."://{$_SERVER['HTTP_HOST']}{$APPLICATION->GetCurDir()}";
	}
}