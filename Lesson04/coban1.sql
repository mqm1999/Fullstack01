drop database if exists `rental`;
create database `rental`;
use `rental`;

drop table if exists `client`;
create table `client`(
`clientId` nvarchar(100) primary key,
`name` nvarchar(100),
`phone` nvarchar(100),
`workplace` nvarchar(100)
);

drop table if exists `apartment`;
create table `apartment`(
`apartmentId` nvarchar(100) primary key,
`address` nvarchar(100),
`price` integer,
`owner` nvarchar(100)
);

drop table if exists `contract`;
create table `contract`(
`startDate` date,
`endDate` date,
foreign key (`clientId`) references `client`(`clientId`),
foreign key (`apartmentId`) references `apartment`(`apartmentId`)
);

select `address`, `owner`, `price`
from `apartment` 
where `price` < 10000000;

select `clientId`, `name`, `workplace`, `apartmentId`
from `client`, `apartment`, `contract`
where `contract`.`clientId` = `client`.`clientId`
and `contract`.`apartmentId` = `apartment`.`apartmentId`
and `owner` = 'Nong Van Den';

select `apartmentId`
from `apartment`, `contract`
where `apartment`.`apartmentId` = `contract`.`apartmentId`
and `startDate` = null
and `endDate` = null;

select MAX(`price`), `contract`.`startDate`
from `apartment`, `contract`
where `apartment`.`apartmentId` = `contract`.`apartmentId`;
