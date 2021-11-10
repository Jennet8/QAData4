DROP DATABASE IF EXISTS GamesDB;

CREATE DATABASE GamesDB;

USE GamesDB;

CREATE TABLE gamecustomer (ID INT AUTO_INCREMENT, Name VARCHAR(32) NOT NULL, Email VARCHAR(64), Address VARCHAR(64) NOT NULL, PRIMARY KEY(ID));

CREATE TABLE games (ID INT AUTO_INCREMENT, Title VARCHAR(32) NOT NULL, Price FLOAT NOT NULL, Stock INT, PRIMARY KEY(ID));

CREATE TABLE orders (ID INT AUTO_INCREMENT, Customer_ID INT NOT NULL, Game_ID INT NOT NULL, Date_Ordered DATETIME, PRIMARY KEY(ID), FOREIGN KEY(Customer_ID) REFERENCES gamecustomer(ID), FOREIGN KEY (Game_ID) REFERENCES games(ID));

INSERT INTO gamecustomer(name, email, address) VALUES ('John', 'John@hotmail.com', '3 Hamilton');

INSERT INTO gamecustomer(name, email, address) VALUES ('Daisy', 'Daisy@hotmail.co.uk', '10 Southbrook');

INSERT INTO gamecustomer(name, email, address) VALUES ('Abbie', 'Abbie@outlook.co.uk', '13 Broad');

INSERT INTO gamecustomer(name, email, address) VALUES ('Ludwig', 'Ludwig@outlook.co.uk', '13 Broad');

INSERT INTO gamecustomer(name, email, address) VALUES ('Sam', 'Sam@google.com', '24 Shields');

INSERT INTO games(Title, Price, Stock) VALUES ('Banjo Kazooey', 13.99, 12);

INSERT INTO games(Title, Price, Stock) VALUES ('Devil May Cry 2', 33.99, 100);

INSERT INTO games(Title, Price, Stock) VALUES ('Stardew Valley', 24.99, 32);

INSERT INTO games(Title, Price, Stock) VALUES ('The Sims 4', 59.99, 60);

INSERT INTO games(Title, Price, Stock) VALUES ('Pikmin 3', 49.95, 20);

INSERT INTO orders(Customer_ID, Game_ID, Date_Ordered) VALUES(1,3, '2021-10-15');

INSERT INTO orders(Customer_ID, Game_ID, Date_Ordered) VALUES(5,1, '2021-11-10');

INSERT INTO orders(Customer_ID, Game_ID, Date_Ordered) VALUES(2,4, '2021-06-23');

INSERT INTO orders(Customer_ID, Game_ID, Date_Ordered) VALUES(3,2, '2021-06-23');

INSERT INTO orders(Customer_ID, Game_ID, Date_Ordered) VALUES(4,5, '2021-09-18');

SELECT * FROM gamecustomers

SELECT * FROM games

SELECT * FROM orders
