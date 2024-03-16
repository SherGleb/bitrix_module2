<? if (!defined('B_PROLOG_INCLUDED') || B_PROLOG_INCLUDED !== true) die(); ?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta class="js-meta-viewport" name="viewport" content="width=device-width, height=device-height, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <title><? $APPLICATION->ShowTitle(); ?></title>
    <? $APPLICATION->ShowHead();  ?>
    <link rel="stylesheet" href="<?=SITE_TEMPLATE_PATH?>/assets/template_styles.css">
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
                        <a href="tel:+79114510616">+79114510616</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <main class="website-workarea">

                <section class="banner banner_before54" style="background-image: url('<?=SITE_TEMPLATE_PATH?>/assets/images/banner_services.jpg');">
            <div class="banner-wrapper">
                <div class="container">
                    <div class="banner__content">
                        <p><b class="text_gold">НАША МИССИЯ: </b>создаем и внедряем<br />
                            инновационные ценностные<br />
                            предложения и концепции, влияющие на<br />
                            формирование рынка потребительских<br />
                            предпочтений и способствующие<br />
                            достижению бизнес-целей</p>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="stages">
                    <div class="stages__item">
                        <div class="stages__step">01</div>
                        <div class="stages__desc-step">АУДИТ</div>
                    </div>
                    <div class="stages__item">
                        <div class="stages__step">02</div>
                        <div class="stages__desc-step">СТРАТЕГИЯ</div>
                    </div>
                    <div class="stages__item">
                        <div class="stages__step">03</div>
                        <div class="stages__desc-step">КОНЦЕПЦИЯ</div>
                    </div>
                    <div class="stages__item">
                        <div class="stages__step">04</div>
                        <div class="stages__desc-step">ДИЗАЙН</div>
                    </div>
                    <div class="stages__item">
                        <div class="stages__step">05</div>
                        <div class="stages__desc-step">КОММУНИКАЦИИ</div>
                    </div>
                </div>
            </div>
        </section>
		<div class="container">
            <h1 class="container-title">
                НАШИ УСЛУГИ
			</h1>
