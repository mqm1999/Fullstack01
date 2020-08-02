create database `shopese`;
drop table if exists `product`;
use `shopese`;
-- sua 1 bang: alter table
CREATE TABLE `product` (
    `displayName` NVARCHAR(100),
    `productId` NVARCHAR(10) PRIMARY KEY,
    `priceIn` INT,
    `priceOut` INT,
    `provider` NVARCHAR(100),
    `category` NVARCHAR(100),
    `categoryId` NVARCHAR(10),
    `discountPercent` INT,
    `discountPrice` INT,
    `imageURL` NVARCHAR(100)
);
insert into `product` values ('A7', '1', '100', '200', 'SAMSUNG', 'phone', '01', '10', '20', 'x');
insert into `product` values ('ipX', '2', '50', '100', 'APPLE', 'phone', '01', '10', '5', 'y');

UPDATE `product` 
SET 
    priceOut = '150'
WHERE
    productId = 1;

DELETE FROM `product` 
WHERE
    productId = 2;

CREATE TABLE `category` (
    `categoryId` NVARCHAR(10) PRIMARY KEY,
    `displayName` NVARCHAR(100),
    `imageURL` NVARCHAR(100)
);
insert into `category` values (01, phone, a);
insert into `category` values (02, PC, b);

UPDATE `category` 
SET 
    displayName = 'smartphone'
WHERE
    displayName = phone;

DELETE FROM `category` 
WHERE
    categoryId = 02;

CREATE TABLE `user` (
    `userId` NVARCHAR(10) PRIMARY KEY,
    `username` NVARCHAR(100),
    `displayName` NVARCHAR(100),
    `email` NVARCHAR(100),
    `phone` NVARCHAR(100),
    `password` NVARCHAR(100),
    `birthday` DATE,
    `status` INT,
    `avatar` NVARCHAR(100),
    `role` INT
);
insert into `user` values (001, mqm1, MQM, aaa, 0123, qqq, 28111999, 1, ava, 1);
insert into `user` values (101, mqm, Minh, bbb, 3210, www, 28112000, 1, ava1, 0);

UPDATE `user` 
SET 
    `status` = '0'
WHERE
    userId = 001;

DELETE FROM `user` 
WHERE
    userId = 101;

CREATE TABLE `order` (
    `orderId` NVARCHAR(10) PRIMARY KEY,
    `userId` NVARCHAR(10),
    `ship` INT,
    `status` NVARCHAR(100)
);
insert into `order` values (1000, 001, 50, 1);
insert into `order` values (2000, 101, 51, 0);

UPDATE `order` 
SET 
    `status` = 0
WHERE
    orderId = 1000;

DELETE FROM `order` 
WHERE
    orderId = 2000;

CREATE TABLE `orderDetail` (
    `orderId` NVARCHAR(10),
    `productId` NVARCHAR(10),
    `quantity` INT,
    `price` INT
);
 insert into `orderdetail` values (1000, 1, 2, 360);
 insert into `orderdetail` values (2000, 2, 1, 90);
 
UPDATE `orderdetail` 
SET 
    quantity = 1
WHERE
    quantity = 2;

DELETE FROM `orderdetail` 
WHERE
    orderId = 2000;