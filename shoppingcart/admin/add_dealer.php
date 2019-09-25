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


//Include the common file
require('../common.php');

//Check if the user is logged in
if (!$authentication->logged_in() || !$authentication->is_admin()) header("Location: login.php");


	
//Check if the form has been submitted
$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "add_ven")) {	
	
	$qry_del="delete from dealer_products where package_id='".$_POST['productid']."'";
	echo $qry_del;
	$result_del=mysql_query($qry_del, $shoppingcart);
	header(sprintf("Location: dealer.php"));
	
	
	$image=$_FILES['image']['name'];
	$image_name=$_POST['productid'];
  	$newname="../product_image/".$image_name.$image;
  	move_uploaded_file( $_FILES["image"]["tmp_name"],$newname);	
	mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ven = "SELECT * FROM products";
$ven = mysql_query($query_ven, $shoppingcart) or die(mysql_error());
$row_ven = mysql_fetch_assoc($ven);
$totalRows_ven = mysql_num_rows($ven);
for($k=1;$k<=$totalRows_ven;$k++){
if($_POST['product'.$k]!=""){
  $insertSQL = sprintf("INSERT INTO dealer_products (package_id, package_name, qty, price, product_id, product_name, img) VALUES (%s, %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['productid'], "text"),
                       GetSQLValueString($_POST['productname'], "text"),                       
                       GetSQLValueString($_POST['quantity'], "text"),
                       GetSQLValueString($_POST['price'], "text"),
					   GetSQLValueString($_POST['packid'.$k], "text"),
					   GetSQLValueString($_POST['pname'.$k], "text"),
					   GetSQLValueString($newname, "text")
                      );

  mysql_select_db($database_shoppingcart, $shoppingcart);
  $Result1 = mysql_query($insertSQL, $shoppingcart) or die(mysql_error());
}
}
  $insertGoTo = "dealer.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}

mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ven = "SELECT * FROM vendors ORDER BY sno DESC";
$ven = mysql_query($query_ven, $shoppingcart) or die(mysql_error());
$row_ven = mysql_fetch_assoc($ven);
$totalRows_ven = mysql_num_rows($ven);


//Display the template
$tpl->display('admin/add_dealer');

?>
