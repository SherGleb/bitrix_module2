<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();

$this->setFrameMode(true);
?>
<section class="container">
	<div class="blog-list">
		<? foreach ($arResult["ITEMS"] as $arItem):?>
			<?
			$this->AddEditAction($arItem['ID'], $arItem['EDIT_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_EDIT"));
			$this->AddDeleteAction($arItem['ID'], $arItem['DELETE_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_DELETE"), array("CONFIRM" => GetMessage('CT_BNL_ELEMENT_DELETE_CONFIRM')));
			?>
		
			<a href="<? echo $arItem["DETAIL_PAGE_URL"] ?>" class="blog">
			<div class="blog__img">
				<img width="100%" height="100%" src="<?= $arItem["PREVIEW_PICTURE"]["SRC"] ?>" alt="">
			</div>
			<div class="blog__desc">
				<div class="blog__title">
					<? echo $arItem["NAME"] ?>
				</div>
				<div class="blog__date">
					<?echo explode(" ", $arItem["TIMESTAMP_X"])[0]?>
				</div>
				<? if ($arParams["DISPLAY_PREVIEW_TEXT"] != "N" && $arItem["PREVIEW_TEXT"]): ?>
					<div class="blog_article"><? echo $arItem["PREVIEW_TEXT"]; ?></div>
				<? endif; ?>
			</div>
			</a>
		<? endforeach; ?> 
		</div>
	</section>