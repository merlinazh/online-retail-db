-- Retrieve data in the Users table
SELECT user_id, user_full_name, username, email, user_number_phone
FROM Users
WHERE user_id = 1

-- Retrieve data in the Addresses table
SELECT address_id, user_id, address, address_full_name, address_number_phone
FROM addresses
WHERE user_id = 2

SELECT product_id, product_name, description, price, stock, product_image
FROM products
WHERE stock > 30

SELECT cart_id, user_id, product_id, total_price, quantity
FROM cart
WHERE cart_id = 1341

SELECT order_id, cart_id, status_order, date_time, total_price, total_product
FROM Orders
WHERE status_order = 'processing'

SELECT detail_id, order_id, product_id, quantity
FROM order_detail
WHERE quantity > 5;