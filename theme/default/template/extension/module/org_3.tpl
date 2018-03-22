<div class="inner">
<?php if($heading_title) { ?>
	<div class="section-title">
		<h2><?php echo $heading_title; ?></h2>
	</div>
<?php } ?>
<?php echo $description_top; ?>
</div>
<?php if ($elements) { ?>
<?php $i = 1; ?>
<div class="portfolio-list">
<?php foreach ($elements as $element) { ?>
  <div class="portfolio-item <?php echo $i%2 == 0 ? 'portfolio-item--reverse' : ''; ?>">
    <picture>
     <!--  <source srcset="images/portfolio-image-1.jpg, images/portfolio-image-1@2x.jpg 2x"> -->
      <img src="<?php echo $element['image']; ?>" alt="">
    </picture>
    <div class="portfolio-item-content">
      <div class="inner">
        <div class="portfolio-item-column">
          <div class="logo">
            <picture>
              <!-- <source srcset="images/portfolio-customer-1.png, images/portfolio-customer-1@2x.png 2x"> -->
              <img src="<?php echo $element['icon']; ?>" alt="<?php echo $element['name']; ?>">
            </picture>
          </div>
          <div class="name">
            <span><?php echo $element['name']; ?></span>
            <address><?php echo $element['city_description']; ?></address>
          </div>
          <p><?php echo $element['description']; ?></p>
        </div>
      </div>
    </div>
  </div>
<?php $i++; ?>
<?php } ?>
</div>
<div class="centered-button centered-button--positioned">
	<div class="inner">
		<button class="green-butn" type="button"><a style="color:black;text-decoration:none;" href="<?php echo $portfolio_page; ?>">Смотреть все проекты</a></button>
	</div>
</div>
<?php } ?>
<div class="inner">
<?php echo $description_bottom; ?>
</div>

