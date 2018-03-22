<section class="request" id="request-form-2">
	<div class="inner">
		<div class="section-title">
			<h2>У вас горят сроки?</h2>
		</div>
		<div class="request-text">
			<div class="column-title">Оставьте заявку прямо сейчас</div>
			<p>и получите расчет стоимости в течение 1 часа с доставкой образца уже через 3 дня к Вашей двери <br>бесплатно!</p>
			<p>А также наш каталог и сравнительную таблицу с конкурентами.</p>
		</div>
		<div class="request-form">
			<div id="request-form">
				<div class="input-line">
					<input class="text-input" name="name" type="text" placeholder="Ваше Имя">
				</div>
				<div class="input-line">
					<input class="text-input" name="phone" type="tel" placeholder="Телефон">
				</div>
				<input type="hidden" name="page_url" value="" />
				<button class="green-butn" type="button">Отправить заявку</button>
			</div>
		</div>
	</div>
</section>
<!--<script type="text/javascript">
var url = document.location.href;
$('#request-form-2 #request-form input[name=\"page_url\"]').val(url);
$('#request-form-2 #request-form button').on('click', function() {
	yaCounter47825998.reachGoal('body-u-vas-goryat-sroki');
    $.ajax({
        url: 'index.php?route=extension/module/request_block_two/send_request',
        type: 'post',
        data: $('#request-form-2 #request-form input, #request-form-2 #request-form textarea'),
        dataType: 'json',
        success: function(json) {
            $('#request-form-2 #request-form').parent().find('.request-success').remove();
            $('#request-form-2 #request-form').parent().find('.request-error').remove();
            if (json['success']) {
                // $('#request-form-2 #request-form').before('<div class="request-success" style=\"color: green; line-height: 30px; font-size: 17px; \">' + json['success'] + '</div>');
                $('.success_modal').click();
            }
            if (json['error']) {
                $('#request-form-2 #request-form').before('<div class="request-error" style=\"color: red; line-height: 30px; font-size: 17px; \">' + json['error'] + '</div>');
            }

        }

    });
});
</script>-->