<?php require_once('header' . config_item('template', 'template_extension')); ?>

	<!-- BEGIN #main -->
	<div id="main" class="container_12">
		
		<!-- BEGIN .grid_12 -->
		<div class="grid_12 title_background">
			<h1>My order history</h1>
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
						
		<!-- BEGIN .grid_12 -->
		<div class="grid_12">

			<?php if ($row_count > 0): ?>
			
				<table class="table">
					<thead>
						<tr>
							<th>Order id</th>
							<th>Date added</th>
							<th>Customer</th>
							<th>Status</th>
							<th>Total</th>
							<th>Payment Company</th>
							<th>Action</th>
							<th>&nbsp;</th>
						</tr>
					</thead>
					<tbody>
					
				
				<?php foreach ($orders as $row): ?>

					<tr>
						<td># <?php echo $row['order_id']; ?></td>
						<td><?php echo date('d/m/Y', $row['date_added']); ?></td>
						<td><?php echo $row['first_name']; ?> <?php echo $row['last_name']; ?></td>
						<td><?php echo $row['status_name']; ?></td>
						<td><?php echo price($row['total'], $row['currency']); ?></td>
						
						<td><?php echo $row['payment_company']; ?></td>
						
						<td><a href="order_details.php?order_id=<?php echo $row['order_id']; ?>"><img src="<?php echo config_item('template', 'site_url'); ?>templates/images/details.png" alt="" /></a></td>
						<td></td>
					</tr>
					
				<?php endforeach; ?>
				
					</tbody>
				</table>

			<?php else: ?>

				<div class="alert info">
					<p>You have not made any previous orders.</p>
				</div>
									
			<?php endif; ?>
																		
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
				
	</div>
	<!-- END #main -->

<?php require_once('footer' . config_item('template', 'template_extension')); ?>
