create database warmUp;

use warmUp;

create table hotel(
hotel_no varchar(10) not null,
hotel_name varchar(30) not null,
address varchar(100) not null,
primary key(hotel_no),
unique(hotel_name)
);

insert into hotel values('H_101','Radission Blue','LalBagh Botanical Garden, Bengaluru');
insert into hotel values('H_102','Ashoka Hotel','Sg Palya,Bengaluru');
insert into hotel values('H_103','Hyatt Residency','Church Street,Bengaluru');
insert into hotel values('H_104','Lemon Tea Hotel','Mg Road, Rajpal Nagar');
insert into hotel values('H_105','The Taj Hotel','Bellasur Lake, Delhi');

create table room(
room_no int not null,
hotel_no varchar(10) not null,
room_type varchar(15) not null,
price bigint not null,
primary key(room_no, hotel_no),
foreign key(hotel_no) references hotel(hotel_no)
);

insert into room values (101,'H_101','Suite',2300);
insert into room values (102,'H_102','Luxury',2300);
insert into room values (101,'H_103','Normal',2300);
insert into room values (104,'H_104','Balcony',2300);
insert into room values (102,'H_101','Luxury',2300);

create table booking(
hotel_no varchar(10) not null,
guest_no int not null,
date_from date not null,
date_to date not null,
room_no int not null,
primary key(hotel_no,guest_no),
foreign key(hotel_no) references hotel(hotel_no)
);

insert into booking values('H_102',23,'2015-03-04','2015-03-15',102);
insert into booking values('H_104',21,'2019-01-12','2019-03-12',210);
insert into booking values('H_105',43,'2021-12-04','2021-12-07',103);
insert into booking values('H_102',26,'2018-10-12','2018-11-12',102);
insert into booking values('H_102',13,'2015-03-04','2015-03-15',301);

create table guest(
hotel_no varchar(10) not null,
guest_no int not null,
guest_name varchar(20) not null,
guest_address varchar(100) not null,
primary key(guest_no),
foreign key(hotel_no) references hotel(hotel_no)
);

insert into guest values('H_102',23,'Mr. Pankaj Sharma','Bangalore');
insert into guest values('H_103',21,'Mrs. Smita Sinha','Mumbai');
insert into guest values('H_104',24,'Mr. Taneja','Bangalore');
insert into guest values('H_101',27,'Mr. Yuvraj Singh','Hyderabad');
insert into guest values('H_102',13,'Mrs. Priyanka Yadav','Kolkata');


select * from guest;

delete from guest 
where hotel_no = 'H_102' ;

select * from guest;

update guest 
set guest_name = 'Mr. Krishna Singh'
where guest_no = 24;

select * from guest;


select * from booking;

select * from guest;

select * from hotel;

select * from room;