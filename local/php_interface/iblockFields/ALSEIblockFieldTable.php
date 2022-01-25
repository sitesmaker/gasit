<?
/**
 * Created by PhpStorm.
 * User: Alexeenko Sergey Aleksandrovich
 * Phone: +79231421947
 * Email: sergei_alekseenk@list.ru
 * Date: 01.06.2019
 * Time: 09:12
 */
use Bitrix\Main;

$eventManager = Main\EventManager::getInstance();

$eventManager->addEventHandler("iblock", "OnIBlockPropertyBuildList", ["ALSEIblockFieldTable", "GetUserTypeDescription"]);

class ALSEIblockFieldTable
{
	function GetUserTypeDescription()
	{
		return [
			"PROPERTY_TYPE"        => "S",
			"USER_TYPE"            => "alse_table",
			"DESCRIPTION"          => "[alse] Таблица",
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
		//if ($strHTMLControlName["MODE"] != "FORM_FILL") return NULL;

		static $jqueryIsInit;

		if(!$jqueryIsInit)
		{
			CJSCore::Init(["jquery"]);
			$jqueryIsInit = true;
		}

		if(!is_array($value['VALUE']) || empty($value["VALUE"]))
		{
			$value["VALUE"] = [
				['','',''],
				['','',''],
				['','',''],
			];
		}

		$cols = 1;
		foreach($value['VALUE'] as $n => $v)
		{
			$cols = max(count((array)$v), $cols);
		}
		//pre($value["DESCRIPTION"]);
		ob_start();
		?>
		<div class="js__table_field" style="padding: 0 20px 20px 0; display: inline-block; position: relative;">
			<!-- Убрать колонку -->

			<!-- Добавить колонку -->
			<div style="color: #bbbbbb; cursor: pointer; position: absolute; top: 50%; right: 0; margin-top: -10px;" data-add-col>
				<svg aria-hidden="true" data-prefix="fas" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" style="width: 15px; height: 15px;"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm144 276c0 6.6-5.4 12-12 12h-92v92c0 6.6-5.4 12-12 12h-56c-6.6 0-12-5.4-12-12v-92h-92c-6.6 0-12-5.4-12-12v-56c0-6.6 5.4-12 12-12h92v-92c0-6.6 5.4-12 12-12h56c6.6 0 12 5.4 12 12v92h92c6.6 0 12 5.4 12 12v56z"></path></svg>
			</div>
			<!-- Убрать строку -->

			<!-- Добавить строку -->
			<div style="color: #bbbbbb; cursor: pointer; position: absolute; bottom: 0; left: 50%;margin-left: -10px;" data-add-row>
				<svg aria-hidden="true" data-prefix="fas" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" style="width: 15px; height: 15px;"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm144 276c0 6.6-5.4 12-12 12h-92v92c0 6.6-5.4 12-12 12h-56c-6.6 0-12-5.4-12-12v-92h-92c-6.6 0-12-5.4-12-12v-56c0-6.6 5.4-12 12-12h92v-92c0-6.6 5.4-12 12-12h56c6.6 0 12 5.4 12 12v92h92c6.6 0 12 5.4 12 12v56z"></path></svg>
			</div>
			<table data-table data-count-rows="<?=count($value['VALUE']) - 1?>">
				<tr>
					<td></td>
					<?
					for($i = 0; $i < $cols; ++$i)
					{
						?>
						<td style="text-align: center;">
							<div style="color: #bbbbbb; cursor: pointer;" data-remove-col>
								<svg aria-hidden="true" data-prefix="fas" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" style="width: 15px; height: 15px;"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zM124 296c-6.6 0-12-5.4-12-12v-56c0-6.6 5.4-12 12-12h264c6.6 0 12 5.4 12 12v56c0 6.6-5.4 12-12 12H124z" class=""></path></svg>
							</div>
						</td>
						<?
					}
					?>
				</tr>
				<?
				foreach($value['VALUE'] as $n => $v)
				{
					?>
					<tr>
						<td>
							<div style="color: #bbbbbb; cursor: pointer;" data-remove-row>
								<svg aria-hidden="true" data-prefix="fas" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" style="width: 15px; height: 15px;"><path fill="currentColor" d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zM124 296c-6.6 0-12-5.4-12-12v-56c0-6.6 5.4-12 12-12h264c6.6 0 12 5.4 12 12v56c0 6.6-5.4 12-12 12H124z" class=""></path></svg>
							</div>
						</td>
						<?
						for($i = 0; $i < $cols; ++$i)
						{
							?>
							<td width="150"><input name="<?=$strHTMLControlName['VALUE']?>[<?=$n?>][]" value="<?=htmlspecialcharsbx($v[$i])?>" type="text" style="width: calc(100% - 12px);"></td>
							<?
						}
						?>
					</tr>
					<?
				}
				?>
			</table>

			<script>
				$(document).undelegate('.js__table_field [data-add-row]', 'click');
				$(document).delegate('.js__table_field [data-add-row]', 'click', function(e){
					e.stopPropagation();
					var $table = $(this).parent().find('[data-table]');
					var n = parseInt($table.data('count-rows')) + 1;
					$table.data('count-rows', n);
					var $newRow = $table.find('tr:last').clone();

					$newRow.find('input').each(function(){
						var $this = $(this);
						$this.val('');
						var match = $this.attr('name').match(/PROP\[(\d+)\]\[([a-z:\d]+)\]\[VALUE\]\[(\d+)\]\[\]/i);
						$this.attr('name', 'PROP[' + match[1] + '][' + match[2] + '][VALUE][' + n + '][]');
					});
					$newRow.appendTo($table);
				});
				$(document).undelegate('.js__table_field [data-remove-row]', 'click');
				$(document).delegate('.js__table_field [data-remove-row]', 'click', function(e){
					e.stopPropagation();
					var $table = $(this).closest('[data-table]');
					var $tr = $(this).closest('tr');
					if($table.find('tr').length > 2)
					{
						$tr.remove();
					}
				});
				$(document).undelegate('.js__table_field [data-add-col]', 'click');
				$(document).delegate('.js__table_field [data-add-col]', 'click', function(e){
					e.stopPropagation();
					var $table = $(this).parent().find('[data-table]');

					$table.find('tr').each(function(){
						var $tr = $(this);
						var $newTd = $tr.find('td:last').clone();
						$newTd.find('input').each(function(){
							var $this = $(this);
							$this.val('');
						});
						$newTd.appendTo($tr);
					});
				});
				$(document).undelegate('.js__table_field [data-remove-col]', 'click');
				$(document).delegate('.js__table_field [data-remove-col]', 'click', function(e){
					e.stopPropagation();
					var $table = $(this).closest('[data-table]');
					var $td = $(this).closest('td');
					var index = $td[0].cellIndex;

					if($table.find('tr:first td').length > 2)
					{
						$table.find('tr').each(function(){
							var $tr = $(this);
							$tr.find('td:eq('+index+')').remove();
						});
					}
				});
			</script>
		</div>
		<?
		if($arProperty['MULTIPLE'] == 'Y')
		{
			?>
			<div style="margin: 15px 0; border-bottom: 1px solid #cccccc;"></div>
			<?
		}
		?>
		<?
		$html_filed = ob_get_contents();
		ob_end_clean();

		return $html_filed;
	}

	function ConvertToDB($arProperty, $value)
	{
		if(!is_array($value['VALUE'])) $value['VALUE'] = [];

		$isEmpty = true;
		foreach($value['VALUE'] as $n => $v)
		{
			if(!$isEmpty) break;
			foreach((array)$v as $str)
			{
				if(!$isEmpty) break;
				$isEmpty = strlen($str) > 0 ? false:true;
			}
		}

		if($isEmpty) return false;

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
		return implode(" | ", $value['VALUE'])."<hr>";
	}
}