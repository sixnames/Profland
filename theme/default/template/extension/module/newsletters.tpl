<script>
	function regNewsletter()
	{
	    yaCounter47825998.reachGoal('header-podpisatsya');
		var emailpattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var email = $('#txtemail').val();
		if(email != "")
		{
			if(!emailpattern.test(email))
			{
				$("#text-danger-newsletter").remove();
				$("#form-newsletter-error").removeClass("has-error");
				$("#newsletter-email").append('<div class="text-danger" id="text-danger-newsletter"><?php echo $error_news_email_invalid; ?></div>');
				$("#form-newsletter-error").addClass("has-error");

				return false;
			}
			else
			{
				var button = $('button.newsletters_send');
				console.log(button);
				$.ajax({
					url: 'index.php?route=extension/module/newsletters/add',
					type: 'post',
					data: 'email=' + $('#txtemail').val(),
					dataType: 'json',
					async:false,
					beforeSend: function(){
			            $(button).text('Отправка...');
			        },
					success: function(json) {

						if (json.message == true) {
							$('.newsletters_modal').click();
							// alert('<?php echo $error_newsletter_sent; ?>');
							//window.location= "index.php";
						}
						else {
							$("#text-danger-newsletter").remove();
							$("#form-newsletter-error").removeClass("has-error");
							$("#newsletter-email").append(json.message);
							$("#form-newsletter-error").addClass("has-error");
						}
						$(button).text('Подписаться');
					}
				});
				return false;
			}
		}
		else
		{

			$("#text-danger-newsletter").remove();
			$("#form-newsletter-error").removeClass("has-error");
			$("#newsletter-email").append('<div class="text-danger" id="text-danger-newsletter"><?php echo $error_news_email_required; ?></div>');
			$("#form-newsletter-error").addClass("has-error");

			return false;
		}
	}
</script>
	<form action="" method="post" id="hero-form">
		<div class="input-line" id="form-newsletter-error">
			<div id="newsletter-email">
				<input class="text-input" id="txtemail" name="txtemail" value="" type="email" placeholder="Ваш E-mail">
			</div>
		</div>
		<button type="submit" class="green-butn newsletters_send" onclick="return regNewsletter();">Подписаться</button> 
	</form>

	<button class="green-butn modal-trigger newsletters_modal" type="button" data-target="newsletters_modal" style="display:none;">success</button>