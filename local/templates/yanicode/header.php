<? if (!defined('B_PROLOG_INCLUDED') || B_PROLOG_INCLUDED !== true) die();
use Bitrix\Main\Page\Asset;
$asset = Asset::getInstance();
?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta class="js-meta-viewport" name="viewport" content="width=device-width, height=device-height, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <title><? $APPLICATION->ShowTitle(); ?></title>
    <? $APPLICATION->ShowHead();  ?>
	<? 
    $asset->addCss(SITE_TEMPLATE_PATH . "/assets/template_styles.css"); 
    $asset->addJs(SITE_TEMPLATE_PATH . "/assets/js/build.js");
    ?> 
</head>

<body>
    <div id="panel">
		<? $APPLICATION->ShowPanel(); ?> 
    </div>

    <header class="header">
        <div class="container">
            <div class="header-wrapper">
				<a href="/" class="header__logo">
                    <img width="300" height="92" src="<?=SITE_TEMPLATE_PATH?>/assets/images/svg/logo-yanicode.svg" alt="yanicode">
                </a>
                <div class="header__burger header__burger_close">
                    <span class="burger-line"></span>
                    <span class="burger-line"></span>
                    <span class="burger-line"></span>
                </div>
                <div class="header-nav">
                    <nav class="nav-list">
						<?$APPLICATION->IncludeComponent("bitrix:menu","top-menu",Array(
								"ROOT_MENU_TYPE" => "top", 
								"MAX_LEVEL" => "1", 
								"CHILD_MENU_TYPE" => "top", 
								"USE_EXT" => "Y",
								"DELAY" => "N",
								"ALLOW_MULTI_SELECT" => "Y",
								"MENU_CACHE_TYPE" => "N", 
								"MENU_CACHE_TIME" => "3600", 
								"MENU_CACHE_USE_GROUPS" => "Y", 
								"MENU_CACHE_GET_VARS" => "" 
							)
						);?>
                    </nav>
                    <div class="header__phone">
                        <a href="tel:<?php $APPLICATION->IncludeFile(SITE_DIR . "include/header/phone.php", [], ["SHOW_BORDER" => false, "MODE" => "php"]); ?>"><?php $APPLICATION->IncludeFile(SITE_DIR . "include/header/phone.php", [], ["MODE" => "php"]); ?></a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main class="website-workarea">

        