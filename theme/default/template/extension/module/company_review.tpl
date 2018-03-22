<section class="testimonials">
	<div class="inner">
		<div class="testimonials-holder">
			<div class="testimonials-list">
				<div class="section-title">
					<h2>Отзывы</h2>
				</div>
				<?php foreach ($reviews as $review) { ?>
				<div class="testimonials-item">
					<div class="testimonials-item-author">
						<?php echo $review['name']; ?> <mark><?php echo $review['company']; ?></mark>
					</div>
					<div class="testimonials-item-content">
						<?php echo $review['text']; ?>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
		<div class="centered-button centered-button--positioned">
			<div class="inner">
				<a class="green-butn" href="<?php echo $href; ?>" style="line-height: 50px;">Все отзывы</a>
			</div>
		</div>
	</div>
</section>
<!--<script type="text/javascript">
$.each($('iframe'), function(index, element) {
	var href = $(element).attr('src');
	var arr = href.split('embed/');
	var code = arr[arr.length-1];

	html = '<div class="video-preview">';
	html += '<div class="video-preview-image">';
	html += '<picture><img src="https://img.youtube.com/vi/' + code + '/hqdefault.jpg" alt=""></picture>';
	html += '<svg class="icon-uniF1FF"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-uniF1FF"></use></svg>';
	html += '</div>';
	html += '<a data-fancybox="" href="' + href + '"></a>';
	html += '</div>';

	$(element).replaceWith(html);
});
</script>-->