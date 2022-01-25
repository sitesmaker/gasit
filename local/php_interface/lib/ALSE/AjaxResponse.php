<?php
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 01.06.2019
 * Time: 15:11
 */

namespace ALSE;

use Bitrix\Main\Application;

class AjaxResponse
{
	/** @var self */
	private static $instance;

	/** @var array */
	private $data = [];

	/** @var array */
	private $startDataContentArguments = NULL;

	private function __construct()
	{
	}

	public static function getInstance()
	{
		if(!self::$instance)
		{
			self::$instance = new self();
		}
		return self::$instance;
	}

	/**
	 * @param $key string
	 * @param $data mixed
	 */
	public function addData($key, $data)
	{
		$this->data[$key] = $data;
	}

	/**
	 * @return array
	 */
	public function getData()
	{
		return $this->data;
	}

	/**
	 * @param $key string
	 * @param $checkAjax bool
	 */
	public function startDataContent($key, $checkAjax = true)
	{
		$this->startDataContentArguments = [$key, $checkAjax];

		if($checkAjax && !Application::getInstance()->getContext()->getRequest()->isAjaxRequest())
		{
			return;
		}

		ob_start();
	}

	public function endDataContent()
	{
		list($key, $checkAjax) = $this->startDataContentArguments;
		unset($this->startDataContentArguments);

		if($checkAjax && !Application::getInstance()->getContext()->getRequest()->isAjaxRequest())
		{
			return;
		}

		$this->addData($key, ob_get_clean());
	}

	/**
	 * @return string
	 */
	public function asJson()
	{
		return json_encode($this->data, JSON_UNESCAPED_UNICODE);
	}
}