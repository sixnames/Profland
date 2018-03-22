</main>
<!-- <footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer> -->
<button class="green-butn modal-trigger success_modal" type="button" data-target="success_modal" style="display:none;">success</button>
<footer class="footer" id="footer">
  <div class="footer-holder">
    <div class="inner">
      <div class="footer-section">
        <div class="footer-left">
          <?php echo $footer_links; ?>
        </div>
        <div class="footer-right">
          <div class="footer-nav">
            <div class="footer-nav-title">
              <a href="">Каталог<!-- </a> -->
            </div>
            <?php if($categories) { ?>
            <?php foreach($categories as $category) { ?>
            <ul>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php if($category['children']) { ?>
              <?php foreach($category['children'] as $child) { ?>
              <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
              <?php } ?>
              <?php } ?>
            </ul>
            <?php } ?>
            <?php } ?>
          </div>
        </div>
      </div>
      <div class="footer-section">
        <div class="footer-left" style="width: 80%;">
          <?php echo $footer_contacts; ?>
        </div>
        <div class="footer-right" style="width: 20%;">
          <button class="green-butn modal-trigger" type="button" data-target="callback_modal">Обратный звонок</button>
        </div>
      </div>
      <div class="footer-section">
        <div class="footer-left" style="width: 70%;">
          <?php echo $footer_copyright; ?>
        </div>
        <div class="footer-right" style="width: 30%;">
          <div class="footer-social">
            <a href="https://www.youtube.com/channel/UChSi1BGkiiuVfJMhWYa_9hA" target="_blank" rel="nofollow">
              <svg class="icon-youtube-play">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-youtube-play"></use>
              </svg>
            </a>
            <a href="https://www.facebook.com/profland.kz" target="_blank" rel="nofollow">
              <svg class="icon-facebook">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-facebook"></use>
              </svg>
            </a>
            <a href="https://vk.com/proflandkz" target="_blank" rel="nofollow">
              <svg class="icon-vk">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-vk"></use>
              </svg>
            </a>
            <a href="https://www.instagram.com/zavod.profland/" target="_blank" rel="nofollow">
              <svg class="icon-instagram">
                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-instagram"></use>
              </svg>
            </a>
          </div>
        </div>
      </div>
      <a href="#main" class="anchor ui-butn">
        <svg class="icon-uniF190">
          <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF190"></use>
        </svg>
      </a>
    </div>
  </div>
</footer>
<div id="modal-holder" class="modal-holder"></div>
<!--end of FOOTER-->

<!--ui-icons-->
<div id="ui-icons" class="ui-icons"></div>
<!--end of ui-icons-->

<!--call-button-->
<a class="call-button" href="tel:8499999999" rel="nofollow">
  <svg class="icon-phone">
    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-phone"/>
  </svg>
</a>
<!--end of call-button-->

<!--JS-->
<script src="catalog/view/theme/default/js/main-dist.js"></script>
<!-- <script src="catalog/view/theme/default/js/scripts.js"></script> -->
<!-- <script src="catalog/view/javascript/common.js" type="text/javascript"></script> -->

<!-- STYLES -->
<link href="catalog/view/theme/default/stylesheet/style.css" rel="stylesheet"/>

</body></html>
<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter47245179 = new Ya.Metrika({
                    id:47245179,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>



<noscript><div><img src="https://mc.yandex.ru/watch/47245179" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->