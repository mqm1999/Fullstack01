drop database if exists `Melia`;
create database `Melia`;
use `Melia`;

drop table if exists `hotel`;
create table `hotel`(
`hotelId` nvarchar(100) primary key,
`hotelName` nvarchar(100),
`address` nvarchar(100)
);

drop table if exists `room`;
create table `room`(
`roomId` nvarchar(100) primary key,
`rank` nvarchar(100),
`price` integer,
foreign key (`hotelId`) references `hotel`(`hotelId`)
);

drop table if exists `client`;
create table `client`(
`clientId` nvarchar(100) primary key,
`clientName` nvarchar(100),
`address` nvarchar(100)
);

drop table if exists `booking`;
create table `booking`(
`startDate` date primary key,
`endDate` date,
foreign key (`hotelId`) references `hotel`(`hotelId`),
foreign key (`roomId`) references `room`(`roomId`),
foreign key (`clientId`) references `client`(`clientId`)
);

select `price`, `rank` 
from `room`;

select `clientName`, `clientId`
from `client`, `booking`
where `client`.`clientId` = `booking`.`clientId`
and `booking`.`endDate` is null;

(select `roomId`, `clientName`
from `booking`)
union
(select `roomId`, `clientName`
from `room`, `booking`
where `room`.`roomId` = `booking`.`roomId`
and `startDate` is null
);

select `roomId`
from `room`, `booking` 
where `room`.`roomId` = `booking`.`roomId`
and `startDate` = null;

select count(`room`)
from `room`
where `address` = 'LONDON';

update `room`
set `price` = (`price` * 0.05)
where `rank` = 'SINGLE';