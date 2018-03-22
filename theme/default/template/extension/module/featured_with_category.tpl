<section class="catalogue">
  <div class="inner">
    <div class="section-title">
      <h2><?php echo $heading_title; ?></h2>
    </div>
  </div>
  <?php if ($products) { ?>
  <div class="catalogue-list">
    <div class="inner inner--with-list">
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
        </div>
      </div>
      <?php } ?>
      <?php if ($button_link && $button_text) { ?>
		  <div class="centered-button centered-button--positioned">
			<div class="inner">
				<button class="green-butn" type="button"><a style="color:black;text-decoration:none;" href="<?php echo $button_link; ?>"><?php echo $button_text; ?></a></button>
			</div>
      </div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php if ($categories) { ?>
    <?php foreach ($categories as $category) { ?>
    <?php if ($category['products']) { ?>
      <div class="catalogue-list">
        <div class="inner inner--with-list">
        <?php foreach ($category['products'] as $category_product) { ?>
          <div class="catalogue-item">
            <div class="catalogue-item-holder">
              <div class="catalogue-item-image">
                <picture>
                  <img src="<?php echo $category_product['thumb']; ?>" alt="<?php echo $category_product['name']; ?>">
                </picture>
              </div>
              <div class="catalogue-item-content">
                <div class="name">
                  <?php echo $category_product['name']; ?>
                </div>
                <?php if ($category_product['attribute_groups']) { ?>
                <dl class="catalogue-item-features">
                  <?php $j = 0; ?>
                  <?php foreach ($category_product['attribute_groups'] as $attribute_group) { ?>
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
              <a href="<?php echo $category_product['href']; ?>"></a>
            </div>
          </div>
          <?php } ?>
          <div class="centered-button">
            <div class="inner">
              <a class="green-butn" href="<?php echo $category['href']; ?>" style="line-height: 50px;">Все <?php echo $category['name']; ?></a>
            </div>
          </div>
        </div>
      </div>
    <?php } ?>
    <?php } ?>
  <?php } ?>
</section>