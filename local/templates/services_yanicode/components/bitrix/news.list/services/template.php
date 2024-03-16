<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
$this->setFrameMode(true);
$this->addExternalJS("/build.js");
?>
<div class="services-cover">
	<div class="services">
		<h2 class="services__title">
			<?echo $arResult["SECTION"]["PATH"][0]["NAME"]?>
		</h2>
		<div class="services-category">
			<? foreach ($arResult["ITEMS"] as $arItem):?>
				<?
				$this->AddEditAction($arItem['ID'], $arItem['EDIT_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_EDIT"));
				$this->AddDeleteAction($arItem['ID'], $arItem['DELETE_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_DELETE"), array("CONFIRM" => GetMessage('CT_BNL_ELEMENT_DELETE_CONFIRM')));
				?>
					<div class="services__item" data-popup="services-popup"><? echo $arItem["NAME"] ?></div>
			<? endforeach; ?>
		</div>
	</div>
</div>
<template id="popup-services">
            <div class="popup-services-cover">
                <div class="popup-services__title">
                    БРЕНДИНГ
                </div>
                <div class="popup-services__category">
                    Аудит бренда
                </div>
                <div class="popup-services__desc">
                    <p>
                        Это диагностика его ключевых параметров и характеристик для понимания дальнейших путей развития. Прежде всего, он дает ответ на вопрос: что сохранить и что изменить при ребрендинге.
                    </p>
                    <p>
                        В базовой версии аудита мы анализируем восприятие бренда; целостность его образа в различных точках контакта с потребителем; заметность бренда в конкурентном окружении. Особое внимание мы уделяем анализу фирменного стиля и коммуникаций, поскольку это именно та сфера, в которой нам предстоит работать. По итогам аудита мы даем рекомендации по возможным направлениям развития фирменного стиля бренда.
                    </p>
                    <p>
                        Если на момент проведения аудита маркетинговая стратегия уже сформирована, мы сопоставляем цели и планы компании с текущим образом бренда.
                    </p>
                    <p>
                        В расширенных версиях может быть проведен анализ ассортиментного портфеля, пути потребителя, представленности в тех или иных каналах продаж и коммуникаций и т.д. Набор параметров для анализа определяется индивидуально для каждого проекта.
                    </p>
                </div>
            </div>
        </template>
