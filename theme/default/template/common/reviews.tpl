<?php echo $header; ?>
<div class="inner">
  <div class="hero-title">
      <h1><?php echo $heading_title; ?></h1>
  </div>
</div>
<?php echo $content_between; ?>
<?php echo $content_top; ?>
<?php echo $column_left; ?>
<div class="breadcrumbs">
  <div class="inner">
    <ul>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li>
      <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      </li>
    <?php } ?>
    </ul>
  </div>
</div>
<div class="inner">
<?php if($heading_title) { ?>
  <div class="section-title">
    <h2><?php echo $heading_title; ?></h2>
  </div>
<?php } ?>
  <div class="testimonials-holder">
    <div class="testimonials-list">
      <?php foreach ($reviews as $review) { ?>
      <div class="testimonials-item">
        <div class="testimonials-item-author">
          <?php echo $review['name']; ?> <mark><?php echo $review['company']; ?></mark>
        </div>
        <div class="testimonials-item-content">
          <?php echo $review['text']; ?>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
  <div class="row pagination">
    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
    <div class="col-sm-6 text-right"><?php echo $results; ?></div>
  </div>
</div>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
<!--<script type="text/javascript">
$.each($('iframe'), function(index, element) {
  var href = $(element).attr('src');
  var arr = href.split('embed/');
  var code = arr[arr.length-1];

  html = '<div class="video-preview">';
  html += '<div class="video-preview-image">';
  html += '<picture><img src="https://img.youtube.com/vi/' + code + '/hqdefault.jpg" alt=""></picture>';
  html += '<svg class="icon-uniF1FF"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF1FF"></use></svg>';
  html += '</div>';
  html += '<a data-fancybox="" href="' + href + '"></a>';
  html += '</div>';

  $(element).replaceWith(html);
});
</script>-->