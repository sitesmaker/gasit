<?
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 01.06.2019
 * Time: 09:12
 */
namespace ALSE;

class GoogleRecaptcha
{
	const SECRET_KEY = GOOGLE_RECAPTHCA_SECRET;
	const KEY = GOOGLE_RECAPTHCA_KEY;

	public $cache_response_time = 120; // Время кеширования ответа от google в секундах
	const CACHE_DIR = 'ga_recaptcha_response';

	public $response;

	public function __construct()
	{
		$this->response = $_REQUEST['g-recaptcha-response'];
	}

	public function verifyResponse()
	{
		$res = false;

		if(!empty($this->response))
		{
			$obCache = new \CPHPCache();

			if($obCache->InitCache($this->cache_response_time, $this->cacheGetKey(), self::CACHE_DIR))
			{
				$res = $obCache->GetVars();
			}
			elseif($obCache->StartDataCache())
			{
				$resRecaptcha = array();
				if($curl = curl_init())
				{
					curl_setopt($curl, CURLOPT_URL, 'https://www.google.com/recaptcha/api/siteverify');
					curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
					curl_setopt($curl, CURLOPT_POST, true);
					curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
					curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
					curl_setopt($curl, CURLOPT_POSTFIELDS, http_build_query(array('secret' => self::SECRET_KEY, 'response' => $this->response)));
					$resRecaptcha = (array)json_decode(curl_exec($curl));
					curl_close($curl);
				}

				$res = isset($resRecaptcha['success']) && $resRecaptcha['success'] == true ? true:false;

				if(isset($res)) $obCache->EndDataCache($res);
			}
		}

		return $res;
	}

	private function cacheGetKey()
	{
		return $this->response.$_SERVER['HTTP_USER_AGENT']."follow the white rabbit Neo";
	}

	public function clearResponse()
	{
		$obCache = new \CPHPCache();
		$obCache->Clean($this->cacheGetKey(), self::CACHE_DIR);
	}

	public static function addApiJs()
	{
		\Bitrix\Main\Page\Asset::getInstance()->addJs('https://www.google.com/recaptcha/api.js');
	}

	public static function showInput($arSettings = [])
	{
		if(isset($arSettings['api_js']) && $arSettings['api_js']) self::addApiJs();
		?>
		<div class="g-recaptcha" <?=isset($arSettings['size']) ? "data-size=\"{$arSettings['size']}\"":""?> data-sitekey="<?=self::KEY?>"></div>
		<?
	}
}