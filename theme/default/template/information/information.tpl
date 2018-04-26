<?php echo $header; ?>
<div class="hero-title">
    <h1><?php echo $heading_title; ?>. Мы производим кабельные лотки и электромонтажные изделия</h1>
</div>
<?php echo $content_between; ?>
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
  <div class="about-content fixed-parent">
    <div class="about-column">
      <?php echo $description; ?>
      <?php echo $content_top; ?>
    </div>
    <aside class="about-aside">
      <ul class="about-aside-holder" id="aside" style="">
        <li><a class="anchor current" href="#about-a">Ценности</a></li>
        <li><a class="anchor" href="#about-b">Команда</a></li>
        <li><a class="anchor" href="#about-c">Производство</a></li>
        <li><a class="anchor" href="#about-d">Поставщики</a></li>
        <li><a class="anchor" href="#about-e">Клиенты</a></li>
        <li><a class="anchor" href="#about-f">Лицензии</a></li>
        <li><a class="anchor" href="#about-g">Сотрудничество</a></li>
        <li><a class="anchor" href="#about-h">Условия работы</a></li>
        <li><a class="anchor" href="#about-i">Сми о нас</a></li>
        <li><a class="anchor" href="#about-k">Благотворительность</a></li>
      </ul>
    </aside>
  </div>
</div>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>