CREATE SCHEMA `telecom` ;

CREATE TABLE `telecom`.`customers` (
  `customer_id` INT NOT NULL AUTO_INCREMENT,
  `customer_name` VARCHAR(45) NULL,
  PRIMARY KEY (`customer_id`));
  
CREATE TABLE `telecom`.`plans` (
  `plan_id` INT NOT NULL AUTO_INCREMENT,
  `plan_name` VARCHAR(45) NULL,
  `plan_price` DECIMAL(10,2) NULL,
  `plan_numlines` INT NULL,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`plan_id`),
  FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`));

CREATE TABLE `telecom`.`devices` (
  `device_id` INT NOT NULL AUTO_INCREMENT,
  `device_name` VARCHAR(45) NULL,
  `device_type` VARCHAR(45) NULL,
  `device_number` VARCHAR(45) NOT NULL,
  `plan_id` INT NOT NULL,
  PRIMARY KEY (`device_id`),
  FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`));

SELECT * FROM customers;

INSERT INTO customers (customer_id, customer_name) VALUES (1, 'Matt');
INSERT INTO customers (customer_id, customer_name) VALUES (2, 'Joe');
INSERT INTO customers (customer_id, customer_name) VALUES (3, 'Zach');
INSERT INTO customers (customer_id, customer_name) VALUES (4, 'John');
INSERT INTO customers (customer_id, customer_name) VALUES (5, 'Doug');


SELECT * FROM plans;

INSERT INTO plans (plan_id, plan_name, plan_price, plan_numlines, customer_id) VALUES (1, "Ultimate Plan", 100, 4, 2);
INSERT INTO plans (plan_id, plan_name, plan_price, plan_numlines, customer_id) VALUES (2, "Ultimate Plan", 100, 4, 1);
INSERT INTO plans (plan_id, plan_name, plan_price, plan_numlines, customer_id) VALUES (3, "Cheap Plan", 25, 1, 1);
INSERT INTO plans (plan_id, plan_name, plan_price, plan_numlines, customer_id) VALUES (4, "Cheap Plan", 25, 1, 3);
INSERT INTO plans (plan_id, plan_name, plan_price, plan_numlines, customer_id) VALUES (5, "Cheap Plan", 25, 1, 5);

SELECT * FROM devices;

INSERT INTO devices (device_id, device_name, device_type, device_number, plan_id) VALUES (1, "Matt's Phone", "Apple 11", "111-222-3333", 3);
INSERT INTO devices (device_id, device_name, device_type, device_number, plan_id) VALUES (2, "Doug's Phone", "Android", "123-123-1234", 5);
INSERT INTO devices (device_id, device_name, device_type, device_number, plan_id) VALUES (3, "Zach's Phone", "Nokia", "111-234-2345", 4);
INSERT INTO devices (device_id, device_name, device_type, device_number, plan_id) VALUES (4, "Burner Phone 1", "Samsung", "999-888-7777", 1);
INSERT INTO devices (device_id, device_name, device_type, device_number, plan_id) VALUES (5, "Burner Phone 2", "Samsung", "456-444-3333", 1);
INSERT INTO devices (device_id, device_name, device_type, device_number, plan_id) VALUES (6, "Jenny's Phone", "Samsung", "111-867-5309", 1);
INSERT INTO devices (device_id, device_name, device_type, device_number, plan_id) VALUES (7, "Burner Phone 4", "Samsung", "888-332-1122", 1);
