-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT
    Products.product_id,
    Products.product_name,
    Products.description,
    Products.price,
    Products.stock,
    SUM(Order_Detail.quantity) AS total_quantity
FROM
    Products
JOIN
    Order_Detail ON Products.product_id = Order_Detail.product_id
GROUP BY
    Products.product_id
ORDER BY
    total_quantity DESC
LIMIT 3;