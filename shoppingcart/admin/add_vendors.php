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
	
	
	$image=$_FILES['image']['name'];
	$image_name=$_POST['productid'];
  	$newname="../product_image/".$image_name.$image;
  	move_uploaded_file( $_FILES["image"]["tmp_name"],$newname);
	
	
  $insertSQL = sprintf("INSERT INTO vendors (productid, productname, image, quality, price, dateofpurchase, vendorname, address, phone, email) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['productid'], "text"),
                       GetSQLValueString($_POST['productname'], "text"),
                       GetSQLValueString($newname, "text"),
                       GetSQLValueString($_POST['quantity'], "text"),
                       GetSQLValueString($_POST['price'], "text"),
                       GetSQLValueString($_POST['dop'], "text"),
                       GetSQLValueString($_POST['vname'], "text"),
                       GetSQLValueString($_POST['address'], "text"),
                       GetSQLValueString($_POST['telephone'], "text"),
                       GetSQLValueString($_POST['email'], "text"));

  mysql_select_db($database_shoppingcart, $shoppingcart);
  $Result1 = mysql_query($insertSQL, $shoppingcart) or die(mysql_error());

  $insertGoTo = "add_vendors.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}


//Display the template
$tpl->display('admin/add_vendors');

?>
