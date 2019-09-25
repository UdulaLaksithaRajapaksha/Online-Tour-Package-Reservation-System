<?php
 require_once('Connections/shoppingcart.php'); 
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

 $timezone = new DateTimeZone("Asia/Colombo" );
    $date = new DateTime();
    $date->setTimezone($timezone );
	$vdate = $date->format( 'd/m/Y' );
    $vtime = $date->format( 'H:i:s A' );
	$vmonth = $date->format( 'M' );
	$vyear = $date->format( 'Y' );
	

mysql_select_db($database_shoppingcart, $shoppingcart);
$query_userinfo = "SELECT * FROM visitor_track where vdate='".$vdate."' and userip='".$_SERVER['REMOTE_ADDR']."' ORDER BY sno DESC";
$userinfo = mysql_query($query_userinfo, $shoppingcart) or die(mysql_error());
$row_userinfo = mysql_fetch_assoc($userinfo);
$totalRows_userinfo = mysql_num_rows($userinfo);


   
	
	if($totalRows_userinfo>0)
	{
	
    $updatesql = "update visitor_track SET  vtime='".$vtime ."' where  vdate='".$vdate."' and  userip='".$_SERVER['REMOTE_ADDR']."'";
    mysql_select_db($database_shoppingcart, $shoppingcart);
    $Result12 = mysql_query($updatesql, $shoppingcart) or die(mysql_error());

	}
	else{
	$insertSQL = sprintf("INSERT INTO visitor_track (userip, vdate, vtime, vmonth, vyear) VALUES (%s, %s, %s, %s, %s)",
                       GetSQLValueString($_SERVER['REMOTE_ADDR'], "text"),
                       GetSQLValueString($vdate, "text"),
                       GetSQLValueString($vtime, "text"),
                       GetSQLValueString($vmonth, "text"),
                       GetSQLValueString($vyear, "text"));

  mysql_select_db($database_shoppingcart, $shoppingcart);
  $Result1 = mysql_query($insertSQL, $shoppingcart) or die(mysql_error());	
	}
?>
