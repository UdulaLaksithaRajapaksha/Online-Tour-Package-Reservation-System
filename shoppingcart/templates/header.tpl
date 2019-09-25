<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	
<!-- BEGIN head -->	
<head>
	
	<!-- Meta Tags -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
	
	<!-- Title -->
    <title>Online Tour Packages </title>

	<!-- Style sheet -->
	<link href="<?php echo config_item('template', 'site_url'); ?>templates/css/style.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo config_item('template', 'site_url'); ?>templates/css/reset.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo config_item('template', 'site_url'); ?>templates/css/text.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo config_item('template', 'site_url'); ?>templates/css/960.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo config_item('template', 'site_url'); ?>templates/css/table.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo config_item('template', 'site_url'); ?>templates/css/jquery.qtip.min.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo config_item('template', 'site_url'); ?>templates/css/jquery.fancybox.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo config_item('template', 'site_url'); ?>templates/css/tabs.css" rel="stylesheet" type="text/css" />
	
    
    
    
    
    
	<!-- jQuery -->
	<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.min.js"></script>
    
    
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.carousel.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript" src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAcMv377CQr78x__fnejif6hTFwWbAnXhlB366t992QiHPWDYoVxROKqqm5TQzJ8uyw1i7cYqSvzriYA"></script>
<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.gmap-1.1.0-min.js"></script>
<script src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.rating.js" type="text/javascript" charset="utf-8"></script>
<script src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.anythingslider.js" type="text/javascript" charset="utf-8"></script>
<script src="<?php echo config_item('template', 'site_url'); ?>templates/js/custom.js" type="text/javascript" charset="utf-8"></script>
    
	<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery-ui.min.js"></script>
    
    
    
    
    
	<!-- jQuery plugins -->
	<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.validate.min.js"></script>
    
    
    
    
    
	<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.qtip.min.js">
    </script>
    
    
    
	<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.blockUI.js"></script>
    
    
    
	<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.fancybox.js"></script>
    
    
	<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/jquery.cookie.js"></script>
    
    
			
	<!-- Custom js -->
	<script type="text/javascript" src="<?php echo config_item('template', 'site_url'); ?>templates/js/custom.min.js"></script>
    
    
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,400italic,700' rel='stylesheet' type='text/css'>


<link rel="stylesheet" href="<?php echo config_item('template', 'site_url'); ?>templates/style.css" />
				
</head>
<!-- END head -->

<!-- BEGIN body -->
<body>

<!-- BEGIN #wrapper -->
<div id="wrapper">

	<!-- BEGIN #header -->
	
	<!-- END #header -->
    
    
    <!---- Start -->

<div class="header">
<div class="container_16">
<div class="grid_4 logo">

</div>

<div class="grid_12">
<a href="#" class="search">&nbsp;</a>
<div class="searchtoggle">					

<form action="search1.php" method="post">
<input type="text" onblur="if(this.value=='')this.value='Type product name and hit enter';" onfocus="if(this.value=='Type product name and hit enter')this.value='';" name="filter_product_name" value="Type product name and hit enter" />
<input type="hidden" name="filter" value="Go" class="search" />

</form>

</div>



				
<div style="float:right;">
<form action="search.php" method="post">
<input type="text" onblur="if(this.value=='')this.value='Advanced Search...';" onfocus="if(this.value=='Advanced Search...')this.value='';" name="filter_product_name" class="search_adv_input" value="Advanced Search..." />
<input type="submit" name="filter" value="Go" class="search_adv" />

</form>
</div>




<a href="#" class="loginregister">&nbsp;</a>
<div class="logreg">
<div class="log1">
<div class="shiztitle">
<h2 class="title">Login</h2>
</div>
<form class="minilogin" method="post" action="login.php" id="login">
<input type="text" class="miniusername half" id="email" name="email" value="Username" onfocus="if(this.value=='Username')this.value='';" onblur="if(this.value=='')this.value='Username';"/>
<input type="password" class="minipass half" id="password" name="password" value="Password" onfocus="if(this.value=='Password')this.value='';" onblur="if(this.value=='')this.value='Password';" />
<input type="submit" class="mailsubmit" value="Sign In"  name="login"/>
<a href="login.php" class="forgotpass">Forgot password?</a>
</form>
</div>
<div class="log2">
<div class="shiztitle">
<h2 class="title">Register</h2>
</div>
<div class="reginfo">
New User? By creating an account you 
be able to shop faster, be up to date on 
an order's status...
</div>
<a href="create_account.php" class="regnow">Register Now</a>
</div>
</div>
</div>
<div class="grid_16">

<ul class="menu1">

<li><a href="index.php" class="active">Home<span>&nbsp;</span></a></li>


			<div id="menu">
				<li><?php echo get_categories(0); ?></li>
	</div>
</ul>

<div class="cartstatus">
<div id="cart_items">
						<?php require_once('display_cart.php');	?>
					</div>

</div>
</div>


<div class="grid_16 main">
<div class="smallmenu">

<ul>
				<?php if (!$authentication->logged_in() || !$authentication->is_group('customer')): ?>
					<li class="myacc"><a href="account.php">Welcome: Guest</a></li>
				     
				<?php else: ?>	
               
					<li class="myacc">
						<a href="account.php">
							Welcome: <?php if ($session->get('first_name')) echo $session->get('first_name'); ?>
						</a>
					</li>
				
				
                <li><a href="index.php?logout"><img src="templates/images/logout.png" width="16" height="16" alt=""> Logout</a></li>
                	
				<?php endif; ?>
                <li class="mycheck"><a href="view_cart.php">View cart / Check Out</a></li>
				<li>
					<div id="cart_items">
						<?php require_once('display_cart.php');	?>
					</div>
				</li>
			</ul>

</div>
<div class="lines"></div>

</div></div></div>
<!--end header -->


<!--- End  -->

	<?php if (is_dir(realpath(dirname(__FILE__) . '/../') . '/install')): ?>
		<div class="container_12">
			<div class="grid_12">
				<div class="alert error">
					<span>
						<strong>Warning</strong>
					</span>	
					<p>Install folder still exists and should be deleted for security reasons.</p>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	<?php endif; ?>

	<noscript>
		<div class="container_12">
			<div class="grid_12">
				<div class="alert error">
					<span>
						<strong>Warning</strong>
					</span>	
					<p>
						Many features on the web site require Javascript and cookies, you can enable both via your browser's
						preference settings.
					</p>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</noscript>
