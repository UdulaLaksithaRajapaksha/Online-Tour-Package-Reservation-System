<?php require_once('../Connections/shoppingcart.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
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
}

$colname_ven = "-1";
if (isset($_GET['user_id'])) {
  $colname_ven = $_GET['user_id'];
}
mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ven = sprintf("SELECT * FROM dealer_products WHERE sno = %s ORDER BY sno ASC", GetSQLValueString($colname_ven, "int"));
$ven = mysql_query($query_ven, $shoppingcart) or die(mysql_error());
$row_ven = mysql_fetch_assoc($ven);
$totalRows_ven = mysql_num_rows($ven);


//Include the common file
require('../common.php');


//Display the template
$tpl->display('admin/edit_dealer');


mysql_free_result($ven);
?>
