<?php

//Include the common file
require_once('common.php');

//Check if the user is logged in
if (!$authentication->logged_in() || !$authentication->is_group('customer')) header("Location: login.php");

//Check if the form has been submitted
if (isset($_POST['confirm_order']))
	$cart->checkout($session->get('user_id'), $session->get('user_email'), $_POST['payment_method'], $_POST['comment']);

//Customer addresses
foreach ($db->query("SELECT * FROM " . config_item('cart', 'table_addresses') . " WHERE user_id = '" . $session->get('user_id') . "'") as $row)
	$customer_addresses[] = $row;

//Countries
foreach ($db->query("SELECT * FROM " . config_item('cart', 'table_countries') . "") as $row)
	$countries[] = $row;
		
//Template values 
$tpl->set('customer_addresses', $customer_addresses);
$tpl->set('countries', $countries);


$tpl->set('total', $cart->total());




//Display the template
$tpl->display('checkout');
			
?>
<script type="text/javascript">
$('#addgeo').click(function () {
	  if ($('#bank').is(':hidden')) {
		   $('#bank').show("slow");
		   $('#payshow').hide("slow");
	  }	});
</script>

<script type="text/javascript">
$('#paypal').click(function () {  
	  if ($('#payshow').is(':hidden')) {
		   $('#payshow').show("slow");
		   $('#bank').hide("slow");
	  }	});
</script>

<script type="text/javascript">
$('#homeord').click(function () {  
		   $('#payshow').hide("slow");
		   $('#bank').hide("slow");
	  });
</script>
