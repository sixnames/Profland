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
<div class="inner">
<?php if($heading_title) { ?>
  <div class="section-title">
    <h2><?php echo $heading_title; ?></h2>
  </div>
<?php } ?>
<?php if ($elements) { ?>
<div class="customers-list">
  <?php foreach ($elements as $element) { ?>
    <div class="customers-item">
      <picture>
        <img src="<?php echo $element['icon']; ?>" alt="<?php echo $element['name']; ?>">
      </picture>
    </div>
  <?php } ?>
</div>
<div class="row pagination">
  <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
  <!--<div class="col-sm-6 text-right"><?php echo $results; ?></div>-->
</div>
<?php } else { ?>
  <div class="section-title">
    <h2>Раздел пока пуст</h2>
  </div>
<?php } ?>
</div>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>