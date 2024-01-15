-- Table users
INSERT INTO users (
    user_id,
    user_full_name,
    username,
    email,
    user_number_phone,
    password
  )
VALUES (1, 'Marliana Azizah','merlinn123', 'merlinazizah65@gmail.com', '081234567890', '1234'),
(2, 'Bill Gates','bill23', 'billgates@gmail.com', '08234566789', '56789'),
(3, 'John Doe','john123', 'johndoe@gmail.com', '08234465443', '1234asdf'),
(4, 'Mark Z','mark123', 'markz@gmail.com', '084653772872', '1234ppp'),
(5, 'Elon Musk','elon123', 'elonmusk@gmail.com', '081345678900', '1234llll'),
(6, 'Kim Jisoo','jisoo123', 'jisookim@gmail.com', '082345677889', '1234aaaaa'),
(7, 'Jennie Ruby Jane','jennie123', 'jennieruby@gmail.com', '082344545566', '1234dddddd'),
(8, 'Lalisa Manoban','lalalisa123', 'lalisa@gmail.com', '083454557678', '1234eeeee'),
(9, 'Park Chaeyoung','rosee123', 'rosechaeyoung@gmail.com', '08234565776', '1234rrrrrr'),
(10, 'Do Kyungsoo','kyungsoo123', 'dokyungsoo@gmail.com', '08345678900', '1234mmmmm');

-- Table addresses
INSERT INTO addresses (
    address_id,
    user_id,
    address,
    address_full_name,
    address_number_phone
  )
VALUES (1121, 1, 'Tanah Bumbu', 'Marliana Azizah', '081234567890'),
(1122, 2, 'Bekasi', 'Bill Gates', '081234545565'),
(1123, 3, 'Jakarta', 'John Doe', '081345667789'),
(1124, 4, 'Malang', 'Donna Z', '081345678990'),
(1125, 5, 'Surabaya', 'Elon Musk', '088765436789'),
(1126, 6, 'Depok', 'Sooyaa', '082345678909'),
(1127, 7, 'Semarang', 'Jennie Kim', '082345678909'),
(1128, 8, 'Medan', 'Lisa', '084567890987'),
(1129, 9, 'Banjarmasin', 'Rose', '082345678909'),
(11210, 10, 'Bandung', 'Kyungsoo Do', '083456789098');

-- Table Products
INSERT INTO products (
    product_id,
    product_name,
    description,
    price,
    stock,
    product_image
  )
VALUES (1231, 'Laptop XYZ', 'Powerful laptop for professional use', 2500000, 30, '/images/laptop_xyz_image.jpg'),
(1232, 'Smartphone ABC', 'Latest model with advanced features', 1200000, 50, '/images/smartphone_abc_image.jpg'),
(1233, 'Camera 123', 'High-resolution camera for photography enthusiasts', 1800000, 20, '/images/camera_123_image.jpg'),
(1234, 'Headphones Pro', 'Premium noise-canceling headphones', 500000, 100, '/images/headphones_pro_image.jpg'),
(1235, 'Coffee Maker Deluxe', 'Automatic coffee maker with multiple settings', 300000, 80, '/images/coffee_maker_deluxe_image.jpg'),
(1236, 'Fitness Tracker FitX', 'Track your fitness activities with advanced features', 1500000, 120, '/images/fitx_tracker_image.jpg'),
(1237, 'Gaming Console X', 'Next-gen gaming console for immersive gaming experience', 2000000, 15, '/images/gaming_console_x_image.jpg'),
(1238, 'Drone Z', 'Capture stunning aerial footage with this drone', 1800000, 10, '/images/drone_z_image.jpg'),
(1239, 'Smart TV Ultra', 'Ultra HD Smart TV with a large display', 2300000, 25, '/images/smart_tv_ultra_image.jpg'),
(12310, 'Wireless Earbuds Plus', 'Compact and wireless earbuds for on-the-go use', 120000, 150, '/images/earbuds_plus_image.jpg');

-- Table Cart
INSERT INTO cart (
    cart_id,
    user_id,
    product_id,
    total_price,
    quantity
  )
VALUES (1341, 1, 1231, 5000000, 2),
(1342, 2, 1232, 1200000, 1),
(1343, 3, 1233, 1800000, 3),
(1344, 4, 1234, 500000, 2),
(1345, 5, 1235, 300000, 1),
(1346, 6, 1236, 1500000, 2),
(1347, 7, 1237, 2000000, 1),
(1348, 8, 1238, 1800000, 1),
(1349, 9, 1239, 2300000, 2),
(13410, 10, 12310, 240000, 3);

-- Table Orders
INSERT INTO orders (
    order_id,
    cart_id,
    status_order,
    date_time,
    total_price,
    total_product
)
VALUES (1441, 1341, 'Pending', '2024-01-15 08:30:00', 5000000, 2),
(1442, 1342, 'Processing', '2024-01-15 09:15:00', 1200000, 1),
(1443, 1343, 'Shipped', '2024-01-15 10:00:00', 1800000, 3),
(1444, 1344, 'Processing', '2024-01-15 10:45:00', 500000, 2),
(1445, 1345, 'Pending', '2024-01-15 11:30:00', 300000, 1),
(1446, 1346, 'Processing', '2024-01-15 12:15:00', 1500000, 2),
(1447, 1347, 'Shipped', '2024-01-15 13:00:00', 2000000, 1),
(1448, 1348, 'Delivered', '2024-01-15 13:45:00', 1800000, 1),
(1449, 1349, 'Processing', '2024-01-15 14:30:00', 2300000, 2),
(14410, 13410, 'Delivered', '2024-01-15 15:15:00', 240000, 3);

-- Table Order_Detail
INSERT INTO Order_Detail (
  order_id, 
  product_id, 
  quantity)
VALUES (1441, 1231, 2),
(1442, 1232, 1),
(1443, 1233, 3),
(1444, 1234, 2),
(1445, 1235, 1),
(1446, 1236, 2),
(1447, 1237, 1),
(1448, 1238, 1),
(1449, 1239, 2),
(14410, 12310, 3);