<?php

//Include the common file
require_once('common.php');

//Countries
foreach ($db->query("SELECT * FROM " . config_item('cart', 'table_countries') . "") as $row)
	$countries[] = $row;
	
//Check if the form has been submitted
if (isset($_POST['submit'])) {

	$validate->required($_POST['first_name'], 'Enter your first name.');
	$validate->required($_POST['last_name'], 'Enter your last name.');
	$validate->email($_POST['email'], 'Email address not valid.');
	$validate->required($_POST['telephone'], 'Please enter a valid number for telephone.');
	
	$validate->required($_POST['nationality'], 'Please enter the nationality.');
	
	$validate->required($_POST['address'], 'Enter your address.');
	$validate->required($_POST['city'], 'Enter your city.');
	$validate->required($_POST['post_code'], 'Enter your post code.');
	$validate->required($_POST['zone'], 'Enter your zone.');
	$validate->required($_POST['password'], 'Enter your password.');

	if (!$error->has_errors()) {
		
		if ($authentication->check_email($_POST['email'])) {
		
			$additional_data = array(
				'first_name' 	=> $_POST['first_name'],
				'last_name' 	=> $_POST['last_name']
			);		

			$authentication->create_user($_POST['email'], $_POST['password'], $additional_data);

			$result = $db->fetch_row_assoc("SELECT user_id FROM " . config_item('authentication', 'table_users') . " WHERE user_email = '" . $_POST['email'] . "'");
			
			$values = array(
				'user_id' 				=> $result['user_id'],
				'first_name'			=> $_POST['first_name'], 
				'last_name'				=> $_POST['last_name'],
				'customer_email'		=> $_POST['email'], 
				'customer_telephone'	=> $_POST['telephone'],
				'nationality'			=> $_POST['nationality']
			); 
					
			$db->insert(config_item('cart', 'table_customers'), $values);

			$values = array(
				'user_id' 		=> $result['user_id'],
				'country_id' 	=> $_POST['country'],
				'company'		=> $_POST['company'],
				'first_name'	=> $_POST['first_name'], 
				'last_name'		=> $_POST['last_name'],
				'address'		=> $_POST['address'],
				'post_code' 	=> $_POST['post_code'],
				'city' 			=> $_POST['city'],
				'zone' 			=> $_POST['zone']
			);		

			$db->insert(config_item('cart', 'table_addresses'), $values);
			
			$tpl->set('success', true);
			
		} else {
			
			$tpl->set('failed', true);
			
		}
			
	}
	
}

//Template values
$tpl->set('countries', $countries);

//Display the template
$tpl->display('create_account');
			
?>
