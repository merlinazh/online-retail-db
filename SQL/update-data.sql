UPDATE users
SET
  user_full_name = 'Merlin Az',
  email = 'merlinazizah241@gmail.com'
WHERE user_id = 1;

UPDATE addresses
SET
  address = 'Kalimantan Selatan',
  address_number_phone = '081234567891'
WHERE address_id = 1121;

UPDATE products
SET
  product_name = 'Laptop ABC',
  description = 'Powerful laptop for gaming',
  price = 2800000,
  product_image = '/images/laptop_abc_image.jpg',
  stock = 10
WHERE product_id = 1231;

UPDATE cart
SET
  total_price = 8400000,
  quantity = 3
WHERE cart_id = 1341;

UPDATE orders
SET
  status_order = 'Delivered'
WHERE order_id = 1441;

UPDATE order_detail
SET
  quantity = 5
WHERE detail_id = 20;