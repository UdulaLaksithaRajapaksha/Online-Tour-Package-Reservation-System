

<?php require_once('header' . config_item('template', 'template_extension')); ?>
<?php require_once('Connections/shoppingcart.php'); ?>
<?php
  mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ven = "SELECT * FROM dealer_products ORDER BY sno DESC";
$ven = mysql_query($query_ven, $shoppingcart) or die(mysql_error());
$row_ven = mysql_fetch_assoc($ven);
$totalRows_ven = mysql_num_rows($ven);
 ?>

	<!-- BEGIN #main -->
	<div id="main" class="container_12">
							
		<!-- BEGIN .grid_12 -->
		<div class="grid_12">

			<!-- BEGIN .title_background -->
			<div class="title_background">
				<h1>Add New Vendors</h1>
			</div>
			<!-- END .title_background -->
			
			<div class="clear">&nbsp;</div>
			
			<?php if ($error->has_errors()): ?>
				
				<div class="alert error">
					<span>
						<strong>An error occurred while processing request</strong>
					</span>
					<?php foreach ($error->display_errors() as $value): ?>		
						<p><?php echo $value; ?></p>
					<?php endforeach; ?>
				</div>

			<?php $error->clear_errors(); endif; ?>

			<?php if (isset($success)): ?>
				<div class="alert success">
					<p>
						<span>Vendors added successfully!</span>
					</p>
				</div>
			<?php endif; ?>

			<?php if (isset($failed)): ?>
				<div class="alert error">
					<p>
						<span>This email address is already taken!</span>
					</p>
				</div>
			<?php endif; ?>
			
			<form action="./add_vendors.php" method="POST" name="add_ven" enctype="multipart/form-data">
									
				<p>
					<label>Product ID: <span title="Required field">*</span></label>
					<input type="text" name="productid" size="50"  />
				</p>
									
				<p>
					<label>Product Name: <span title="Required field">*</span></label>
					<input type="text" name="productname" size="50" />
				</p>
									
				<p>
					<label>Product Image: <span title="Required field">*</span></label>
					<input type="file" name="image" size="50" />
				</p>
									
				<p>
					<label>Quantity: <span title="Required field">*</span></label>
					<input type="text" name="quantity" size="50"  />
				</p>
				
				<p>
					<label>Price: <span title="Required field">*</span></label>
					<input type="text" name="price" size="50"  />
				</p>

				
                <p>
					<label>Date Of Purchase: <span title="Required field">*</span></label>
					<input type="text" name="dop" size="50" />
				</p>
				
				<h6>Personal Details</h6>

				<p>
					<label>Vendors Name:</label>
					<input type="text" name="vname" size="50"  />
				</p>

				<p>
					<label>Address: <span title="Required field">*</span></label>
					<input type="text" name="address" size="50"  />
				</p>

				<p>
					<label>Phone: <span title="Required field">*</span></label>
					<input type="text" name="telephone" size="50" />
				</p>

				<p>
					<label>Email ID: <span title="Required field">*</span></label>
					<input type="text" name="email" size="50" />
				</p>										
				
															
				<p>
					<button type="submit" name="submit" class="button orange">Save</button>
				</p>
				<input type="hidden" name="MM_insert" value="add_ven" />
            </form>
									
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
		
	</div>
	<!-- END #main -->

<?php require_once('footer' . config_item('template', 'template_extension')); ?>
