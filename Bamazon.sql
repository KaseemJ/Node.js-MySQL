DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(40) NOT NULL,
  department_name VARCHAR(40) NOT NULL,
  price INT default 0,
  stock_quantity INT default 0,
  PRIMARY KEY (id)
);

SELECT * FROM products; 

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Books", "Reading", "5.00", "35");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Tents", "Camping", "25.00", "33");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Balls", "Sports", "15.00", "55");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Shirts", "Clothing", "20.00", "100");

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Laptop", "Computer", "500.00", "70");

