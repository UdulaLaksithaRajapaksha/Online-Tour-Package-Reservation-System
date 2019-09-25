<?php 
require_once('header' . config_item('template', 'template_extension'));

?>
<head>
<style>
a:hover {
  color: blue;
  text-decoration: underline;
}

</style>
</head>
	<!-- BEGIN #main -->
	<div id="main" class="container_12">
				
		<!-- BEGIN .grid_12 -->
		<div class="grid_12 title_background">
			<h1>Manage your account</h1>
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
		
		<!-- BEGIN .grid_12 -->	
		<div class="grid_12">

			<?php if ($session->get('success')): ?>
				<div class="alert success">
					<p>
						<span>User edited successfully!</span>
					</p>
				</div>
			<?php $session->delete('success'); endif; ?>
						<br/>					
			<table width="100%" border="0">
  <tr>
    <td width="248"><a href="edit_account.php"><strong>1) Edit your account</strong></a></td>
    <td width="10">&nbsp;</td>
    <!--<td width="814" rowspan="6">
    <?php if($_COOKIE['msg']==1){ ?>
    <table width="653" border="0">
      <tr>
        <td colspan="3" style="font-weight: bold; text-align: center; color: #900; font-size: 24px;">Special Offers for past five Transcations !</td>
        </tr>
      <tr>
        <td width="129"><br/><img src="templates/images/offer.png" alt="" /></td>
        <td width="316"><br/><br/><p style="text-align: center; font-weight: bold; font-size: 18px;">Coupon Code: <?php echo $_COOKIE['cupon'];?></p>
          <p style="font-weight: bold; text-align: center;">Valid Till: <?php echo $_COOKIE['edate'];?></p></td>
        <td width="186"><br/><img src="templates/images/icon-coupon.png" /></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center"><span style="font-weight: bold; font-size: 16px;">Use the above coupon on next transcation for any products..</span> <span style="font-weight: bold; font-size: 18px; color: #060;">Hurry Up !...</span></td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      </table><?php }?></td>-->
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td><a href="history.php"><strong>2) View your order history</strong></a></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td><a href="downloads.php"><strong>3) Downloads</strong></a></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
</table>

									
		</div>
		<!-- END .grid_12 -->
		
		<div class="clear">&nbsp;</div>
				
	</div>
	<!-- END #main -->

<?php require_once('footer' . config_item('template', 'template_extension')); ?>
