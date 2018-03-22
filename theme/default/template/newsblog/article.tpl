<?php echo $header; ?>
<div class="hero-title">
    <h1><?php echo $heading_title; ?></h1>
</div>
<?php echo $content_between; ?>
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
<div class="article-content">
  <div class="inner">
    <div class="article-column">
      <picture>
        <!-- <source srcset="images/article.jpg, images/article@2x.jpg 2x"> -->
        <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>">
      </picture>
    </div>
    <div class="article-column">
      <div class="column-title"><?php echo $heading_title; ?></div>
      <p><?php echo $description; ?></p>
      <?php if ($parent_category) { ?>
        <button class="green-butn" id="to_category" type="button">
        <svg class="icon-uniF1C5"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF1C5"></use></svg>
          Все новости
        </button>
      <?php } ?>
    </div>
  </div>
</div>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
<script type="text/javascript">
  $('#to_category').on('click', function() {
    window.location.href = "index.php?route=newsblog/category&newsblog_path=<?php echo $parent_category; ?>";
  });
</script>

