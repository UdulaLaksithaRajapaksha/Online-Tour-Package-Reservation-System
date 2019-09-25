<?php require_once('header' . config_item('template', 'template_extension')); ?>

<script type="text/javascript">
// <![CDATA[
<!-- $(document).ready(function() {

	//qTip
	$('span[title]').qtip({
		style: {
			classes: 'ui-tooltip-shadow ui-tooltip-plain'
		},
		position: {
			my: 'bottom center',
			at: 'top center'
		}
	});
		
	//Check form fields
	$("form#payment_method").validate({
		rules: {
			
			account_number: {
				required: true,
				number: true
			}
		},
		messages: {
			
			account_number: {
				required: "Enter your account number.", 
				number: "Please enter a valid number."
			},
			
		},
		success: function(label) {
			label.html("&nbsp;").addClass("success");
		}
	});
			
});  -->
// ]]>
</script>




	<!-- BEGIN #main -->
	<div id="main" class="container_12">
		
		<!-- BEGIN .grid_12 -->
		<div class="grid_12 title_background">
			<h1>Checkout</h1>
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
		
		<!-- BEGIN .grid_12 -->
		<div class="grid_12">
			
			<?php if (count($cart->get_cart()) > 0): ?>

				<?php foreach ($customer_addresses as $row): ?>

					<table class="table">
						<thead>
							<tr>
								<th>Shipping address</th>
								<th>Payment address</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>					
									<p><?php echo $row['first_name']; ?></p>
									<p><?php echo $row['last_name']; ?></p>
									<p><?php echo $row['company']; ?></p>
									<p><?php echo $row['address']; ?></p>
									<p><?php echo $row['city']; ?></p>
									<p><?php echo $row['post_code']; ?></p>
									<?php foreach ($countries as $value): ?>
										<?php if ($value['country_id'] == $row['country_id']): ?>
											<p><?php echo $value['country_name']; ?></p>
										<?php endif; ?>
									<?php endforeach; ?>
									<p><?php echo $row['zone']; ?></p>
								</td>
								<td>
									<p><?php echo $row['first_name']; ?></p>
									<p><?php echo $row['last_name']; ?></p>
									<p><?php echo $row['company']; ?></p>
									<p><?php echo $row['address']; ?></p>
									<p><?php echo $row['city']; ?></p>
									<p><?php echo $row['post_code']; ?></p>
									<?php foreach ($countries as $value): ?>
										<?php if ($value['country_id'] == $row['country_id']): ?>
											<p><?php echo $value['country_name']; ?></p>
										<?php endif; ?>
									<?php endforeach; ?>
									<p><?php echo $row['zone']; ?></p>								
								</td>
							</tr>
						</tbody>
					</table>
						
				<?php endforeach; ?>

				<form method="post" id= "payment_method" action="">

					<table class="table">
						<thead>
							<tr>
								<th style="width: 100px;">Payment method</th>
								<th style="width: 100px;">&nbsp;</th>
							</tr>
						</thead>
						<tbody>
							
							
							
							<!--<tr>
								<td>
									<p>PayPal</p>
								</td>
								<td>
									<p><input type="radio" name="payment_method" value="PayPal" id="paypal" /></p>
                                    <table width="500" border="0" id="payshow" style="display:none">
  <tr>
    <td>Bank Name</td>
    <td>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
  <tr>
    <td>Card No</td>
    <td><input type="text" name="textfield2" id="textfield2" /></td>
    </tr>
  <tr>
    <td>CVV No</td>
    <td><input type="text" name="textfield3" id="textfield3" /></td>
    </tr> 
</table>
								</td>
							</tr> -->
							
				
							<tr>
								<td>
									<p>Bank transfer</p>
								</td>
								<td>
									<p><input type="radio" name="payment_method" value="Bank transfer" id="addgeo" /></p>
                                    <table width="500" border="0" id="bank" style=" display:none">
  <tr>
    <td>Bank Name <span title="Required field">*</span></td>
    <td>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
  
  <tr>
    <td>Account No <span title="Required field">*</span></td>
    <td><input type="text" name="account_number" id="account_number" name="account_number" value="<?php if (isset($_POST['account_number'])) echo $_POST['account_number']; ?>" /></td>
    </tr>
  
  <tr>
    <td>password <span title="Required field">*</span></td>
    <td><input type="text" name="textfield3" id="textfield3" /></td>
    </tr>
</table>

								</td>
							</tr>
							<tr>
								<td>
									<p>Cash on delivery</p>
								</td>
								<td>
									<p><input type="radio" name="payment_method" value="Cash on delivery" checked="checked" id="homeord" /></p>
								</td>
							</tr>
						</tbody>
					</table>
					
				
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
				
	</div>
					

<div>	

			
	</div>				
					
					
					
					
					
					
					
					
					<h6>Add comment about your order</h6>
					<p><textarea name="comment" rows="8" cols="90"></textarea></p>
						
					<p><button type="submit" name="confirm_order" class="button orange">Confirm order</button></p>
				</form>

			<?php else: ?>

				<div class="alert info">
					<p>Cart empty.</p>
				</div>
			
			<?php endif; ?>
																																		
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
				
	</div>
	<!-- END #main -->

<?php require_once('footer' . config_item('template', 'template_extension')); ?>
