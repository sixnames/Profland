<?php echo $header; ?>
<div class="hero-title">
    <h1><?php echo $heading_title; ?></h1>
</div>
<?php echo $content_between; ?>
<script type="text/javascript">
  $(document).ready(function() {
    $('.hero-text').after('<button class="green-butn modal-trigger" data-target="request_modal" type="button"><svg class="icon-uniF229"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF229"></use></svg>Заказать расчет</button>');
  });
</script>
<?php echo $content_top; ?>
<?php echo $column_left; ?>
<div class="breadcrumbs">
  <div class="inner">
    <ul>
    <?php $i = 1; ?>
    <?php $bc_c = count($breadcrumbs); ?>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php if($i < $bc_c) { ?>
        <li>
          <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        </li>
      <?php } else { ?>
        <li>
          <span><?php echo $breadcrumb['text']; ?></span>
        </li>
      <?php } ?>
      <?php $i++; ?>
    <?php } ?>
    </ul>
  </div>
</div>
<?php if ($description) { ?>
<div class="catalogue-text">
  <div class="inner">
    <?php echo $description; ?>
  </div>
</div>
<?php } ?>
<?php if ($categories) { ?>
<div class="catalogue-nav">
  <div class="inner inner--with-list">
  <?php foreach ($categories as $category) { ?>
    <div class="catalogue-nav-item">
      <div class="catalogue-nav-holder">
        <div class="image">
          <picture>
            <img src="<?php echo $category['image']; ?>" alt="">
          </picture>
        </div>
        <div class="category_descr name">
          <?php echo $category['name']; ?>
        </div>
        <a href="<?php echo $category['href']; ?>"></a>
      </div>
    </div>
  <?php } ?>
  </div>
</div>
<?php } ?>

<?php if ($products) { ?>
<section class="catalogue-list">
  <div class="inner">
    <div class="section-title">
      <h2><?php echo $heading_title; ?></h2>
    </div>
  </div>
  <div class="inner inner--with-list products-list">
  <?php $i=1; ?>
    <?php foreach ($products as $product) { ?>
    <div class="catalogue-item">
      <div class="catalogue-item-holder">
        <div class="catalogue-item-image">
          <picture>
            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
          </picture>
        </div>
        <div class="catalogue-item-content">
          <div class="name">
            <?php echo $product['name']; ?>
          </div>
          <?php if ($product['attribute_groups']) { ?>
          <dl class="catalogue-item-features">
            <?php $j = 0; ?>
            <?php foreach ($product['attribute_groups'] as $attribute_group) { ?>
              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                <?php if($j < 4) { ?>
                  <dt><?php echo $attribute['name']; ?>:</dt>
                  <dd><?php echo $attribute['text']; ?></dd>
                  <?php $j++; ?>
                <?php } ?>
              <?php } ?>
            <?php } ?>
          </dl>
          <?php } ?>
          <button class="white-butn" type="button">Подробнее</button>
        </div>
        <a href="<?php echo $product['href']; ?>"></a>
        <!-- description -->
        <!-- price -->
      </div>
    </div>
    <?php $i++; ?>
    <?php } ?>
  </div>
  <div class="inner inner--with-list">
    <?php if($next_page) { ?>
      <div class="centered-button load_more_block">
        <div class="inner">
          <button class="green-butn load_more" type="button" data-next="<?php echo $next_page; ?>">Показать ещё</button>
        </div>
      </div>
    <?php } ?>
    <div class="row pagination" style="display:none;">
      <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
      <div class="col-sm-6 text-right"><?php echo $results; ?></div>
    </div>
  </div>
</section>
<?php } else { ?>
<section class="catalogue-list">
  <div class="inner">
    <div class="section-title">
      <h2><?php echo $text_empty; ?></h2>
    </div>
  </div>
</section>
<?php } ?>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
