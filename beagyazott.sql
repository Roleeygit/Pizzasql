INSERT INTO pizzas (name, price, type_id) VALUES 
("Pienone", 2600, (SELECT id FROM pizza_types WHERE type = "XXL")); 


ALTER TABLE customers ADD city_id int;

CREATE TABLE cities(
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR(50)

);

INSERT INTO cities (city) VALUES
("Vác"),
("Ócsa"),
("Ják"),
("Fót"),
("Cutonehouse"); 

UPDATE customers 
SET city_id = (SELECT id FROM cities WHERE city = "Fót")
WHERE name = "Colette Miles"
SET city_id = (SELECT id FROM cities WHERE city = "Ócsa")
WHERE name = "Ivor Tyler"
SET city_id = (SELECT id FROM cities WHERE city = "Ják")
WHERE name = "Timothy Allen"
SET city_id = (SELECT id FROM cities WHERE city = "Ócsa")
WHERE name = "Kieran Camacho"
SET city_id = (SELECT id FROM cities WHERE city = "Fót")
WHERE name = "Kellie Vincent"
SET city_id = (SELECT id FROM cities WHERE city = "Vác")
WHERE name = "Isadora Riddle"
SET city_id = (SELECT id FROM cities WHERE city = "Ják")
WHERE name = "Emerson Knowles"
SET city_id = (SELECT id FROM cities WHERE city = "Ócsa")
WHERE name = "Kelly Kelley"
SET city_id = (SELECT id FROM cities WHERE city = "Fót")
WHERE name = "Gavin Mosley"


INSERT INTO deliveries (delivered_at, customer_id, courier_id, pizza_id) VALUES ("2022-09-12", 
(SELECT id FROM customers WHERE name = "Kellie Vincent"), 
(SELECT id from couriers WHERE name = "Tamara"), 
(SELECT id from pizzas WHERE name = "Buffalo"));
