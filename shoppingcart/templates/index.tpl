<?php require_once('header' . config_item('template', 'template_extension')); 

?>

<div class="container_16">
<div class="grid_6">
<div class="sliderinner">
<a href="javascript:;" class="slideprev">Previous</a>
<a href="javascript:;" class="slidenext">Next</a>

<ul>
<?php foreach ($products as $row): ?>
<li>
<div class="leftpart">
<a href="product_details.php?product_id=<?php echo $row['product_id']; ?>">
							<?php if (is_null($row['product_thumbnail'])): ?>
								<img src="<?php echo config_item('cart', 'site_url'); ?>uploads/images/no_image.png" alt="" width="401" height="378"/>
							<?php else: ?>
								<img src="<?php echo config_item('cart', 'site_url'); ?>uploads/images/<?php echo $row['product_image']; ?>" alt="" width="401" height="378"/>
							<?php endif; ?>
						</a>
</div>
<div class="rightpart">
<div class="discount">
<span class="old">&nbsp;</span>
<span class="new"><?php echo price($row['product_price']); ?></span>
</div>
<h1><?php echo $row['product_name']; ?></h1>
<div class="pdesc"><?php echo $row['product_description']; ?></div>
<a href="product_details.php?product_id=<?php echo $row['product_id']; ?>" class="padd">Add to cart</a>
</div>
</li>
<?php endforeach; ?>
</ul>







</div>

</div>
</div>

	<!-- BEGIN #main -->
	<div id="main" class="container_12">

		
		<div class="clear">&nbsp;</div>
		
		<!-- BEGIN .grid_12 -->	
		<div class="grid_12 title_background">
			<h1>Latest Package</h1>
		</div>
		<!-- END .grid_12 -->
			
		<div class="clear">&nbsp;</div>

		<?php foreach ($products as $row): ?>
		
        <div class="grid_3">
				
				<div class="box text_center">
					
					<span class="thumbnail">
						<a href="product_details.php?product_id=<?php echo $row['product_id']; ?>">
							<?php if (is_null($row['product_thumbnail'])): ?>
								<img src="<?php echo config_item('cart', 'site_url'); ?>uploads/images/no_image.png" alt="" />
							<?php else: ?>
								<img src="<?php echo config_item('cart', 'site_url'); ?>uploads/images/<?php echo $row['product_thumbnail']; ?>" alt="" />
							<?php endif; ?>
						</a>
					</span>
					
					<span class="price">
						<?php echo price($row['product_price']); ?>
					</span>
					
					<span class="title"><?php echo $row['product_name']; ?></span>
									
					<div class="line"></div>
					
					<p>
						<a href="product_details.php?product_id=<?php echo $row['product_id']; ?>" class="button orange">Read more</a>
					</p>

				</div>
				
			</div>
			
		
		<?php endforeach; ?>
		
		<div class="clear">&nbsp;</div>
		
	</div>
	<!-- END #main -->
			
<?php require_once('footer' . config_item('template', 'template_extension')); ?>
