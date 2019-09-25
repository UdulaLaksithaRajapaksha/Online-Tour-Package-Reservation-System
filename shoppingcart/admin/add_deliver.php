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
	
	$validate->required($_POST['dbdetail'], 'Enter a Deliver Boy name.');
	$validate->required($_POST['com_name'], 'Enter a Company name.');
	$validate->required($_POST['mailid'], 'Enter a Mail ID.');
	$validate->required($_POST['mobno'], 'Enter a Mobile No.');
	$validate->required($_POST['prod'], 'Select a product.');
	$validate->required($_POST['addr'], 'Enter a address.');
	
  $insertSQL = sprintf("INSERT INTO deliverboy (dbname, com_name, mailid, mobno, prod, addr) VALUES (%s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['dbdetail'], "text"),
                       GetSQLValueString($_POST['com_name'], "text"),
                       GetSQLValueString($_POST['mailid'], "text"),
                       GetSQLValueString($_POST['mobno'], "text"),
                       GetSQLValueString($_POST['prod'], "text"),
                       GetSQLValueString($_POST['addr'], "text"));

  mysql_select_db($database_shoppingcart, $shoppingcart);
  $Result1 = mysql_query($insertSQL, $shoppingcart) or die(mysql_error());

  $insertGoTo = "add_deliver.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  //header(sprintf("Location: %s", $insertGoTo));
  $tpl->set('success', true);
}


//Display the template
$tpl->display('admin/add_deliver');

?>

