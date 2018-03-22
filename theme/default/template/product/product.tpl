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

<div class="product-content" id="product">
<!-- for microdata -->
<h1 style="display: none;"><?php echo $heading_title; ?></h1>
<?php if ($price) { ?>

<?php } ?>
<!-- end -->

  <div class="inner">
    <div class="product-image">
      <div class="product-image-content">
        <div class="product-image-tab" style="display: block;">
          <picture>
            <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>">
          </picture>
        </div>
        <?php if ($images) { ?>
            <?php foreach ($images as $image) { ?>
            <div class="product-image-tab hide visible" style="display: none;">
              <picture>
              <img src="<?php echo $image['popup']; ?>" alt="<?php echo $heading_title; ?>" />
              </picture>
            </div>
            <?php } ?>
        <?php } ?>
      </div>
      <ul class="product-image-tabs">
        <li class="current">Фото</li>
        <li class="">Схема</li>
      </ul>
    </div>
    <div class="product-description">
      <div class="product-buttons">
        <a href="/pdf/Profland-catalog.pdf" target="_blanc"><button class="green-butn" type="button">Скачать каталог</button></a>
        <button class="green-butn modal-trigger" type="button" data-target="order_modal">Сделать заказ</button>
      </div>
	  
	  
	  
      <ul class="product-features">
        <li>Код: <?php echo $sku; ?></li>
        <li><?php echo $heading_title; ?></li>
		<?php foreach ($attribute_groups as $attribute_group) { ?>
            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <li><?php echo $attribute['name']; ?>: <?php echo $attribute['text']; ?></li>
            <?php } ?>
        <?php } ?>
        <!-- <li>Материал: Сталь оцинкованное покрытие по ГОСТу 15150-69.</li>
        <li>Изготавливаются по ТУ 3449-002-66943594-2011.</li>
        <li>Возможность порошковой окраски в любой цвет.</li> -->
        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
      </ul>
      <div class="product-text">
        <div class="column-title">Примечание:</div>
        <?php echo $description; ?>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		// beforeSend: function() {
		// 	$('#button-cart').button('loading');
		// },
		// complete: function() {
		// 	$('#button-cart').button('reset');
		// },
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
