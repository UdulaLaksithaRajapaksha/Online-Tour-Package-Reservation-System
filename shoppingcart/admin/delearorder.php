<?php 
require_once('../Connections/shoppingcart.php'); 
session_start();

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


mysql_select_db($database_shoppingcart, $shoppingcart);
$query_user = "SELECT * FROM user_profiles where user_id='".$_SESSION['uid']."'";
$user = mysql_query($query_user, $shoppingcart) or die(mysql_error());
$row_user = mysql_fetch_assoc($user);
$totalRows_user = mysql_num_rows($user);


mysql_select_db($database_shoppingcart, $shoppingcart);
$query_order = "SELECT DISTINCT ordid FROM dealer_orders";
$order = mysql_query($query_order, $shoppingcart) or die(mysql_error());
$row_order = mysql_fetch_assoc($order);
$totalRows_order = mysql_num_rows($order);


if(isset($_POST['hf_id']))
{
	$id=$_REQUEST['hf_id'];
	$qry_del="update dealer_orders SET sts='1' where ordid='$id'";
	$result_del=mysql_query($qry_del, $shoppingcart);
	header(sprintf("Location: delearorder.php"));
}
if(isset($_POST['hf_id1']))
{
	$id=$_REQUEST['hf_id1'];
	
	$qry_del11="update dealer_orders SET sts='2' where ordid='$id'";
	
    $result_del11=mysql_query($qry_del11, $shoppingcart) or die(mysql_error());
  
	header(sprintf("Location: delearorder.php"));

}

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	
<!-- BEGIN head -->	
<head>
	
	<!-- Meta Tags -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
	
	<!-- Title -->
	<title>Shopping Cart</title>

	<!-- Style sheet -->
	<link href="../templates/dealer/css/style.css" rel="stylesheet" type="text/css" />
	<link href="../templates/dealer/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="../templates/dealer/css/text.css" rel="stylesheet" type="text/css" />
	<link href="../templates/dealer/css/960.css" rel="stylesheet" type="text/css" />
	<link href="../templates/dealer/css/table.css" rel="stylesheet" type="text/css" />
	<link href="../templates/dealer/css/tabs.css" rel="stylesheet" type="text/css" />
	<link href="../templates/dealer/css/dialog.css" rel="stylesheet" type="text/css" />
	<link href="../templates/dealer/css/jquery.qtip.min.css" rel="stylesheet" type="text/css" />
	<link href="../templates/dealer/css/jquery.jqplot.min.css" rel="stylesheet" type="text/css" />
    <link href="style/style.css" rel="stylesheet" type="text/css">

	<!-- jQuery -->
	<script type="text/javascript" src="../templates/dealer/js/jquery.min.js"></script>
	<script type="text/javascript" src="../templates/dealer/js/jquery-ui.min.js"></script>
	<!-- jQuery plugins -->
	<script type="text/javascript" src="../templates/dealer/js/jquery.qtip.min.js"></script>
	<script type="text/javascript" src="../templates/dealer/js/jquery.cookie.js"></script>
	<script type="text/javascript" src="../templates/dealer/js/tiny_mce/jquery.tinymce.js"></script>
	<script type="text/javascript" src="../templates/dealer/js/jquery.jqplot.min.js"></script>
	<script type="text/javascript" src="../templates/dealer/js/jqplot.barRenderer.min.js"></script>
	<script type="text/javascript" src="../templates/dealer/js/jqplot.categoryAxisRenderer.min.js"></script>
	<script type="text/javascript" src="../templates/dealer/js/jqplot.pointLabels.min.js"></script>
				
	<!-- Custom js -->
	<script type="text/javascript" src="../templates/dealer/js/custom.js"></script>
        <script language="javascript">
function conf_del(id)
{
	var ret=confirm("Are You Sure To Approve The Order ?");
	if(ret)
	{   
		document.getElementById('hf_id').value=id;
		document.regitstraion_form.submit();
		
	}
	return false;
}
</script>
<script language="javascript">
function conf_del1(id)
{
	var ret=confirm("Are You Sure To Complete The Order ?");
	if(ret)
	{   
		document.getElementById('hf_id1').value=id;
		document.regitstraion_form.submit();
		
	}
	return false;
}
</script>    
	
</head>
<!-- END head -->

<!-- BEGIN body -->
<body>

