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

			<?
	foreach ($arResult["QUESTIONS"] as $FIELD_SID => $arQuestion)
	{
		if ($arQuestion['STRUCTURE'][0]['FIELD_TYPE'] == 'hidden')
		{
			echo $arQuestion["HTML_CODE"];
		}
	}
	?>
	            <div class="popup-feedback__input-cover">
                <label for="" class="popup-feedback__input-label"><? echo $arResult["QUESTIONS"]["SIMPLE_QUESTION_807"]["CAPTION"]  ?></label>
				<? $arResult["QUESTIONS"]["SIMPLE_QUESTION_807"]["HTML_CODE"] = "<input type='text' class='popup-feedback__input js-validated-field' data-validated_name='name' />";?>
				<?=$arResult["QUESTIONS"]["SIMPLE_QUESTION_807"]["HTML_CODE"]?>
            </div>

            <div class="popup-feedback__double-column">
                <div class="popup-feedback__input-cover">
                    <label for="" class="popup-feedback__input-label">Телефон</label>
                    <? $arResult["QUESTIONS"]["SIMPLE_QUESTION_801"]["HTML_CODE"] = '<input type="tel" class="popup-feedback__input mask-phone-js js-validated-field" data-validated_name="phone" />' ?>
					<?=$arResult["QUESTIONS"]["SIMPLE_QUESTION_801"]["HTML_CODE"]?>
                </div>
                <div class="popup-feedback__input-cover">
                    <label for="" class="popup-feedback__input-label">Email</label>
                    <? $arResult["QUESTIONS"]["SIMPLE_QUESTION_465"]["HTML_CODE"] = '<input type="mail" class="popup-feedback__input js-validated-field" data-validated_name="mail" />'?>
					<?=$arResult["QUESTIONS"]["SIMPLE_QUESTION_465"]["HTML_CODE"]?>
                </div>
            </div>

            <div class="popup-feedback__input-cover">
                <label for="" class="popup-feedback__input-label">Название компании:</label>
                <? $arResult["QUESTIONS"]["SIMPLE_QUESTION_551"]["HTML_CODE"] ='<input type="text" class="popup-feedback__input" />'?>
				<?=$arResult["QUESTIONS"]["SIMPLE_QUESTION_551"]["HTML_CODE"]?>
            </div>

            <div class="popup-feedback__input-cover">
                <label for="" class="popup-feedback__input-label">Опишите Вашу задачу:</label>
                <? $arResult["QUESTIONS"]["SIMPLE_QUESTION_901"]["HTML_CODE"] ='<textarea name="" id="" class="popup-feedback__textarea"></textarea>'?>
				<?=$arResult["QUESTIONS"]["SIMPLE_QUESTION_901"]["HTML_CODE"]?>
            </div>

            <div class="popup-feedback__consent">
                <div class="popup-feedback__consent-form-wrapper">
                   <? $arResult["QUESTIONS"]["SIMPLE_QUESTION_534"]["HTML_CODE"] =' <input class="popup-feedback__consent-input" id="consent1" type="checkbox" checked="checked" />'?>
					<?=$arResult["QUESTIONS"]["SIMPLE_QUESTION_534"]["HTML_CODE"]?>
                    <label class="popup-feedback__consent-form" for="consent1">
                        <a href="./article-data-processing.html" target="_blank">
                            Нажимая кнопку «Отправить», я даю свое согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года №152-ФЗ «О персональных данных», на условиях и для целей, определенных в Согласии на обработку персональных данных.
                        </a>
                    </label>
                </div>
                <div class="popup-feedback__consent-form-wrapper">
                    <? $arResult["QUESTIONS"]["SIMPLE_QUESTION_989"]["HTML_CODE"] ='<input class="popup-feedback__consent-input" id="consent2" type="checkbox" checked="checked" />'?>
					<?=$arResult["QUESTIONS"]["SIMPLE_QUESTION_989"]["HTML_CODE"]?>
                    <label class="popup-feedback__consent-form" for="consent2">
                        <a href="./article-privacy-policy.html" target="_blank">
                            Оставляя данные на Сайте, заполняя регистрационную форму, Вы соглашаетесь с настоящей Политикой конфиденциальности.
                        </a>
                    </label>
                </div>
            </div>
<div class="popup-feedback__button-cover">
<input <?=(intval($arResult["F_RIGHT"]) < 10 ? "disabled=\"disabled\"" : "");?> type="submit" class="button button_modal-gold " name="web_form_submit" value="<?=htmlspecialcharsbx(trim($arResult["arForm"]["BUTTON"]) == '' ? GetMessage("FORM_ADD") : $arResult["arForm"]["BUTTON"]);?>" />
</div>

<p>
<?=$arResult["REQUIRED_SIGN"];?> - <?=GetMessage("FORM_REQUIRED_FIELDS")?>
</p>
<?=$arResult["FORM_FOOTER"]?>
</template>
<?
} //endif (isFormNote)