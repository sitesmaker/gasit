<?php
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 01.06.2019
 * Time: 09:12
 */

/*************************************
 * Системные flush сообщения
 *************************************/

namespace ALSE;

class SysMsgs
{
	public $popup = false;
	public $classMsg = "alert";
	public $classMsgInfo = "alert-info";
	public $classMsgTrue = "alert-success";
	public $classMsgFalse = "alert-danger";

	private static $var_sess = "alse_sys_msg";

	public function show($msg = NULL)
	{
		if($msg != NULL) self::addMsg($msg, 'true');

		$arMsgs = $_SESSION[self::$var_sess];

		if(!empty($arMsgs) && is_array($arMsgs))
		{
			foreach($arMsgs as $type => $msgs)
			{
				$msg = implode("<br>", $msgs);
				if(!$this->popup)
				{
					?>
					<div class="<?=$this->classMsg?> <?=$type=="true" ? $this->classMsgTrue:($type=="false" ? $this->classMsgFalse:$this->classMsgInfo)?>"><?=$msg?></div>
					<?
				}
				else
				{
					?>
					<script>
						$.disMsg("<?=str_replace(['"', "\n", "\r"], ['\"', "", ""], $msg)?>",{type:"<?=$type?>"});
					</script>
					<?
				}
				unset($arMsgs[$type]);
			}
		}

		$_SESSION[self::$var_sess] = $arMsgs;
	}

	public function adminShow($msg = NULL)
	{
		if($msg != NULL) self::addMsg($msg, 'true');

		$arMsgs = $_SESSION[self::$var_sess];

		if(!empty($arMsgs) && is_array($arMsgs))
		{
			foreach($arMsgs as $type => $msgs)
			{
				$msg = implode("<br>", $msgs);
				switch($type)
				{
					case "true":
						$admin_type = "OK";
						break;
					case "false":
						$admin_type = "ERROR";
						break;
					case "info":
						$admin_type = "PROGRESS";
						break;
					default:
						$admin_type = "OK";
						break;
				}

				\CAdminMessage::ShowMessage(["MESSAGE" => $msg, "TYPE" => $admin_type, "HTML" => true]);
				unset($arMsgs[$type]);
			}
		}

		$_SESSION[self::$var_sess] = $arMsgs;
	}

	public static function addMsg($msg, $type = 'true')
	{
		$arMsgs = is_array($_SESSION[self::$var_sess]) ? $_SESSION[self::$var_sess]:[];

		if($msg != NULL && in_array($type, ['info', 'true', 'false']))
		{
			$arMsgs[$type][] = $msg;
		}

		$_SESSION[self::$var_sess] = $arMsgs;
	}
}