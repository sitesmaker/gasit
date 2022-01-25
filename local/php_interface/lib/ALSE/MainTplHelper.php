<?php

namespace ALSE;

class MainTplHelper
{
	public static function includeSubtemplate($place)
	{
		if(!defined('MAIN_SUBTEMPLATE')) return;

		$file = $_SERVER['DOCUMENT_ROOT'].SITE_TEMPLATE_PATH.'/subtemplates/'.MAIN_SUBTEMPLATE.'/'.$place.'.php';
		if(!is_file($file)) return;

		include $file;
	}
}