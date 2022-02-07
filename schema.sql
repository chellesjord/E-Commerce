-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- DROP TABLES
DROP TABLE IF EXISTS category;

-- category table
CREATE TABLE category (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

-- product table
CREATE TABLE product (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL (6,2), 
    stock INTEGER NOT NULL DEFAULT 10,
    category_id INTEGER
);

--tag table
CREATE TABLE tag (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(30) 
);

--Product Tag table
CREATE TABLE ProductTag (
    id INTEGER AUTO_INCREMENT PRIMARY,
    product_id INTEGER,
    tag_id INTEGER
)