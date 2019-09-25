<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_shoppingcart = "localhost";
$database_shoppingcart = "shoppingcart";
$username_shoppingcart = "root";
$password_shoppingcart = "";
$shoppingcart = mysql_pconnect($hostname_shoppingcart, $username_shoppingcart, $password_shoppingcart) or trigger_error(mysql_error(),E_USER_ERROR); 
?>