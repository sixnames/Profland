     <div class="modal" tabindex="-1" id="footer_collback_modal">
        <div class="modal-row">
            <div class="modal-cell">
                <div class="form-modal-frame">
                    <div class="section-title">
                        <span>Обратный звонок</span>
                    </div>
    
                    <div id="request-form">
                        <div class="input-line">
                            <input class="text-input" name="name" type="text" placeholder="Ваше Имя"/>
                        </div>
                        <div class="input-line">
                            <input class="text-input" name="phone" type="tel" placeholder="Телефон"/>
                        </div>
                        <input type="hidden" name="page_url" value="" />
                        <button class="green-butn" type="button">Отправить</button>
                    </div>
                    
                    <div class="modal-close-small">
                        <svg class="icon-uniF14F"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF14F"></use></svg>
                    </div>
                </div>
                <div class="modal-close-wide"></div>
            </div>
        </div>
    </div>
<script type="text/javascript">
var url = document.location.href;
$('#footer_collback_modal #request-form input[name=\"page_url\"]').val(url);
$('#footer_collback_modal #request-form button').on('click', function() {
    var button = $(this);
    yaCounter47825998.reachGoal('footer-obratniy-zvonok'); 
    $.ajax({
        url: 'index.php?route=common/modal/send_callback',
        type: 'post',
        data: $('#footer_collback_modal #request-form input, #footer_collback_modal #request-form textarea'),
        dataType: 'json',
        beforeSend: function(){
            $(button).text('Отправка...');
        },
        success: function(json) {
            $('#footer_collback_modal #request-form').parent().find('.request-success').remove();
            $('#footer_collback_modal #request-form').parent().find('.request-error').remove();
            if (json['success']) {
                // $('#footer_collback_modal #request-form').before('<div class="request-success" style=\"color: green; line-height: 30px; font-size: 17px; \">' + json['success'] + '</div>');
                $('.success_modal').click();
            }
            if (json['error']) {
                $('#footer_collback_modal #request-form').before('<div class="request-error" style=\"color: red; line-height: 30px; font-size: 17px; \">' + json['error'] + '</div>');
            console.log('test3');
			}
            $(button).text('Отправить');
          
        }

    });
});
</script>