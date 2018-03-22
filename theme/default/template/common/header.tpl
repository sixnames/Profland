<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="yandex-verification" content="0b75984f558b9192" />
<!— Facebook Pixel Code —>
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,'script',
'https://connect.facebook.net/en_US/fbevents.js');

fbq('init', '827548663930350'); 
fbq('track', 'PageView');
</script>
<noscript>
<img height="1" width="1" 
src="https://www.facebook.com/tr?id=827548663930350&ev=PageView
&noscript=1"/>
</noscript>
<!— End Facebook Pixel Code —>
<!-- Yandex.Metrika counter --> <script type="text/javascript" > (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter47825998 = new Ya.Metrika({ id:47825998, clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true, ut:"noindex" }); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = "https://cdn.jsdelivr.net/npm/yandex-metrica-watch/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks"); </script> <noscript><div><img src="https://mc.yandex.ru/watch/47825998?ut=noindex" style="position:absolute; left:-9999px;" alt="" /></div></noscript> <!-- /Yandex.Metrika counter -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<link rel="apple-touch-icon" sizes="180x180" href="catalog/view/theme/default/images/touch/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="catalog/view/theme/default/images/touch/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="catalog/view/theme/default/images/touch/favicon-16x16.png">
<link rel="manifest" href="catalog/view/theme/default/images/touch/manifest.json">
<link rel="mask-icon" href="catalog/view/theme/default/images/touch/safari-pinned-tab.svg" color="#36d85e">
<link rel="shortcut icon" href="catalog/view/theme/default/images/touch/favicon.ico">
<meta name="msapplication-config" content="catalog/view/theme/default/images/touch/browserconfig.xml">
<meta name="theme-color" content="#ffffff">

  <!--<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>-->
<!-- <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> -->
<!-- <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" /> -->
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<meta property="og:site_name" content="<?php echo $store_name; ?>"/>
<meta property="og:url" content="<?php echo $home; ?>"/>
<meta property="og:title" content="<?php echo $title; ?>"/>
<meta property="og:description" content="<?php echo $description; ?>"/>
<meta property="og:type" content="website"/>
<meta property="og:image" content="<?php echo $logo; ?>"/>

<style>
  html {
    opacity: 0;
  }
</style>

</head>
<body class="<?php echo $class; ?>">
<!--HEADER-->
<header class="header" id="header">
  <div class="header-holder">
    <div class="inner">
      <div class="header-logo">
      <?php if($home_link) { ?>
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><svg class="icon-logo"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-logo"></use></svg><span>Производство и поставка кабельных <br>лотков и электромонтажных изделий</span></a>
          <?php } else { ?>
            <h5><?php echo $name; ?></h5>
          <?php } ?>
      <?php } else { ?>
          <?php if ($logo) { ?>
          <a><svg class="icon-logo"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-logo"></use></svg>
		  <span>Производство и поставка кабельных <br>лотков и электромонтажных изделий</span>
		  </a>
          <?php } else { ?>
            <h5><?php echo $name; ?></h5>
          <?php } ?>
      <?php } ?>
      </div>
      <div class="header-right">
        <div class="header-top">
          <?php echo $top_block; ?>
          <div class="header-phone">
            <a href="tel:<?php echo $telephone; ?>" class="call-to"><?php echo $telephone; ?></a><br/>
			<a href="tel:+77212981000" class="call-to">+7 7212 981000</a>
          </div>
          <div class="header-buttons">
            <button class="mobile-nav-butn ui-butn">
              <span></span>
            </button>
            <button  class="ui-butn modal-trigger" type="button" data-target="search_modal">
              <svg class="icon-uniF23A"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF23A"></use></svg>
            </button>
            <button class="green-butn modal-trigger" type="button" data-target="request_modal">Оставить заявку</button>
          </div>
        </div>
        <?php if ($categories) { ?>
        <nav class="header-nav">
          <ul>
          <?php foreach ($categories as $category) { ?>
            <li class="menu-max-w">
              <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
              <?php if ($category['children']) { ?>
              <div class="header-nav-dropdown">
                <div class="inner">
                  <div class="header-nav-list">
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                    <?php foreach ($children as $child) { ?>
                    <ul>
                      <li>
                        <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                      </li>
                      <?php if ($child['sub_children_data']) { ?>
                      <?php foreach ($child['sub_children_data'] as $sub_child) { ?>
                      <li>
                        <a href="<?php echo $sub_child['href']; ?>">
                          <span class="icon">
                            <img src="<?php echo $sub_child['image']; ?>" alt="">
                          </span>
                          <span class="name"><?php echo $sub_child['name']; ?></span>
                        </a>
                      </li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  <?php } ?>
                  </div>
                </div>
              </div>
              <?php } ?>
            </li>
          <?php } ?>
          </ul>
        </nav>
        <?php } ?>
      </div>
    </div>
    <!--mobile-->
    <div class="mobile-nav">
      <div class="mobile-nav-scroll">
        <div class="mobile-nav-content">
          <div class="mobile-nav-holder">
            <ul class="mobile-nav-list">
              <li class="mobile_top_block">
                <?php echo $top_block; ?>
              </li>
              <?php if ($categories) { ?>
              <li>
                <a href="#">Каталог</a>
                <?php foreach ($categories as $category) { ?>
                <div class="mobile-nav-section">
                  <div class="mobile-nav-section-title mobile-nav-section-title-js"><?php echo $category['name']; ?></div>
                  <?php if ($category['children']) { ?>
                  <?php foreach ($children as $child) { ?>
                  <div class="mobile-nav-section-content hide visible" style="display: none;">
                    <ul>
                      <li>
                        <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                      </li>
                      <?php if ($child['sub_children_data']) { ?>
                      <?php foreach ($child['sub_children_data'] as $sub_child) { ?>
                      <li>
                        <a href="<?php echo $sub_child['href']; ?>">
                          <span class="icon">
                            <img src="<?php echo $sub_child['image']; ?>" alt="">
                          </span>
                          <span class="name"><?php echo $sub_child['name']; ?></span>
                        </a>
                      </li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                  </div>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </li>
              <?php } ?>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="mobile-nav-close"></div>
    <!--end mobile-->
  </div>
</header>

<main class="main" id="main">
  <!--hero-->
  <section class="hero">
    <div class="hero-content">
      <div class="inner">
