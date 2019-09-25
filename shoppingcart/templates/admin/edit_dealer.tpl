<script type="text/javascript" src="jquery.min.js"></script>
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


mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ven = "SELECT * FROM products";
$ven = mysql_query($query_ven, $shoppingcart) or die(mysql_error());
$row_ven = mysql_fetch_assoc($ven);
$totalRows_ven = mysql_num_rows($ven);

$query_ven1 = "SELECT * FROM dealer_products where package_id='".$_GET['package_id']."'";
$ven1 = mysql_query($query_ven1, $shoppingcart) or die(mysql_error());
$row_ven1 = mysql_fetch_assoc($ven1);
$totalRows_ven1 = mysql_num_rows($ven1);
?>


<?php  $random = substr(md5(rand()),0,7); ?>

<style type="text/css">
    div.sch_cal_column{
    float: left;
    width: 115px;
    height: 450px;
}

div.sch_cal_row{
    margin-top: 5px;
    margin-left: 10px;
    width: 100px;
    border: solid 2px #A8A69C;
    border-radius: 3px;
    height: 46px;
    background-color: #E0FBD9;
}

div.sch_cal_time {
    width: 75px;
    float: left;
    height: 46px;
    border-right: solid 1px #A8A69C;
}

div.highlight {
    width: 100px;
    height: 46px;
    background:#88E091;
	color:#FF0000;
}

div.available {
    width: 100px;
    height: 46px;
    background-color: #A8A69C;
}
  </style>
  
  
  <script type="text/javascript">//<![CDATA[ 
$(window).load(function(){
$("input:checkbox").click(function() {
    var actualTime = "";
    $(this).parent().toggleClass("highlight");
	
});
});//]]>  

</script>

	<!-- BEGIN #main -->
	<div id="main" class="container_12">
							
		<!-- BEGIN .grid_12 -->
		<div class="grid_12">

			<!-- BEGIN .title_background -->
			<div class="title_background">
				<h1>Edit Package</h1>
			</div>
			<!-- END .title_background -->
			
			<div class="clear">&nbsp;</div>
			
			<?php if ($error->has_errors()): ?>
				
				<div class="alert error">
					<span>
						<strong>An error occurred while processing request</strong>
					</span>
					<?php foreach ($error->display_errors() as $value): ?>		
						<p><?php echo $value; ?></p>
					<?php endforeach; ?>
				</div>

			<?php $error->clear_errors(); endif; ?>

			<?php if (isset($success)): ?>
				<div class="alert success">
					<p>
						<span>Vendors added successfully!</span>
					</p>
				</div>
			<?php endif; ?>

			<?php if (isset($failed)): ?>
				<div class="alert error">
					<p>
						<span>This email address is already taken!</span>
					</p>
				</div>
			<?php endif; ?>
			
           
			<form action="./add_dealer.php" method="POST" name="add_ven" enctype="multipart/form-data">
									
				<p>
					
					<input type="hidden" name="productid" size="50" value="<?php echo $row_ven1['package_id'] ?>" />
				</p>
									
				<p>
					<label>Package Name: <span title="Required field">*</span></label>
					<input type="text" name="productname" size="50" value="<?php echo $row_ven1['package_name'] ?>" />
				</p>
									
				<p>
					<label>Package Image: <span title="Required field">*</span></label>
					<input type="file" name="image" size="50" value="<?php echo $row_ven1['package_id'] ?>" />
				</p>
									
				<p>
					<label>Quantity: <span title="Required field">*</span></label>
					<input type="text" name="quantity" size="50" value="<?php echo $row_ven1['qty'] ?>"  />
				</p>
				
				<p>
					<label>Price: <span title="Required field">*</span></label>
					<input type="text" name="price" size="50" value="<?php echo $row_ven1['price'] ?>"  />
				</p>

                <div style="float:left;">
               
                <h3>Select Products</h3>
               <?php 
$i=1; do { 
$query_ven11 = "SELECT * FROM dealer_products where package_id='".$_GET['package_id']."' AND product_name='".$row_ven['product_name']."'";
$ven11 = mysql_query($query_ven11, $shoppingcart) or die(mysql_error());
$row_ven11 = mysql_fetch_assoc($ven11);
$totalRows_ven11 = mysql_num_rows($ven11);
$chek="";
if($totalRows_ven11!=0){
$chek = "checked='checked'";
$cls = "#88E091";
}else{
$chek="";
$cls = "";
}

?>
               
                  <div style="width:22%; height:auto; border:1px solid #ccc; float:left; margin:0 1% 0 1%; margin-bottom:2%; background:<?php echo $cls; ?>">
					<br />
                   <div style="text-align:center; font-size:12px; font-weight:bold;"><img src="../uploads/images/<?php echo $row_ven['product_thumbnail'] ?>" /> </div>
                   <div style="text-align:center; font-size:13px; font-weight:bold;"><?php echo $row_ven['product_name'] ?> </div>
                   
                   <div style="width:auto; margin-left:2%;" class="button orange">Stock: <?php echo $row_ven['product_quantity'] ?></div>
                   <div style="width:auto; margin:0px auto;" class="button orange">Price: <?php echo $row_ven['product_price'] ?>
                   </div>
                   <input type="hidden" name="pname<?php echo $i; ?>"  value="<?php echo $row_ven['product_name'] ?>"  />    
                         
                  <input class="ctime" name="product<?php echo $i; ?>" type="checkbox" <?php echo $chek; ?> value="<?php echo $row_ven['product_name'] ?>" />
                  <br /> <br />
                   </div>   
                                 
                    <?php $i++; } while($row_ven = mysql_fetch_assoc($ven)) ?>
                    
				</div>
				
												
				<p>
                
					<button type="submit" name="submit" class="button orange">Update Package</button>
				</p>
				<input type="hidden" name="MM_insert" value="add_ven" />
            </form>
									
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
		
	</div>
	<!-- END #main -->

<?php require_once('footer' . config_item('template', 'template_extension')); ?>
