<?
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 16.06.2019
 * Time: 09:12
 */
use Bitrix\Main;

$eventManager = Main\EventManager::getInstance();

$eventManager->addEventHandler("iblock", "OnIBlockPropertyBuildList", ["ALSEIblockFieldOptions", "GetUserTypeDescription"]);

class ALSEIblockFieldOptions
{
	function GetUserTypeDescription()
	{
		return [
			"PROPERTY_TYPE"        => "S",
			"USER_TYPE"            => "alse_options",
			"DESCRIPTION"          => "[alse] Варианты значений для формы",
			"GetPropertyFieldHtml" => [__CLASS__, "GetPropertyFieldHtml"],
			"ConvertToDB"          => [__CLASS__, "ConvertToDB"],
			"ConvertFromDB"        => [__CLASS__, "ConvertFromDB"],
			"GetAdminListViewHTML" => [__CLASS__, "GetAdminListViewHTML"],

			//"GetPublicViewHTML"    => [__CLASS__, "GetPublicViewHTML"],
			//"GetPublicEditHTML" =>array(__CLASS__,"GetPublicEditHTML"),
			//"CheckFields" =>array(__CLASS__,"CheckFields"),
			//"GetLength" =>array(__CLASS__,"GetLength"),
		];
	}

	function GetPropertyFieldHtml($arProperty, $value, $strHTMLControlName)
	{
		if ($strHTMLControlName["MODE"] != "FORM_FILL") return NULL;

		static $jqueryIsInit;

		if(!$jqueryIsInit)
		{
			CJSCore::Init(["jquery"]);
			$jqueryIsInit = true;
		}

		if(!is_array($value['VALUE']) || empty($value["VALUE"]))
		{
			$value["VALUE"] = [
				[
					'VALUE'   => '',
					'SORT'    => '',
					'DEFAULT' => 'N',
				],
			];
		}
		ob_start();
		?>
		<div class="js__table_options">
			<table style="width: 100%; max-width: 600px;" data-table data-count-rows="<?=count($value['VALUE']) - 1?>">
				<tr>
					<td><b>Значение</b></td>
					<td><b>Сорт.</b></td>
					<td><b>Умолч.</b></td>
				</tr>
				<?
				foreach($value['VALUE'] as $n => $item)
				{
					$fieldName = $strHTMLControlName['VALUE'].'['.$n.']';
					?>
					<tr>
						<td>
							<input name="<?=$fieldName?>[VALUE]" value="<?=htmlspecialcharsbx($item['VALUE'])?>" type="text" style="width: calc(100% - 12px);">
						</td>
						<td width="90">
							<input name="<?=$fieldName?>[SORT]" value="<?=htmlspecialcharsbx($item['SORT'])?>" type="text" style="width: calc(100% - 12px);">
						</td>
						<td width="50" style="text-align: center">
							<input type="hidden" name="<?=$fieldName?>[DEFAULT]" value="N">
							<input type="checkbox" name="<?=$fieldName?>[DEFAULT]" value="Y" <?=$item['DEFAULT'] == 'Y' ? 'checked':''?>>
						</td>
					</tr>
					<?
				}
				?>
			</table>

			<input type="button" data-add-row value="Добавить">
		</div>

		<script>
			$(document).undelegate('.js__table_options [data-add-row]', 'click');
			$(document).delegate('.js__table_options [data-add-row]', 'click', function(e){
				e.stopPropagation();
				var $table = $(this).parent().find('[data-table]');
				var n = parseInt($table.data('count-rows')) + 1;
				$table.data('count-rows', n);
				var $newRow = $table.find('tr:last').clone();

				$newRow.find('input').each(function(){
					var $this = $(this);
					$this.val('');
					var match = $this.attr('name').match(/PROP\[(\d+)\]\[([a-z:\d]+)\]\[VALUE\]\[(\d+)\]\[([a-z:\d]+)\]/i);
					$this.attr('name', 'PROP[' + match[1] + '][' + match[2] + '][VALUE][' + n + '][' + match[4] + ']');
				});
				$newRow.appendTo($table);
			});
		</script>
		<?
		if($arProperty['MULTIPLE'] == 'Y')
		{
			?>
			<div style="border-bottom: 1px solid #e0e8ea; margin: 10px 0; max-width: 600px;"></div>
			<?
		}
		return ob_get_clean();
	}

	function ConvertToDB($arProperty, $value)
	{
		if(!is_array($value['VALUE'])) $value['VALUE'] = [];

		$value['VALUE'] = array_filter($value['VALUE'], function ($item) {
			return strlen($item['VALUE']) > 0;
		});

		usort($value['VALUE'], function ($a, $b) {
			if(!strlen($b['SORT'])) return -1;
			if(intval($a['SORT']) == intval($b['SORT']))
			{
				return 0;
			}
			return (intval($a['SORT']) < intval($b['SORT'])) ? -1:1;
		});

		$sort = 10;
		$value['VALUE'] = array_map(function ($item) use (&$sort) {
			$item['SORT'] = $sort;
			$sort = $sort + 10;
			return $item;
		}, $value['VALUE']);

		$value['VALUE'] = serialize(array_values($value['VALUE']));
		return $value;
	}

	function ConvertFromDB($arProperty, $value)
	{
		$value['VALUE'] = unserialize($value['VALUE']);
		return $value;
	}

	function GetAdminListViewHTML($arProperty, $value, $strHTMLControlName)
	{
		return $value['VALUE']['NAME'];
	}
}