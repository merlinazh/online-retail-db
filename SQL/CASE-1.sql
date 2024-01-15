-- 1 pelanggan membeli 3 barang yang berbeda.
INSERT INTO cart (cart_id, user_id, product_id, total_price, quantity)
VALUES
    (13455, 4, 1231, 2500000, 3),
    (13456, 4, 1232, 1200000, 5),
    (13457, 4, 1233, 3600000, 2);

INSERT INTO orders (order_id, cart_id, status_order, date_time, total_price, total_product)
VALUES (
    14431,
    (SELECT cart_id FROM cart WHERE user_id = 4 LIMIT 1),
    'pending',
    '2024-01-15 08:30:00',
    (SELECT SUM(total_price) FROM cart WHERE user_id = 4),
    (SELECT SUM(quantity) FROM cart WHERE user_id = 4)
);

INSERT INTO order_detail (order_id, product_id, quantity)
SELECT
    14431 AS order_id,
    product_id,
    quantity
FROM
    cart
WHERE
    user_id = 4;