<?php require_once('header' . config_item('template', 'template_extension')); ?>
<?php require_once('Connections/shoppingcart.php'); ?>
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

mysql_select_db($database_shoppingcart, $shoppingcart);
$query_ser = "SELECT * FROM products WHERE product_name = '".$_POST['filter_product_name']."' ORDER BY product_name ASC";
$ser = mysql_query($query_ser, $shoppingcart) or die(mysql_error());
$row_ser = mysql_fetch_assoc($ser);
$totalRows_ser = mysql_num_rows($ser);


?>
	<!-- BEGIN #main -->
	<div id="main" class="container_12">
				
		<!-- BEGIN .grid_12 -->
		<div class="grid_12 title_background">
			<h1>Results</h1>
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>

		<?php if (isset($_POST['filter']) && !empty($_POST['filter_product_name'])): ?>
		
			<?php if($totalRows_ser !=0){ ?>
				<div class="grid_3">
					
					<div class="box text_center">
						
						<span class="thumbnail">
							<a href="product_details.php?product_id=<?php echo $row_ser['product_id']; ?>">
									<!--<img src="<?php echo config_item('cart', 'site_url'); ?>uploads/images/no_image.png" alt="" />-->
									<img src="<?php echo config_item('cart', 'site_url'); ?>uploads/images/<?php echo $row_ser['product_thumbnail']; ?>" alt="" />
							</a>
						</span>
						
						<span class="price">
							<?php echo price($row_ser['product_price']); ?>
						</span>
						
						<span class="title"><?php echo $row_ser['product_name']; ?></span>
										
						<div class="line"></div>
						
						<p>
							<a href="product_details.php?product_id=<?php echo $row_ser['product_id']; ?>" class="button orange">Read more</a>
						</p>

					</div>
					
				</div>
                <?php }?>
				<?php if($totalRows_ser ==0){ ?>
		
			<div class="grid_12">
				<div class="alert info">
					<p>Please type a search keyword!</p>
				</div>
			</div>
				<?php }?>
		<?php endif; ?>
		
		<div class="clear">&nbsp;</div>
				
	</div>
	<!-- END #main -->
		
<?php require_once('footer' . config_item('template', 'template_extension')); ?>
