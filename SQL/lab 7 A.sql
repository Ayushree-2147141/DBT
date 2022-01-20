create database classexercise;
use classexercise;

create table users(
user_id int, 
banned varchar(4),
user_role varchar(10),
primary key(user_id)
);

insert into users values(1,'no','client');
insert into users values(2,'yes','driver');
insert into users values(3,'no','driver');
insert into users values(4,'yes','client');
insert into users values(5,'no','driver');
insert into users values(6,'no','driver');
insert into users values(7,'no','client');
insert into users values(8,'no','client');

create table trips(
trip_id int,
client_id int,
driver_id int,
city_id int,
trip_status varchar(30),
book_date date,
primary key(trip_id),
foreign key (client_id) references users(user_id),
foreign key (driver_id) references users(user_id)
);

insert into trips values(1,1,4,3,'completed','2022-01-13');
insert into trips values(2,7,4,1,'completed','2021-02-10');
insert into trips values(3,7,6,2,'completed','2022-01-13');
insert into trips values(4,1,5,5,'completed','2022-01-13');
insert into trips values(5,1,5,3,'cancelled by driver','2020-11-10');
insert into trips values(6,8,6,2,'cancelled by client','2019-01-13');
insert into trips values(7,1,6,1,'cancelled by client','2022-01-13');

SELECT book_date Day, ROUND(COUNT(IF(trip_status != 'completed', TRUE, NULL)) / COUNT(*), 2) 'Cancellation Rate'
FROM trips WHERE (book_date = date '2022-01-13') AND 
client_id IN (SELECT user_id FROM Users WHERE banned = 'No') AND
driver_id in (SELECT user_id FROM Users WHERE banned = 'No');

