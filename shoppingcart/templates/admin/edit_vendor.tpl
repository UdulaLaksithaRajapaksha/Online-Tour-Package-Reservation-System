<?php require_once('header' . config_item('template', 'template_extension')); ?>
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

$colname_ven = "-1";
if (isset($_GET['user_id'])) {
  $colname_ven = $_GET['user_id'];
}
mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ven = sprintf("SELECT * FROM vendors WHERE sno = %s ORDER BY sno ASC", GetSQLValueString($colname_ven, "int"));
$ven = mysql_query($query_ven, $shoppingcart) or die(mysql_error());
$row_ven = mysql_fetch_assoc($ven);
$totalRows_ven = mysql_num_rows($ven);
?>
<style>
.staff_detils_edit{
	font-family:Helvetica, sans-serif;
	font-size:12px;
	font-weight:bold;
	color:#333;
	text-decoration:none;
	float:right;
	margin-right:20px;
	margin-top:14px;
	text-shadow: 1px 1px 0px #fff;

}
.staff_detils_edit a{
	color:#333;
	text-decoration:none;
}

.staff_detils_edit a:hover{
	color:#333;
	text-decoration:underline;
}

.staff_detils_infom_text_left{
	font-family:Helvetica, sans-serif;
	font-size:12px;
	font-weight:bold;
	color:#08488a;
	text-decoration:none;
	text-transform:uppercase;
	padding-bottom:12px;
}
.staff_detils_infom_text_right{
	font-family:Helvetica, sans-serif;
	font-size:12px;
	font-weight:bold;
	color:#333;
	text-decoration:none;
	padding-bottom:12px;
	line-height:16px;
}
</style>
	<!-- BEGIN #main -->
	<div id="main" class="container_12">
							
		<!-- BEGIN .grid_12 -->
		<div class="grid_12">

			<!-- BEGIN .title_background -->
			<div class="title_background">
				<h1>View Vendor Details</h1>
			</div>
			<!-- END .title_background -->
			
			<div class="clear">&nbsp;</div>
			
			
				
				<div class="alert error">
					<span>
					</span>
					
				</div>

			
			
			<form action="#" method="post">
            
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr class="staff_detils_infom_text_left">
    <td width="11%">&nbsp;</td>
    <td width="15%">&nbsp;</td>
    <td width="1%">&nbsp;</td>
    <td width="33%">&nbsp;</td>
    <td width="5%">&nbsp;</td>
    <td width="35%" rowspan="6"><img src="<?php echo $row_ven['image'];?>" width="100" height="100" /> </td>
  </tr>
  <tr>
    <td class="staff_detils_infom_text_left">&nbsp;</td>
    <td class="staff_detils_infom_text_left">VENDOR NAME</td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left"> <blink><?php echo $row_ven['vendorname'];?> </blink></td>
    <td>&nbsp; </td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td class="staff_detils_infom_text_left">&nbsp;</td>
    <td class="staff_detils_infom_text_left">Product Name</td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left">  <blink><?php echo $row_ven['productname'];?> </blink></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
</table>
            
            
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="32%">&nbsp;</td>
    <td width="20%">&nbsp;</td>
    <td width="2%">&nbsp;</td>
    <td width="46%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td style="font-size:24px; font-weight:bold; color:#900">Details</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="staff_detils_infom_text_left">Product ID</td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left"><?php echo $row_ven['productid'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="staff_detils_infom_text_left">Product Name </td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left"><?php echo $row_ven['productname'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="staff_detils_infom_text_left">Quanity</td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left"><?php echo $row_ven['quality'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="staff_detils_infom_text_left">Price</td>
    <td class="staff_detils_infom_text_left" >:</td>
    <td class="staff_detils_infom_text_left"><?php echo $row_ven['price'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="staff_detils_infom_text_left">Date Of Purchase</td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left"><?php echo $row_ven['dateofpurchase'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="staff_detils_infom_text_left">Vendor Address</td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left"><?php echo $row_ven['address'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="staff_detils_infom_text_left">Phone No</td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left"><?php echo $row_ven['phone'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="staff_detils_infom_text_left">Email ID</td>
    <td class="staff_detils_infom_text_left">:</td>
    <td class="staff_detils_infom_text_left"><?php echo $row_ven['email'];?></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
              </table>
		
		  </form>
								
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
		
	</div>
	<!-- END #main -->

<?php require_once('footer' . config_item('template', 'template_extension')); ?>
