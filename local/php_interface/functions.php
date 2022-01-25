<?
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 01.06.2019
 * Time: 11:37
 */

/**
 * @param $id int|string
 * @return \Bitrix\Main\ORM\Data\DataManager|null
 */
function getHiblEntity($id)
{
	if(\Bitrix\Main\Loader::includeModule('highloadblock'))
	{
		if(intval($id)) $filter = ['ID' => intval($id)];
		else $filter = ['TABLE_NAME' => $id];

		$arTable = \Bitrix\Highloadblock\HighloadBlockTable::getList(['filter' => $filter, 'limit' => 1])->fetch();
		return \Bitrix\Highloadblock\HighloadBlockTable::compileEntity($arTable)->getDataClass();
	}
	return null;
}

/**
 * Локальное подключение файла
 *
 * Подключается файл php с именем файла $file_name в поддиректории .includes в текущей директории исполняемого файла
 *
 * @global $APPLICATION
 * @param string $file_name - Имя файлf php
 * @param array $arParams - массив с входными параметрами в файл
 * @param string $path_dir - директория, в которой лежит файл
 * @return null
 * */
function MHIncludeFile($file_name, $arParams = [], $path_dir = '')
{
	/** @global CMain $APPLICATION */
	global $APPLICATION, $USER, $DB, $MESS, $DOCUMENT_ROOT;

	if(empty($path_dir))
	{
		$path_dir = str_replace("\\", "/", pathinfo($_SERVER['REAL_FILE_PATH'] ? $_SERVER['REAL_FILE_PATH']:$_SERVER["SCRIPT_NAME"]));
		$path_dir = $path_dir['dirname'];
		$path_dir = ($path_dir ? $path_dir."/":"").".includes/";
	}

	$path_file = str_replace("//","/","{$path_dir}/").$file_name.".php";

	$res = null;
	if(is_file($_SERVER["DOCUMENT_ROOT"].$path_file))
	{
		if(is_array($arParams)) extract($arParams, EXTR_SKIP);

		$res = include($_SERVER["DOCUMENT_ROOT"].$path_file);
	}
	return $res;
}

function text_teg_decode($text)
{
	return str_replace(['&lt;', '&gt;', '&quot;'], ['<', '>', '"'], $text);
}
function add_teg_p($text)
{
	if($text && !stristr($text, "</p>")) $text = "<p>{$text}</p>";
	return $text;
}
function add_teg_div($text)
{
	if($text && !stristr($text, "</div>")) $text = "<div>{$text}</div>";
	return $text;
}

function pre()
{
	$debug = debug_backtrace(DEBUG_BACKTRACE_IGNORE_ARGS, 0);
	$fileline = str_replace($_SERVER['DOCUMENT_ROOT'], "", $debug[0]['file'])." : ".$debug[0]['line'];

	$name = NULL;
	$data = func_get_args();
	switch(func_num_args())
	{
		case 1:
			$data = reset($data);
			break;

		case 2:
			if(is_string($data[0]))
			{
				$name = $data[0];
				$data = $data[1];
			}
			elseif(is_string($data[1]))
			{
				$name = $data[1];
				$data = $data[0];
			}
			break;
	}

	$output = print_r($data, true);

	if(defined('PHP_SAPI') && PHP_SAPI == 'cli')
	{
		echo "\n===========================\n";
		echo "=== start pre ".($name ? "($name) ":"")."\n";
		echo "=== fileline: {$fileline}\n";
		echo $output;
		echo "\n===========================\n\n";
	}
	else
	{
		echo "<pre  style='background:#fff; color:#000; border:1px solid #CCC;padding:10px;border-left:4px solid red; font:normal 11px Arial;'>".($name ? "<b>".$name.":</b>\n":"")."<small style='color: gray;'>{$fileline}</small>\n".$output."</pre>";
	}
}

function set404() {
	CHTTP::SetStatus("404 Not Found");
	@define("ERROR_404","Y");
}

/** Добавить блок ниже в основной общий functions.php комплекта лэндингов! */
if (!function_exists('getImageById')) {
    /**
     * Получить изображение по его идентификатору
     *
     * @param $id
     * @param int $width
     * @param int $height
     * @param bool $crop
     * @param bool $withoutPlaceholder
     *
     * @return string
     */
    function getImageById($id, int $width = 630, int $height = 450, bool $crop = false, bool $withoutPlaceholder = false): ?string
    {
        $placeholder = null;
        if (!$withoutPlaceholder) {
            $placeholder = PLACEHOLDER;
            if (empty($id)) {
                return $placeholder;
            }
        }
        
        $resizeType = BX_RESIZE_IMAGE_PROPORTIONAL_ALT;
        if ($crop) {
            $resizeType = BX_RESIZE_IMAGE_EXACT;
        }
        
        $arFile = CFile::GetFileArray($id);
        $arrImage = CFile::ResizeImageGet(
            $arFile,
            [
                'width' => $width,
                'height' => $height,
            ],
            $resizeType,
            true,
            false,
            false,
            85
        );
        return file_exists($_SERVER['DOCUMENT_ROOT'] . $arrImage['src']) ? $arrImage['src'] : $placeholder;
    }
}

if (!function_exists('getFilePathById')) {
    /**
     * Получить файл по его идентификатору
     *
     * @param ?int $id
     *
     * @return array
     */
    function getFilePathById(?int $id): array
    {
        $uploadDir = '/upload/';
        $fileInfo = CFile::GetByID($id)->Fetch();
        
        if (isset($fileInfo['FILE_SIZE']) && (int)$fileInfo['FILE_SIZE'] > 0) {
            $path = $uploadDir . $fileInfo['SUBDIR'] . '/' . $fileInfo['FILE_NAME'];
            return [
                'ORIGINAL_NAME' => $fileInfo['ORIGINAL_NAME'],
                'PATH' => $path,
            ];
        }
        return [];
    }
}
