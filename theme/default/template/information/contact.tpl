<?php echo $header; ?>
<div class="hero-title">
    <h1><?php echo $heading_title; ?></h1>
</div>
<?php echo $content_between; ?>
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

<section class="contacts-section">
<div class="inner">
<div class="section-title">
<h2>Россия</h2>
</div>
</div>
<?php $contacts[] = array('name' => 'Москва', 'description' => '', 'city' => 'Москва', 'address' => 'Ленинградское ш., д. 112/1', 'phone' => '+7 499 346 42 43'); ?>
<?php $contacts[] = array('name' => 'Санкт-Петербург', 'description' => '', 'city' => 'Санкт-Петербург', 'address' => 'Пр-т. Большевиков д.18, корп. 2, лит.А', 'phone' => '+7 499 346 42 43'); ?>
<?php $contacts[] = array('name' => 'Ростов-на-Дону', 'description' => '', 'city' => 'Ростов-на-Дону', 'address' => 'Пр-т М. Нагибина, д.17Б', 'phone' => '+7 499 346 42 43'); ?>
<?php $contacts[] = array('name' => 'Нижний Новгород', 'description' => '', 'city' => 'Нижний Новгород', 'address' => 'ул. Родионова, д.187В', 'phone' => '+7 499 346 42 43'); ?>
<div class="inner inner--with-list">
  <?php foreach ($contacts as $contact) { ?>
  <div class="contacts-item">
    <div class="contacts-item-holder">
      <div class="name" style="display: none;"><?php echo $contact['name']; ?></div>
      <div class="description" style="display: none;"><?php echo $contact['description']; ?></div>
      <address>
        <span><?php echo $contact['city']; ?></span>
        <p><?php echo $contact['address']; ?></p>
      </address>
      <a class="call-to" href="tel:<?php echo $contact['phone']; ?>"><?php echo $contact['phone']; ?></a>
    </div>
  </div>
  <?php } ?>
</div>
</section>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>