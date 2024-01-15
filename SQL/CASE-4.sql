-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
SELECT
    AVG(orders.total_price) AS average_transaction
FROM
    orders
WHERE
    MONTH(orders.date_time);
