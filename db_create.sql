DROP DATABASE IF EXISTS gopizzago;
CREATE DATABASE gopizzago;
use pizzago;

DROP TABLE IF EXISTS `couriers`;
CREATE TABLE `couriers` (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(15),
    phone VARCHAR(30)
);
DROP TABLE IF EXISTS `cities`;
CREATE TABLE cities(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(50)

);

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    address VARCHAR(40)
);

DROP TABLE IF EXISTS `pizza_types`;
CREATE TABLE `pizza_types` (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type VARCHAR(15)
);

DROP TABLE IF EXISTS `pizzas`;
CREATE TABLE `pizzas` (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    price INT,
    type_id INT,
    FOREIGN KEY(type_id) REFERENCES pizza_types(id)
); 

DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries` (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    delivered_at DATE,
    customer_id INT,
    courier_id INT, 
    pizza_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id),
    FOREIGN KEY(courier_id) REFERENCES couriers(id),
    FOREIGN KEY(pizza_id) REFERENCES pizzas(id)
);