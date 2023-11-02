DROP DATABASE IF EXISTS bookstore;
CREATE DATABASE bookstore;
USE bookstore;
--
-- Tabell: "author"
--
CREATE TABLE author(
    author_id int PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(255) CHECK (first_name REGEXP '^[A-Za-z]'),
    last_name varchar(255) CHECK (last_name REGEXP '^[A-Za-z]'),
    birth_date date NOT NULL
);
--
-- Tabell: "book"
--
CREATE TABLE language(
    language_id int PRIMARY KEY AUTO_INCREMENT,
    language varchar(255) CHECK (language REGEXP '^[A-Za-z]+$')
);
CREATE TABLE book(
    isbn varchar(255) PRIMARY KEY CHECK (isbn REGEXP '[0-9]{13}'),
    title varchar(255) CHECK (title REGEXP '^([A-Za-z0-9\-]+( [A-Za-z0-9\-]+)*)$'),
    language_id int NOT NULL ,
    price int NOT NULL,
    publication_date date NOT NULL,
    author_id int NOT NULL,
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);
CREATE TABLE book_language(
    isbn varchar(255) CHECK (isbn REGEXP '[0-9]{13}'),
    language_id int NOT NULL ,
    FOREIGN KEY (isbn) REFERENCES book(isbn),
    FOREIGN KEY (language_id) REFERENCES language(language_id)
);
--
-- Tabell: "bookstore"
--
CREATE TABLE bookstore(
    store_id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) CHECK(name REGEXP '^([A-Za-z0-9&]+( [A-Za-z0-9&]+)*)$'),
    location varchar(255) CHECK (location REGEXP '^([A-Za-z0-9,]+( [A-Za-z0-9,]+)*)$')
);
--
-- Tabell: "inventory"
--
CREATE TABLE inventory(
    store_id int NOT NULL,
    isbn varchar(255) CHECK (isbn REGEXP '[0-9]{13}'),
    amount int NOT NULL,
    PRIMARY KEY (store_id, isbn)
);

--
-- Add data for database.
--
-- Vy: "total_author_book_value"
-- Creates a view that displays an authors full name, age, amount of written titles and the total stock value of those titles in stock.
--
CREATE OR REPLACE VIEW total_author_book_value AS
    SELECT CONCAT(first_name,' ', last_name) AS name,
           CONCAT(IF( SUBSTR(birth_date,3,2) > SUBSTR(CURDATE(),3,2), (YEAR(CURDATE()) - (1900 + SUBSTR(birth_date,3,2))), (YEAR(CURDATE()) - 2000 + SUBSTR(birth_date,3,2))),' år') AS age,
           CONCAT(COUNT(book.author_id),' st') AS book_title_count,
           CONCAT(
                   SUM(inventory.amount * book.price),' kr')  AS inventory_value
FROM author
JOIN book ON author.author_id = book.author_id
JOIN inventory ON book.isbn = inventory.isbn
GROUP BY author.author_id;
--
-- Selects the collected stock value for each book in inventory
--
SELECT inventory.isbn, SUM(inventory.amount * book.price)
FROM book
JOIN inventory on book.isbn = inventory.isbn
GROUP BY inventory.isbn;
--
-- "Användare och Behörigheter"
-- Creating roles for different access privileges
--
CREATE ROLE IF NOT EXISTS 'app_read', 'app_write';
GRANT SELECT ON bookstore.* TO 'app_read';
GRANT INSERT, UPDATE, DELETE ON bookstore.* TO 'app_write';

CREATE ROLE IF NOT EXISTS 'developer';
GRANT CREATE, SELECT, INSERT, UPDATE, DELETE, DROP ON bookstore.* to 'developer';
--
-- Creating user accounts for a developer and webserver
--
CREATE USER IF NOT EXISTS 'joe_dev'@'%'
    IDENTIFIED BY 'temp_password' PASSWORD EXPIRE
    FAILED_LOGIN_ATTEMPTS 3 PASSWORD_LOCK_TIME 2
    PASSWORD HISTORY 5;
GRANT 'developer' TO 'joe_dev'@'%';
-- does not have to be on same network
-- not admin account
-- not create user or database

CREATE USER IF NOT EXISTS 'web_app'@'localhost'
    IDENTIFIED BY 'temp_password' PASSWORD EXPIRE NEVER;
GRANT 'app_read', 'app_write' TO 'web_app'@'localhost';
-- has to be on same network as database
-- only CRUD, no drop or create database