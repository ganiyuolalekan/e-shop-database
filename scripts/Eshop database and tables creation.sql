# This script is responsible for the 
# creation of the database called 'eshop'
# which is short for electronic-shop (e-shop)
# 
# This database consists of four (4) tables
# - Employee: Responsible for the employees that works at the shop location
# - Product: Responsible for all the products in the shop location
# - Customer: Responsible for all the record of all the customers that uses the e-shop
# - payment: Responsible for tracking all the payments made on the site.

CREATE DATABASE eshop;

USE eshop;

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    product_desc VARCHAR(1000) NOT NULL,
    unit_price FLOAT NOT NULL,
    release_date DATE NOT NULL,
    product_lang VARCHAR(20) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    product_type CHAR(5) NOT NULL,
    assigned_employee INT NOT NULL,
    FOREIGN KEY (assigned_employee)
        REFERENCES employee (id)
        ON DELETE CASCADE
);

CREATE TABLE customer (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number BIGINT NOT NULL UNIQUE KEY,
    email VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    credit_card BIGINT NOT NULL UNIQUE KEY
);

CREATE TABLE payment (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    purchased_product INT,
    purchasing_customer INT,
    FOREIGN KEY (purchased_product)
        REFERENCES product (id)
        ON DELETE CASCADE,
    FOREIGN KEY (purchasing_customer)
        REFERENCES customer (id)
        ON DELETE CASCADE
);
