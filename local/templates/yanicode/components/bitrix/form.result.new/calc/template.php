<?
if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();

if ($arResult["isFormErrors"] == "Y"):?><?=$arResult["FORM_ERRORS_TEXT"];?><?endif;?>
<?=$arResult["FORM_NOTE"]?>
<?if ($arResult["isFormNote"] != "Y")
{
?>
<div class="button-wrapper  button-wrapper_center">
                <div class="button button_gold button-open-calculate-project" data-popup="calculate-project-popup">
                    РАССЧИТАТЬ ПРОЕКТ
                </div>
            </div>
<template id="popup-calculate-project">
<?=str_replace('<fo rm', '<fo rm class="js-validated-form"', $arResult["FORM_HEADER"])?>
<?=$arResult["FORM_HEADER"]?>
<table>
<?
if ($arResult["isFormDescription"] == "Y" || $arResult["isFormTitle"] == "Y" || $arResult["isFormImage"] == "Y")
{
?>
	<tr>
		<td><?


	if ($arResult["isFormImage"] == "Y")
	{
	?>
	<a href="<?=$arResult["FORM_IMAGE"]["URL"]?>" target="_blank" alt="<?=GetMessage("FORM_ENLARGE")?>"><img src="<?=$arResult["FORM_IMAGE"]["URL"]?>" <?if($arResult["FORM_IMAGE"]["WIDTH"] > 300):?>width="300"<?elseif($arResult["FORM_IMAGE"]["HEIGHT"] > 200):?>height="200"<?else:?><?=$arResult["FORM_IMAGE"]["ATTR"]?><?endif;?> hspace="3" vscape="3" border="0" /></a>
	<?//=$arResult["FORM_IMAGE"]["HTML_CODE"]?>
	<?
	} //endif
	?>

			<p><?=$arResult["FORM_DESCRIPTION"]?></p>
		</td>
	</tr>
	<?
} // endif
	?>
</table>
<br />
<table class="form-table data-table">
	<thead>
	</thead>
	<tbody>
	<?
	foreach ($arResult["QUESTIONS"] as $FIELD_SID => $arQuestion)
	{
		if ($arQuestion['STRUCTURE'][0]['FIELD_TYPE'] == 'hidden')
		{
			echo $arQuestion["HTML_CODE"];
		}
		else
		{
	?>



		<?if ($arQuestion['STRUCTURE'][0]['ID'] == 1)
			{
				echo '<div class="popup-feedback__input-cover">
                		<label for="" class="popup-feedback__input-label">'.$arQuestion["CAPTION"].'</label>';
						echo str_replace('<input', '<input class="popup-feedback__input"', $arQuestion["HTML_CODE"]);
				echo '</div>';
			}
			if ($arQuestion['STRUCTURE'][0]['ID'] == 2)
			{
				echo '<div class="popup-feedback__double-column">
                		<div class="popup-feedback__input-cover">
                    		<label for="" class="popup-feedback__input-label">'.$arQuestion["CAPTION"].'</label>';
							echo str_replace('<input', '<input class="popup-feedback__input mask-phone-js js-validated-field"', $arQuestion["HTML_CODE"]);
				echo '</div>';
			}
			if ($arQuestion['STRUCTURE'][0]['ID'] == 3)
			{
				echo '<div class="popup-feedback__input-cover">
						<label for="" class="popup-feedback__input-label">'.$arQuestion["CAPTION"].'</label>';
						echo str_replace('<input', '<input class="popup-feedback__input js-validated-field"', $arQuestion["HTML_CODE"]);
				echo '</div></div>';
			}
			if ($arQuestion['STRUCTURE'][0]['ID'] == 4)
			{
				echo '<div class="popup-feedback__input-cover">
                		<label for="" class="popup-feedback__input-label">'.$arQuestion["CAPTION"].'</label>';
						echo str_replace('<input', '<input class="popup-feedback__input"', $arQuestion["HTML_CODE"]);
				echo '</div>';
			}
			if ($arQuestion['STRUCTURE'][0]['ID'] == 5)
			{
				echo '<div class="popup-feedback__input-cover">
						<label for="" class="popup-feedback__input-label">'.$arQuestion["CAPTION"].'</label>';
						echo str_replace('<textarea', '<textarea class="popup-feedback__textarea"', $arQuestion["HTML_CODE"]);
				echo '</div>';
			}
			if ($arQuestion['STRUCTURE'][0]['ID'] == 6)
			{
				echo '<div class="popup-feedback__consent">
                		<div class="popup-feedback__consent-form-wrapper">';
						$arQuestion["HTML_CODE"] =' <input class="popup-feedback__consent-input" id="consent1" type="checkbox" checked="checked" />';
						echo $arQuestion["HTML_CODE"];
						echo '<label class="popup-feedback__consent-form" for="consent1">'.$arQuestion["CAPTION"].'</label>';
						echo '</div>';
			}
			if ($arQuestion['STRUCTURE'][0]['ID'] == 7)
			{
						echo '<div class="popup-feedback__consent-form-wrapper">';
						$arQuestion["HTML_CODE"] =' <input class="popup-feedback__consent-input" id="consent2" type="checkbox" checked="checked" />';
						echo $arQuestion["HTML_CODE"];
						echo '<label class="popup-feedback__consent-form" for="consent2">'.$arQuestion["CAPTION"].'</label>';
					echo '</div></div>';
			}

			?>

	<?
		}
	} //endwhile
	?>
<?
if($arResult["isUseCaptcha"] == "Y")
{
?>
		<tr>
			<th colspan="2"><b><?=GetMessage("FORM_CAPTCHA_TABLE_TITLE")?></b></th>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td><input type="hidden" name="captcha_sid" value="<?=htmlspecialcharsbx($arResult["CAPTCHACode"]);?>" /><img src="/bitrix/tools/captcha.php?captcha_sid=<?=htmlspecialcharsbx($arResult["CAPTCHACode"]);?>" width="180" height="40" /></td>
		</tr>
		<tr>
			<td><?=GetMessage("FORM_CAPTCHA_FIELD_TITLE")?><?=$arResult["REQUIRED_SIGN"];?></td>
			<td><input type="text" name="captcha_word" size="30" maxlength="50" value="" class="inputtext" /></td>
		</tr>
<?
} // isUseCaptcha
?>
	</tbody>

<div class="popup-feedback__button-cover">
	<input <?=(intval($arResult["F_RIGHT"]) < 10 ? "disabled=\"disabled\"" : "");?> type="submit" class="button button_modal-gold " name="web_form_submit" value="<?=htmlspecialcharsbx(trim($arResult["arForm"]["BUTTON"]) == '' ? GetMessage("FORM_ADD") : $arResult["arForm"]["BUTTON"]);?>" />
</div>

</table>

<?=$arResult["FORM_FOOTER"]?>
</template>
<?
} //endif (isFormNote)