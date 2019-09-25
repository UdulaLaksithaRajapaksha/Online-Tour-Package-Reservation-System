<?php if (__FILE__ == $_SERVER['SCRIPT_FILENAME']) exit('No direct access allowed.');

$config['table_users'] = 'users';
$config['table_groups'] = 'user_groups';
$config['table_profiles'] = 'user_profiles';

$config['site_title'] = 'Online Shopping Cart';

$config['site_url'] = 'http://localhost/shoppingcart/';

$config['absolute_path'] = 'C:\wamp\www\shoppingcart/';

$config['admin_email'] = 'udula.rajapaksha@gmail.com';

$config['default_group'] = 2;

$config['admin_group'] =  1;

$config['email_activation'] = false;

$config['approve_registration'] = false;

$config['email_activation_expire'] = 60 * 60 * 24;

$config['email_subject_1'] = 'Thank you for registering';

$config['email_subject_2'] = 'New password';

$config['email_subject_3'] = 'A new customer has registered';

$config['user_expire'] = 3600 * 24 * 30;

$config['secret_word'] = '2537313b';

?>