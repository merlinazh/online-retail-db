DELETE FROM addresses WHERE address_id = 1122;

DELETE FROM orders WHERE order_id = 1442;

DELETE FROM order_detail WHERE order_id = 1442;

DELETE FROM cart WHERE cart_id = 1342;
DELETE FROM orders WHERE cart_id = 1342;

DELETE FROM cart WHERE product_id = 1232;
DELETE FROM products WHERE product_id = 1232;

DELETE FROM users WHERE user_id = 2;
DELETE FROM addresses WHERE user_id = 2;
DELETE FROM cart WHERE user_id = 2;