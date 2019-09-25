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
$query_ven = "SELECT * FROM vendors ORDER BY sno DESC";
$ven = mysql_query($query_ven, $shoppingcart) or die(mysql_error());
$row_ven = mysql_fetch_assoc($ven);
$totalRows_ven = mysql_num_rows($ven);


if(isset($_POST['hf_id']))
{
	$id=$_REQUEST['hf_id'];
	
	$qry_del="delete from vendors where sno='$id'";
	echo $qry_del;
	$result_del=mysql_query($qry_del, $shoppingcart);
	header(sprintf("Location: vendors.php"));
}

?>
<script language="javascript">
function conf_del(id)
{
	var ret=confirm("Are You Sure To Delete The Record... ?");
	if(ret)
	{   
		document.getElementById('hf_id').value=id;
		document.ads.submit();
		
	}
	return false;
}
</script>
<script type="text/javascript">
// <![CDATA[
$(document).ready(function() {
	
	$('#dialog:ui-dialog').dialog('destroy');

	$('#dialog_confirm').dialog({
		autoOpen: false,
		resizable: false,
		height: 180,
		width: 450,
		modal: true,
		create: function(event, ui) {
			$('.ui-button').addClass('button orange');
		},
		buttons: {
			'Delete': function() {
				$('form:first').submit();
			},
			'Cancel': function() {
				$(this).dialog('close');
			}
		}
	});
	
	$('.delete').click(function() {
			
		$('input:checked').each(function() {
			
			$('#dialog_confirm').dialog('open');
			
		});

		return false;
		
	});
						
});
// ]]>
</script>

	<!-- BEGIN #dialog_confirm -->
	<div id="dialog_confirm" title="Delete item(s)?">
		<p>
			These item(s) will be permanently deleted and cannot be recovered. Are you sure?
		</p>
	</div>
	<!-- END #dialog_confirm -->
	
	<!-- BEGIN #main -->
	<div id="main" class="container_12">
							
		<!-- BEGIN .grid_12 -->
		<div class="grid_12">

			<!-- BEGIN .title_background -->
			<div class="title_background grid_10 alpha omega">
				<h1>vendors</h1>
			</div>
			<!-- END .title_background -->

			<div class="float_right">
                    
				<a href="add_vendors.php" class="button orange">Add Vendors</a>
			</div>
			
			<div class="clear">&nbsp;</div>
			
			<?php if ($session->get('success')): ?>
				<div class="alert success">
					<p>
						<span>Customer edited successfully!</span>
					</p>
				</div>
			<?php $session->delete('success'); endif; ?>
			
			
				
				<form action="" method="post" name="ads">
                <input type="hidden" name="hf_id" id="hf_id" value="" />
					<table class="table">
						<thead>
							<tr>
								<th><input type="checkbox" value="cb_customer" class="select_all" /></th>
								<th>Vendor name</th>
								<th>Email address</th> 	 
								<th>productname</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
                        <?php do{?>
								<tr>
									<td><input type="checkbox" value="<?php echo $row_ven['sno']; ?>" name="cb_customer[]" /></td>
									<td><?php echo $row_ven['vendorname']; ?></td>
									<td><?php echo $row_ven['email']; ?></td>
									<td><?php echo $row_ven['productname']; ?></td>
									<td><a href="edit_vendor.php?user_id=<?php echo $row_ven['sno']; ?>" title="Edit: <?php echo $row_ven['productname']; ?>"><img src="../templates/admin/images/sign-up-icon.png" width="45" height="45" /></a> &nbsp;&nbsp;&nbsp;
                                    <a href="javascript:void(0);" onclick="conf_del('<?php echo $row_ven['sno']; ?>')" ><img src="../templates/admin/images/delete1.png" width="45" height="45" /></a></td>
								</tr>
                                <?php }while($row_ven = mysql_fetch_assoc($ven));?>
						</tbody>
					</table>
					<div class="clear">&nbsp;</div>
				</form>
				<div class="alert info">
				</div>
				
													
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
		
	</div>
	<!-- END #main -->

<?php require_once('footer' . config_item('template', 'template_extension')); ?>
