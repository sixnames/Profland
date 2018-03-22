<?php echo $header; ?>
<div class="hero-title">
    <h1><?php echo $heading_title; ?></h1>
</div>
<ul class="hero-nav">
  <li>
    <a href="<?php echo $video_href; ?>">Видеообзоры</a>
  </li>
  <li class="current">
    <a href="">Техническая информация</a>
  </li>
</ul>
<?php echo $content_between; ?>
<style type="text/css">
  .hero-text {
    display: none;
  }
</style>
<?php echo $column_left; ?>
<?php echo $content_top; ?>
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
<div class="faq-content">
<div class="inner">
<!--faq section-->
<section class="faq-section">
<div class="section-title section-title--trigger section-title--trigger-js active">
<h2>Тип покрытия</h2>
</div>
<div class="faq-section-content">
<div class="faq-subtitle">Оцинкованое покрытие</div>
<p>Защита кабеленесущих линий от воздействия атмосферных факторов и механических повреждений, удобство прокладки, осуществления профилактических осмотров, ремонта и изменений конфигурации телекоммуникационных и силовых систем являются важнейшими факторами при проведении электротехнических работ.</p>
<p>Для решения этих задач были созданы простые в эксплуатации и надежные металлические лотки. Помимо этого, использование металла дает возможность создавать эффект «клетки Фарадея», снижая воздействие электромагнитных импульсов на кабельные линии. Современные металлические лотки могут иметь несколько видов покрытия.</p>
<div class="faq-subtitle">Покрытие Эмалью</div>
<p>Защита кабеленесущих линий от воздействия атмосферных факторов и механических повреждений, удобство прокладки, осуществления профилактических осмотров, ремонта и изменений конфигурации телекоммуникационных и силовых систем являются важнейшими факторами при проведении электротехнических работ.</p>
<p>Для решения этих задач были созданы простые в эксплуатации и надежные металлические лотки. Помимо этого, использование металла дает возможность создавать эффект «клетки Фарадея», снижая воздействие электромагнитных импульсов на кабельные линии. Современные металлические лотки могут иметь несколько видов покрытия.</p>
</div>
</section>
<!-- end of faq section-->
<!--faq section-->
<section class="faq-section">
<div class="section-title section-title--trigger section-title--trigger-js">
<h2>Методы испытаний</h2>
</div>
<div class="faq-section-content hide visible" style="display: none;">
<div class="faq-subtitle">Оцинкованое покрытие</div>
<p>Защита кабеленесущих линий от воздействия атмосферных факторов и механических повреждений, удобство прокладки, осуществления профилактических осмотров, ремонта и изменений конфигурации телекоммуникационных и силовых систем являются важнейшими факторами при проведении электротехнических работ.</p>
<p>Для решения этих задач были созданы простые в эксплуатации и надежные металлические лотки. Помимо этого, использование металла дает возможность создавать эффект «клетки Фарадея», снижая воздействие электромагнитных импульсов на кабельные линии. Современные металлические лотки могут иметь несколько видов покрытия.</p>
</div>
</section>
<!-- end of faq section-->
<!--faq section-->
<section class="faq-section">
<div class="section-title section-title--trigger section-title--trigger-js">
<h2>Безопасная рабочая нагрузка</h2>
</div>
<div class="faq-section-content hide visible" style="display: none;">
<div class="faq-subtitle">Оцинкованое покрытие</div>
<p>Защита кабеленесущих линий от воздействия атмосферных факторов и механических повреждений, удобство прокладки, осуществления профилактических осмотров, ремонта и изменений конфигурации телекоммуникационных и силовых систем являются важнейшими факторами при проведении электротехнических работ.</p>
<p>Для решения этих задач были созданы простые в эксплуатации и надежные металлические лотки. Помимо этого, использование металла дает возможность создавать эффект «клетки Фарадея», снижая воздействие электромагнитных импульсов на кабельные линии. Современные металлические лотки могут иметь несколько видов покрытия.</p>
</div>
</section>
<!-- end of faq section-->
<!--faq section-->
<section class="faq-section">
<div class="section-title section-title--trigger section-title--trigger-js">
<h2>Рекомендации</h2>
</div>
<div class="faq-section-content hide visible" style="display: none;">
<div class="faq-subtitle">Оцинкованое покрытие</div>
<p>Защита кабеленесущих линий от воздействия атмосферных факторов и механических повреждений, удобство прокладки, осуществления профилактических осмотров, ремонта и изменений конфигурации телекоммуникационных и силовых систем являются важнейшими факторами при проведении электротехнических работ.</p>
<p>Для решения этих задач были созданы простые в эксплуатации и надежные металлические лотки. Помимо этого, использование металла дает возможность создавать эффект «клетки Фарадея», снижая воздействие электромагнитных импульсов на кабельные линии. Современные металлические лотки могут иметь несколько видов покрытия.</p>
</div>
</section>
<!-- end of faq section-->
</div>
</div>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>