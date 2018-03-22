
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
<section class="portfolio-map">
  <div class="portfolio-map-holder">
    <div id="map"></div>
  </div>
</section>
<?php if ($projects) { ?>
<?php $i = 1; ?>
<div class="portfolio-list">
<?php foreach ($projects as $project) { ?>
  <div class="portfolio-item <?php echo $i%2 == 0 ? 'portfolio-item--reverse' : ''; ?>">
    <img src="catalog/view/theme/default/images/ui/_blank.gif" data-original="<?php echo $project['image']; ?>" alt="">
    <div class="portfolio-item-content">
      <div class="inner">
        <div class="portfolio-item-column">
          <div class="logo">
            <picture>
              <!--<source srcset=",@2x.png 2x">-->
              <img src="<?php echo $project['icon']; ?>" alt="<?php echo $project['name']; ?>">
            </picture>
          </div>
          <div class="name">
            <span><?php echo $project['name']; ?></span>
            <address><?php echo $project['city_description']; ?></address>
          </div>
          <p><?php echo $project['description']; ?></p>
        </div>
      </div>
    </div>
  </div>
<?php $i++; ?>
</div>
<?php } ?>
<?php } ?>
</section>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
<script src="https://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU" type="text/javascript"></script>
    <script>
        //MAP
        ymaps.ready(init);
        var myMap;
        function init() {
            myMap = new ymaps.Map('map', {
                center: [55.815, 42.5928],
                controls: ['zoomControl', 'typeSelector', 'geolocationControl', 'fullscreenControl'],
                zoom: 4,
            });
	
            <?php if ($projects) { ?>
            <?php $i = 1; ?>
            <?php $minX = 0; ?>
            <?php $minY = 0; ?>
            <?php $maxX = 0; ?>
            <?php $maxY = 0; ?>
            <?php foreach ($projects as $project) { ?>

            <?php if($minX == 0 || $minX > $project['geo_lat']) { $minX = $project['geo_lat']; } ?>
            <?php if($minY == 0 || $minY > $project['geo_lon']) { $minY = $project['geo_lon']; } ?>
            <?php if($maxX == 0 || $maxX < $project['geo_lat']) { $maxX = $project['geo_lat']; } ?>
            <?php if($maxY == 0 || $maxY < $project['geo_lon']) { $maxY = $project['geo_lon']; } ?>

            <?php if ($project['geo_lat'] && $project['geo_lon']) { ?>
            myGeoObject<?php echo $i; ?> = new ymaps.Placemark([<?php echo $project['geo_lat']; ?>, <?php echo $project['geo_lon']; ?>], {
                balloonContent: '<?php echo $project['name'] ."<br/>". $project["city_description"]; ?>'
            }, {
                iconLayout: 'default#image',
                present: 'default#image',
                iconImageHref: 'catalog/view/theme/default/images/ui/marker.svg',
                iconImageSize: [19, 27],
                iconImageOffset: [-9, -27],
                balloonShadow: false
            });
      
            myMap.geoObjects.add(myGeoObject<?php echo $i; ?>);
			myMap.controls.add('zoomControl');
            myMap.setBounds(myMap.geoObjects.getBounds());

            <?php $i++; ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            
        }
        // END MAP
    </script>