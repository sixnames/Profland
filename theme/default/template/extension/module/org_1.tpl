<section class="customers scroll-section" id="about-e">
	<div class="inner">
		<?php if($heading_title) { ?>
		<div class="section-title">
			<h2><?php echo $heading_title; ?></h2>
		</div>
		<?php } ?>
		<p><?php echo $description_top; ?></p>
		<?php if ($elements) { ?>
		<div class="customers-list">
			<?php foreach ($elements as $element) { ?>
			<div class="customers-item">
				<picture>
					<img src="<?php echo $element['icon']; ?>" alt="<?php echo $element['name']; ?>">
				</picture>
			</div>
			<?php } ?>
		</div>
		<?php } ?>
		<p><?php echo $description_bottom; ?></p>
		<?php if ($all_elements) { ?>
		<div class="all-link">И еще <span><?php echo $all_elements; ?> </span><a href="<?php echo $elements_page; ?>"> Посмотреть всех</a></div>
		<?php } ?>
	</div>
</section>