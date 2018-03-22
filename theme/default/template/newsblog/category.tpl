<?php echo $header; ?>
<div class="hero-title">
    <h1><?php echo $heading_title; ?></h1>
</div>
<?php echo $content_between; ?>
<div id="description" style="display: none;">
  <?php echo $description; ?>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    $('.hero-text').html($('#description').html());
    $('.hero-text').after('<div class="hero-form"></div>');
    $('.hero-form').load('index.php?route=extension/module/newsletters');
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
<div class="blog-list">
  <div class="inner inner--with-list">
    <?php if ($articles) { ?>
    <?php foreach ($articles as $article) { ?>
    <div class="blog-item">
      <div class="blog-item-holder">
        <div class="image">
          <picture>
            <source srcset="<?php echo $article['thumb']; ?>, <?php echo $article['thumb']; ?> 2x">
            <img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>">
          </picture>
        </div>
        <div class="content">
          <time class="date" datetime="2016-01-01 00:00:00"><?php echo $article['date']; ?></time>
          <div class="name"><?php echo $article['name']; ?></div>
          <?php if ($article['preview']) { ?>
            <p><?php echo $article['preview']; ?></p>
          <?php } ?>
        </div>
        <a href="<?php echo $article['href']; ?>"></a>
      </div>
    </div>
    <?php } ?>
    <?php } ?>
    <!-- <div class="centered-button">
      <div class="inner">
        <button class="green-butn" type="button">Еще новости</button>
      </div>
    </div> -->
  </div>
  <div class="row pagination" style="display: none;">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
  </div>
</div>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>