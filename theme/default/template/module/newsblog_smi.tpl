<section class="about-section scroll-section about" id="about-i">
  <div class="inner" style="padding: 0px;">
    <div class="section-title">
    <?php if ($heading_title) { ?>
      <h2><?php echo $heading_title; ?></h2>
    <?php } ?>
    </div>
    <div class="blog-list">
    <?php foreach ($articles as $article) { ?>
      <div class="blog-item">
        <div class="blog-item-holder">
          <?php if ($article['thumb']) { ?>
          <div class="image">
            <picture>
              <!-- <source srcset="images/smi-1.jpg, images/smi-1@2x.jpg 2x"> -->
              <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['title']; ?>">
            </picture>
          </div>
          <?php } ?>
          <div class="content">
            <time class="date" datetime="<?php echo $article['posted']; ?>">12.03.2017</time>
            <div class="name"><?php echo $article['title']; ?></div>
            <p><?php echo $article['description']; ?></p>
          </div>
          <a href="<?php echo $article['href']; ?>"></a>
        </div>
      </div>
    <?php } ?>
    </div>
  </div>
</section>