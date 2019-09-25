<?php require_once('header' . config_item('template', 'template_extension')); ?>
<?php 
require_once('Connections/shoppingcart.php'); 

mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ven = "SELECT * FROM products ORDER BY  	product_name ASC";
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
				<h1>Add Deliver Details</h1>
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
						<span>Deliver Details added successfully!</span>
					</p>
				</div>
			<?php endif; ?>
			
			<form action="#" method="post">
									
				<p>
					<label>Deliver Boy name: <span title="Required field">*</span></label>
					<input type="text" name="dbdetail" size="50" value="" />
				</p>
				<p>
					<label>Company: <span title="Required field">*</span></label>
					<input type="text" name="com_name" size="50" value="" />
				</p>
					<p>
					<label>MailId: <span title="Required field">*</span></label>
					<input type="text" name="mailid" size="50" value="" />
				</p>
                <p>
					<label>Mobile No: <span title="Required field">*</span></label>
					<input type="text" name="mobno" size="50" value="" />
				</p>
                
				<p>
					<label>Product: <span title="Required field">*</span></label>
					<select name="prod">
                    <?php do{?>
							<option value="<?php echo $row_ven['product_name'];?>"><?php echo $row_ven['product_name'];?></option>
                    <?php }while($row_ven = mysql_fetch_assoc($ven));?>
					</select>
				</p>
  <p>
					<label>Address: <span title="Required field">*</span></label>
                    <textarea  name="addr"></textarea>
				</p>
				<p>
					<button type="submit" name="submit" class="button orange">Save</button>
				</p>
                          <input type="hidden" name="MM_insert"  value="add_ven" />  		
			</form>
									
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
		
	</div>
	<!-- END #main -->

<?php require_once('footer' . config_item('template', 'template_extension')); ?>
