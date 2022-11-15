INSERT INTO `couriers` (name, phone)
VALUES 
  ("Tamara","055 5799 2215"),
  ("Cora","0831 185 5441"),
  ("Bryar","0800 413458"),
  ("Jarrod","0800 741 0014"),
  ("Raphael","(012342) 18523"),
  ("Andrew","(01589) 988378"),
  ("Abel","055 7156 8018"),
  ("Vladimir","0912 013 5548"),
  ("Yasir","0800 1111"),
  ("Sydnee","0800 428336");

INSERT INTO `customers` (name, address)
VALUES
  ("Ashely Albert","9869 Nec Road"),
  ("Colette Miles","146-7774 Est Road"),
  ("Ivor Tyler","P.O. Box 310, 9866 Purus St."),
  ("Timothy Allen","P.O. Box 297, 2867 Cras Ave"),
  ("Kieran Camacho","733-7427 Nunc Avenue"),
  ("Kellie Vincent","Ap #695-5223 Aenean Rd."),
  ("Isadora Riddle","966-3378 Euismod Rd."),
  ("Emerson Knowles","Ap #718-5275 At Rd."),
  ("Kelly Kelley","Ap #436-7959 Sit St."),
  ("Gavin Mosley","988-5393 Mi St.");

INSERT INTO `pizza_types` (type)
VALUES 
  ("Vegetarian"),
  ("Vegan"),
  ("Paleo"),
  ("New York-Style"),
  ("Chicago"),
  ("Thick crust"),
  ("Thin crust"),
  ("Gluten-free"),
  ("XXL"),
  ("Folded pizza");

INSERT INTO `pizzas` (name, price, type_id)
VALUES 
  ("Margherita", 1200, 1),
  ("Capricciosa", 2200, 5),
  ("Pepperoni", 1345, 4),
  ("Bolognese", 2500, 1),
  ("Hawaiian", 1200, 8),
  ("BBQ Chicken", 1200, 9),
  ("Buffalo", 3200, 7),
  ("Quattro fromaggi", 3402, 2),
  ("Picante", 1255, 3),
  ("Lavandería", 2956, 5);

INSERT INTO `deliveries` (delivered_at, customer_id, courier_id, pizza_id)
VALUES
  ("2022-09-14 16:26:21",9,2,1),
  ("2022-09-20 10:38:51",8,3,2),
  ("2022-09-24 20:26:18",7,5,2),
  ("2022-09-04 03:44:03",3,4,5),
  ("2022-09-03 04:46:01",8,5,9),
  ("2022-09-05 12:48:13",4,3,5),
  ("2022-09-18 12:33:43",1,8,1),
  ("2022-09-01 21:45:34",6,8,9),
  ("2022-09-11 20:14:03",4,9,3),
  ("2022-09-13 23:57:27",8,6,7),

  ("2022-09-22 20:03:14",1,9,7),
  ("2022-09-03 18:27:51",9,1,4),
  ("2022-09-28 17:52:19",8,3,8),
  ("2022-09-13 20:14:58",3,5,8),
  ("2022-09-28 21:51:06",2,9,2),
  ("2022-09-08 23:32:26",7,9,5),
  ("2022-09-02 01:46:50",2,1,2),
  ("2022-09-11 21:41:29",4,8,8),
  ("2022-09-28 09:17:21",2,8,6),
  ("2022-09-25 22:06:49",9,1,5),

  ("2022-09-10 19:37:36",6,5,8),
  ("2022-09-08 16:36:47",2,1,9),
  ("2022-09-02 11:49:17",8,1,1),
  ("2022-09-06 14:10:12",7,7,9),
  ("2022-09-13 08:56:08",9,6,1),
  ("2022-09-18 11:13:39",6,5,7),
  ("2022-09-19 06:40:37",1,7,1),
  ("2022-09-25 07:26:37",4,1,5),
  ("2022-09-07 17:51:35",2,1,8),
  ("2022-09-15 15:53:20",5,5,5);