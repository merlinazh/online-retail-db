USE OnlineRetailDB;

CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_full_name VARCHAR(50),
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    user_number_phone VARCHAR(20),
    password VARCHAR(100)
);

CREATE TABLE addresses (
    address_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    address VARCHAR(255),
    address_full_name VARCHAR(50),
    address_number_phone VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE products (
    product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    description TEXT,
    price INT,
    stock INT,
    product_image VARCHAR(255)
);

CREATE TABLE cart (
    cart_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    total_price INT,
    quantity INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id) 
);

CREATE TABLE orders (
    order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cart_id INT,
    status_order ENUM('Pending', 'Processing', 'Shipped', 'Delivered'),
    date_time DATETIME,
    total_price INT,
    total_product INT,
    FOREIGN KEY (cart_id) REFERENCES Cart(cart_id)
);

CREATE TABLE order_detail (
    detail_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);