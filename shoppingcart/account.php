<?php

//Include the common file
require_once('common.php');

//Check if the user is logged in
if (!$authentication->logged_in() || !$authentication->is_group('customer')) header("Location: login.php");

require_once('Connections/shoppingcart.php');

$msg=0;
$mm=date("m");
$yy=date("Y");
mysql_select_db($database_shoppingcart, $shoppingcart);
$query_valchk ="SELECT * FROM orders WHERE user_id ='".$_SESSION['user_id']."' and ormonth='".$mm."' and oryear='".$yy."' ORDER BY date_added DESC";
$valchk = mysql_query($query_valchk, $shoppingcart) or die(mysql_error());
$row_valchk = mysql_fetch_assoc($valchk);
$totalRows_valchk = mysql_num_rows($valchk);

mysql_select_db($database_shoppingcart, $shoppingcart);
$query_valcup ="SELECT * FROM coupons WHERE coupon_status='1' ORDER BY coupon_id DESC";
$valcup = mysql_query($query_valcup, $shoppingcart) or die(mysql_error());
$row_valcup = mysql_fetch_assoc($valcup);
$totalRows_valcup = mysql_num_rows($valcup);


if($totalRows_valchk == 5 && $totalRows_valchk <=6)
{
setcookie("msg",'1',time()+(100*24));
setcookie("cupon",$row_valcup['coupon_code'],time()+(100*24));
setcookie("edate",$row_valcup['date_end'],time()+(100*24));

$updateSQL ="UPDATE `users` SET couponsts='1' WHERE user_id='".$_SESSION['user_id']."'";
mysql_select_db($database_shoppingcart, $shoppingcart);
$Result1 = mysql_query($updateSQL, $shoppingcart) or die(mysql_error());
  
}
else if($totalRows_valchk >= 6)
{   
    //echo "entered";
	setcookie("msg",'0',time()+(100*24));
}
else
{   
	setcookie("msg",'0',time()+(100*24));
}

//Display the template
$tpl->display('account');
			
?>