<!-- BEGIN #wrapper -->
<div id="wrapper">

		<!-- BEGIN #header -->
		<div id="header" class="container_12">
			
			<!-- BEGIN .grid_8 -->						
			<div class="grid_8">
				<a href="index.php"><img src="../templates/dealer/images/logo.png" alt="" /></a>
			</div>
			<!-- END .grid_8 -->
			
			<!-- BEGIN #user_menu -->
			<div id="user_menu" class="grid_4">
				<ul>
					<li><span><strong>Welcome: <?php echo $row_user['first_name'] ?></strong></span></li>					
					<li><a href="index.php"><img src="../templates/dealer/images/user.png" alt="" title="Profile" /></a></li>
					<li><a href="../index.php?logout"><img src="../templates/dealer/images/logout.png" alt="" title="Logout" /></a></li>
				</ul>
			</div>
			<!-- END #user_menu -->
			
			<div class="clear">&nbsp;</div>
			
			<div class="grid_12 line">&nbsp;</div>
			
			<div class="clear">&nbsp;</div>
			
			<!-- BEGIN #main_menu -->
			<div id="main_menu" class="grid_9">
				<ul>
                <li><a href="index.php">Dashboard</a></li>
					<li><a href="categories.php">Categories</a></li>				
                    <li><a href="products.php">Products</a></li>
                    <li><a href="dealer.php" class="current">Dealer Products</a></li>
                    <li><a href="customers.php">Customers</a></li>
                    <li><a href="orders.php">Orders</a></li>
                    <li><a href="coupons.php">Coupons</a></li>
                    <li><a href="settings.php">Settings</a></li>
				</ul>
			</div>
			<!-- END #main_menu -->
					
			<div class="clear">&nbsp;</div>
							
		</div>
		<!-- END #header -->
        
<div id="main" class="container_12">
							
		<!-- BEGIN .grid_12 -->
		<div class="grid_12">

			<!-- BEGIN .title_background -->
			<div class="title_background grid_11 alpha omega">
				<h1>Delear Orders</h1>
			</div>
			<!-- END .title_background -->
<div class="float_right" style="margin-top:5px">
                <a href="dealer.php" class="button orange">Back</a>
			</div>
		
			<div class="clear">&nbsp;</div>
	 <form name="regitstraion_form"  method="POST" id="regitstraion_form">
                    <input type="hidden" name="hf_id" id="hf_id" value="" />
                    <input type="hidden" name="hf_id1" id="hf_id1" />
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>Order ID</th>
                                <th>Delear Name</th>
								<th>Date Of Purchase</th>
								<th>Payment Type</th>
                                <th>Status</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
								<?php $i=1;do{
									
mysql_select_db($database_shoppingcart, $shoppingcart);
$query_orderde = "SELECT * FROM dealer_orders where ordid='".$row_order['ordid']."'";
$orderde = mysql_query($query_orderde, $shoppingcart) or die(mysql_error());
$row_orderde = mysql_fetch_assoc($orderde);
$totalRows_orderde = mysql_num_rows($orderde);

mysql_select_db($database_shoppingcart, $shoppingcart);
$query_userinfo = "SELECT * FROM user_profiles where user_id='".$row_orderde['customerid']."'";
$userinfo = mysql_query($query_userinfo, $shoppingcart) or die(mysql_error());
$row_userinfo = mysql_fetch_assoc($userinfo);
$totalRows_userinfo = mysql_num_rows($userinfo);
									
									?>
								<tr style="font-weight:bold">
									<td><?php echo $i;?>)</td>
									<td><?php echo $row_orderde['ordid'];?></td>
                                    <td><?php echo $row_userinfo['first_name'];?></td>
									<td><?php echo $row_orderde['date'];?></td>
									<td><?php echo $row_orderde['paytype'];?></td>
                                    <td><?php if($row_orderde['sts']==0)
									{
										echo "Order Waiting";
									}
									else if($row_orderde['sts']==1)
									{
										echo "On Progress";
									}
									else if($row_orderde['sts']==2)
									{
										echo "Completed";
									}
									?></td>
									<td>
                                    <?php if($row_orderde['sts']==0)
									{ ?>
                                    <a href="javascript:void(0);" onClick="conf_del('<?php echo $row_orderde['ordid']; ?>')"><img src="accepted_48.png" width="25px" height="25px" /></a>
                                    <?php } else if($row_orderde['sts']==1)
									{ ?>
                                    <a href="" onclick="return conf_del1('<?php echo $row_orderde['ordid']; ?>')" ><img src="complete.png" width="25px" height="25px" /></a>
                                    <?php } else if($row_orderde['sts']==2)
									{ ?>
                                    <a href="" onclick="return conf_del1('<?php echo $row_orderde['ordid']; ?>')" ><img src="deliv.png" width="25px" height="25px" /></a>
                                    <?php }?>
                                    </td>
								</tr>
							<?php $i++;}while($row_order = mysql_fetch_assoc($order));?>
						</tbody>
					</table>
                    </form>
					<div class="clear">&nbsp;</div>
                   &nbsp;
				<div class="alert info">
				</div>
		</div>
		<div class="clear">&nbsp;</div>
	</div>
    </div>
<div class="container_12">
	<div id="footer" class="grid_12 text_center">
		<p>Copyright &copy; 2014 Latest Gadgets - All Rights Reserved</p>
	</div>
	<div class="clear">&nbsp;</div>
</div>
</body>
</html>



