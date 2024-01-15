-- Melihat Kategori barang yang paling banyak barangnya.
SELECT
    product_name,
    stock
FROM
    products
ORDER BY
    stock DESC;
