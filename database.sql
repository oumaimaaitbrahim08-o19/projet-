CREATE DATABASE myproject;
use myproject;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50) DEFAULT 'user',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT,
    category VARCHAR(100),
    stock INT DEFAULT 0
);
CREATE TABLE ProductImages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    image_url VARCHAR(500) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(id)
);
SHOW TABLES;
DESCRIBE users;
DESCRIBE Products;



USE myproject;

INSERT INTO users (name, email, password, role)
VALUES ('Test User', 'test@example.com', 'hash_test_temp', 'user');

INSERT INTO Products (name, price, description, category, stock)
VALUES ('Laptop', 6500.00, 'Ordinateur portable', 'Informatique', 10);
SELECT * FROM Products;

INSERT INTO ProductImages (product_id, image_url)
VALUES (1, 'images/laptop.jpg');

SELECT * FROM users;
SELECT * FROM ProductImages;
DESCRIBE Products;