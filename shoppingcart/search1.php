<?php //require_once('Connections/shoppingcart.php'); ?>
<?php
/*if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}*/

/*mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ser = "SELECT * FROM products WHERE product_name = '".$_POST['filter_product_name']."' ORDER BY product_name ASC";
$ser = mysql_query($query_ser, $shoppingcart) or die(mysql_error());
$row_ser = mysql_fetch_assoc($ser);
$totalRows_ser = mysql_num_rows($ser);*/


//Include the common file
require_once('common.php');


$tpl->display('search1');
																							

//mysql_free_result($ser);
?>
