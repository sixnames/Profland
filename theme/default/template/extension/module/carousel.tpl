<section class="about-section scroll-section" id="about-f">
  <div class="inner" style="padding: 0px;">
    <?php if ($text_top) { ?>
      <?php echo $text_top; ?>
    <?php } ?>
    <div class="about-license">
      <?php foreach ($banners as $banner) { ?>
      <div class="slide">
        <a href="<?php echo $banner['link']; ?>" data-fancybox="">
          <picture>
            <!-- <source srcset="images/license.jpg, images/license@2x.jpg 2x"/> -->
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"/>
          </picture>
        </a>
      </div>
      <?php } ?>
    </div>
    <?php if ($text_bottom) { ?>
      <br><br>
      <p><?php echo $text_bottom; ?></p>
    <?php } ?>
  </div>
</section>