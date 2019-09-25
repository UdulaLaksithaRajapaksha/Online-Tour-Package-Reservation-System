<?php

//Include the common file
require_once('common.php');
require_once('Connections/shoppingcart.php');
	  $updateSQL ="UPDATE `users` SET couponsts='0' WHERE user_id='".$_SESSION['user_id']."'";
  mysql_select_db($database_shoppingcart, $shoppingcart);
  $Result1 = mysql_query($updateSQL, $shoppingcart) or die(mysql_error());
//Display the template
$tpl->display('checkout_success');
		
?>
