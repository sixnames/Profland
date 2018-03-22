<?php echo $header; ?>
<div class="hero-title">
    <h1>Статьи</h1>
</div>
<ul class="hero-nav">
  <li class="current">
    <a href="">Видеообзоры</a>
  </li>
  <li>
    <a href="<?php echo $faq_href; ?>">Техническая информация</a>
  </li>
</ul>
<?php echo $content_between; ?>
<style type="text/css">
  .hero-text {
    display: none;
  }
</style>
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
<?php if ($categories) { ?>
<?php foreach ($categories as $category) { ?>
<section class="video-list-holder">
  <div class="inner">
    <div class="section-title"><h2><a href="<?php echo $category['href']; ?>" style="color: #000000; text-decoration: none;"><?php echo $category['name']; ?></a></h2></div>
  </div>
  <?php if ($category['articles']) { ?>
  <div class="inner inner--with-list">
    <?php foreach ($category['articles'] as $category_article) { ?>
    <div class="video-list-item">
      <?php echo $category_article['preview']; ?>
      <span class="article_name"><?php echo $category_article['name']; ?></span>
    </div>
    <?php } ?>
  </div>
  <?php } ?>
</section>
<?php } ?>
<?php } else { ?>
<section class="video-list-holder">
  <div class="inner">
    <div class="section-title"><h2><?php echo $heading_title; ?></h2></div>
  </div>
  <?php if ($articles) { ?>
  <div class="inner inner--with-list">
    <?php foreach ($articles as $category_article) { ?>
    <div class="video-list-item">
      <?php echo $category_article['preview']; ?>
      <span class="article_name"><?php echo $category_article['name']; ?></span>
    </div>
    <?php } ?>
  </div>
  <?php } ?>
</section>
<?php } ?>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
<!--<script type="text/javascript">
$.each($('iframe'), function(index, element) {
  var href = $(element).attr('src');
  var arr = href.split('embed/');
  var code = arr[arr.length-1];
  var name = $(element).parent().find('.article_name').html();

  html = '<div class="video-preview">';
  html += '<div class="video-preview-image">';
  html += '<picture><img src="https://img.youtube.com/vi/' + code + '/hqdefault.jpg" alt="" style="width: 570px;"></picture>';
  html += '<svg class="icon-uniF1FF"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF1FF"></use></svg>';
  html += '</div>';
  html += '<span class="article_name">' + name + '</span>';
  html += '<a data-fancybox="" href="' + href + '"></a>';
  html += '</div>';

  $(element).parent().find('.article_name').remove();
  $(element).replaceWith(html);
});
</script>-->