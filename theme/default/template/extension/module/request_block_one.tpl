
<section class="about-section scroll-section" id="about-g">
	<div class="section-title">
		<h2>Сотрудничество </h2>
	</div>
	<p><mark>Более 130 сотрудников с высочайшей квалификацией</mark> Profland – команда единомышленников, задача которых, поставить качественную продукцию настолько быстро, насколько это возможно. За 10 лет более 800 компаний успели оценить наше качество, сервис и как мы работаем. Среди них Сбербанк, ЦУМ, TS Engineering, BI Group, Казахтелеком, Тенгизшевройл Современные металлические лотки могут иметь несколько видов покрытия.</p>
	<div class="about-request">
		<div class="request-text">
			<div class="column-title">Отправьте заявку <br>по вопросам сотрудничества</div>
			<p>Мы всегда рады сотрудничеству и открыты для диалога. Только командная работа поистине высокие результаты</p>
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
				<div class="input-line">
					<input class="text-input" name="email" type="email" placeholder="E-mail">
				</div>
				<div class="input-line">
					<textarea class="textarea-field" name="message" placeholder="Текст сообщения"></textarea>
				</div>
				<input type="hidden" name="page_url" value="" />
				<button class="green-butn" type="button">Отправить заявку</button>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
var url = document.location.href;
$('#about-g #request-form input[name=\"page_url\"]').val(url);
$('#about-g #request-form button').on('click', function() {
	yaCounter47825998.reachGoal('body-sotrudnichestvo'); 
    $.ajax({
        url: 'index.php?route=extension/module/request_block_one/send_request',
        type: 'post',
        data: $('#about-g #request-form input, #about-g #request-form textarea'),
        dataType: 'json',
        success: function(json) {
            $('#about-g #request-form').parent().find('.request-success').remove();
            $('#about-g #request-form').parent().find('.request-error').remove();
            if (json['success']) {
                // $('#about-g #request-form').before('<div class="request-success" style=\"color: green; line-height: 30px; font-size: 17px; \">' + json['success'] + '</div>');
                $('.success_modal').click();
            }
            if (json['error']) {
                $('#about-g #request-form').before('<div class="request-error" style=\"color: red; line-height: 30px; font-size: 17px; \">' + json['error'] + '</div>');
            }
          
        }

    });
});
</script>