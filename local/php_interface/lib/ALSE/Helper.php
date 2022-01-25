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

use Bitrix\Main\Loader;
use Bitrix\Main\Security;

class Helper
{
	public static function getIblockId($arFilter = [])
	{
		$IBLOCK_ID = false;
		if(Loader::includeModule('iblock'))
		{
			$obCache = new \CPHPCache();
			if($obCache->InitCache(3600*24*365, md5(print_r($arFilter, 1)), SITE_ID."/alse.helper/getiblockid"))
			{
				$IBLOCK_ID = $obCache->GetVars();
			}
			elseif($obCache->StartDataCache())
			{
				$arIblock = \CIBlock::GetList(false, $arFilter)->Fetch();
				$IBLOCK_ID = $arIblock['ID'];
				$obCache->EndDataCache($IBLOCK_ID);
			}
		}
		return $IBLOCK_ID;
	}
	/**
	 * Конвертер массива строк или строку в html с объединенем строк в <br>
	 *
	 * @param array|string $data
	 * @return string
	 * */
	public static function arrayToHtml($data = NULL)
	{
		return is_array($data) ? implode("<br>", $data):$data;
	}

	/**
	 * incline()
	 * Склонение существительных с числами
	 *
	 * @param  $words:	массив со словами наример array("одна единица","три единицы","десять единиц")
	 * @param  $n:		число по которому будут возвращаться слова
	 * @return string
	 */
	public static function incline($words=array("единица","единицы","единиц"),$n) //Склонение существительных с числами
	{
		if($n%100>4 && $n%100<20){
			return $words[2];
		}
		$a = array(2,0,1,1,1,2);
		return $words[$a[min($n%10,5)]];
	}

	# Конвертируем телефон в правельный формат
	public static function convertPhone($phone, $is_mobile = false)
	{
		$phone = preg_replace('|[^\d\+]+|', '', $phone);

		if(($code = substr($phone, 0, 1)) == "8")
		{
			$code = "+7";
			$start = 1;
		}
		elseif(($code = substr($phone, 0, 2)) == "+7")
		{
			$start = 2;
		}
		else return false;

		$tel = substr($phone, $start);

		$len_tel = strlen($tel);

		if((!$is_mobile && $len_tel >= 8 && $len_tel <= 10) || ($is_mobile && $len_tel == 10))
		{
			return $code.$tel;
		}
		else return false;
	}

	public static function array_column($array, $column)
	{
		if(is_array($array) && !empty($array))
		{
			if(function_exists("array_column"))
			{
				$arRes = array_column($array, $column);
			}
			else
			{
				foreach($array as $item)
				{
					if(!empty($item[$column])) $arRes[] = $item[$column];
				}
			}
		}
		return !empty($arRes) ? $arRes:false;
	}

	public static function FormatText($text)
	{
		if(is_array($text) && isset($text['TEXT']) && isset($text['TYPE']))
		{
			$text = FormatText($text['TEXT'], $text['TYPE']);
		}
		return $text;
	}

	public static function textToHtml($text)
	{
		$text = !is_array($text) ? ['TEXT' => $text, 'TYPE' => 'text']:$text;

		if(isset($text['TEXT']) && isset($text['TYPE']))
		{
			$text = str_replace(['&lt;', '&gt;', '&quot;'], ['<', '>', '"'], FormatText($text['TEXT'], $text['TYPE']));
		}
		return $text;
	}

	public static function htmlspecialcharsbxArray($arr)
	{
		if(is_array($arr))
		{
			array_walk_recursive($arr, function (&$item, $key)
			{
				$item = htmlspecialcharsbx($item);
			});
		}
		else
		{
			$arr = htmlspecialcharsbx($arr);
		}

		return $arr;
	}

	/**
	 * @param $data mixed
	 * @param $salt string
	 * @return string
	 */
	public static function singData($data, $salt = NULL)
	{
		$signer = new Security\Sign\Signer();
		return $signer->sign(base64_encode(serialize($data)), $salt);
	}

	/**
	 * @param $data mixed
	 * @param $salt string
	 * @return mixed
	 */
	public static function unsignData($data, $salt = NULL)
	{
		$signer = new Security\Sign\Signer();

		try
		{
			$unsignedData = $signer->unsign($data, $salt);
			$unsignedData = unserialize(base64_decode($unsignedData));
		}
		catch(Security\Sign\BadSignatureException $e)
		{
			die($e->getMessage());
		}

		return $unsignedData;
	}

	/**
	 * @deprecated
	 * @see singData()
	 *
	 * @param $data mixed
	 * @param $key string
	 * @return string
	 */
	public static function encodeQueryParams($data, $key = NULL)
	{
		return static::singData($data, $key);
	}
	/**
	 * @deprecated
	 * @see unsignData()
	 *
	 * @param $data string
	 * @param $key string
	 * @return mixed
	 */
	public static function decodeQueryParams($data, $key = NULL)
	{
		return static::unsignData($data, $key);
	}

	/**
	 * @param $array array
	 * @param $field string
	 * @param $value string
	 * @return array
	 */
	public static function arrayFilterByField($array, $field, $value)
	{
		if(!is_array($array)) return [];
		return array_filter($array, function ($item) use ($field, $value)
		{
			return $item[$field] == $value;
		});
	}

	/**
	 * Обертка над CIBlockPropertyEnum::getList с кешированием
	 *
	 * @param $order array
	 * @param $filter array
	 * @return array|NULL
	 */
	public static function getListIBlockPropertyEnum($order = ["SORT" => "ASC", "VALUE" => "ASC"], $filter = [])
	{
		$result = [];

		$cache = new \CPHPCache();
		if($cache->InitCache(3600 * 24, md5(print_r([$order, $filter], 1)), str_replace(['\\', '::'], '/', __METHOD__)))
		{
			$result = $cache->GetVars();
		}
		elseif($cache->StartDataCache())
		{
			Loader::includeModule('iblock');
			$rsEnums = \CIBlockPropertyEnum::GetList($order, $filter);

			while($item = $rsEnums->GetNext())
			{
				$result[] = $item;
			}

			$cache->EndDataCache($result);
		}

		return !empty($result) ? $result:NULL;
	}

	/**
	 * @param $id integer
	 * @param $iblockId integer
	 * @return array|null
	 */
	public static function getIblockElementById($id, $iblockId)
	{
		$result = NULL;

		$cache = new \CPHPCache();
		if($cache->InitCache(3600 * 24, md5(print_r([$iblockId, $id], 1)), str_replace(['\\', '::'], '/', __METHOD__)))
		{
			$result = $cache->GetVars();
		}
		elseif($cache->StartDataCache())
		{
			Loader::includeModule('iblock');
			$oElement = \CIBlockElement::GetList(false, ['ID' => $id, 'IBLOCK_ID' => $iblockId])->GetNextElement();
			if(!empty($oElement))
			{
				$result = array_merge($oElement->GetFields(), ['PROPS' => $oElement->GetProperties()]);
			}

			$cache->EndDataCache($result);
		}

		return $result;
	}
}