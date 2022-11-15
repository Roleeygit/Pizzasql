/*DECLARE courier INT DEFAULT 0;*/
 
DELIMITER $$
	CREATE PROCEDURE getCustomer( 
	IN customer_id INT,
	OUT name varchar(100) )
		BEGIN
			SELECT name FROM customers WHERE id = customer_id;
		END $$
DELIMITER ;


SET @customer_id = 7;
CALL getCustomer( @customer_id, @name );
SELECT @name as Név;
