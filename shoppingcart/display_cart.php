<?php if (__FILE__ == $_SERVER['SCRIPT_FILENAME']) exit('No direct access allowed.'); ?>
				
<?php if (count($cart->get_cart()) > 0): ?>

	<?php
	
		$quantity = 0;
		
		foreach ($cart->get_cart() as $value)
			$quantity += $value['product_quantity'];
			
	?>
	
	<p>(<?php echo $quantity; ?> / <?php echo price($cart->total()); ?>)</p>
			
<?php else: ?>

	<p>(- / -)</p>

<?php endif; ?>
