# Online-Tour-Package-Reservation-System

## Instructions:

This system is recommended to use with wampserver 2 and the embeded phpMyAdmin version.

Database should be created named 'shoppingcart' in phpMyAdmin and import the 'shoppingcart' SQL file by this path (www->database->shoppingcart.sql file)

High level description:

There will be 2 basic user flows:

1. Default admin login (Username: admin@admin.com, Password:12345) (URL-  http://localhost/shoppingcart/admin/login.php)

With this flow, 

- Administrator can edit/delete orders done by customers.
- Add new customers to the system
- Add/edit/delete packages
- Change the settings (uploading image sizes, change currency, change tax description, number pf packages to be displayed per page, Site URL etc.)
- Change the order status for the orders done by customers.
- Dashboard to view statistics of the orders and best selling products.

2. Default customer/guest login (URL- http://localhost/shoppingcart/login.php)

With this flow,

- User can register as a customer.
- User can only view the details of the packages as a Guest (Cannot place an order without registering as a customer).
- Registered customers will be able to place orders.
- View images through image gallery.
- Registered customers can add packages to cart and checkout by selecting payment method.
- Edit/Delete packages in cart.
- Registered customers can view their own order history.


