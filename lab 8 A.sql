use classexercise;

create table timesheet(
timesheet_id int,
emp_id varchar(5),
department_id varchar(5),
login datetime,
logout datetime,
primary key(timesheet_id),
foreign key(department_id) references department(department_id)
);

insert into timesheet values(1,'e_101','d01','2021-01-03 15:03:04','2021-01-04 06:10:09');
insert into timesheet values(2,'e_102','d02','2021-01-23 09:30:04','2021-01-23 16:10:09');
insert into timesheet values(3,'e_103','d03','2021-01-12 15:03:04','2021-01-12 15:10:09');
insert into timesheet values(4,'e_101','d01','2021-01-20 12:00:04','2021-01-20 18:10:09');
insert into timesheet values(5,'e_102','d02','2021-01-19 10:03:04','2021-01-19 16:10:09');
insert into timesheet values(6,'e_101','d01','2021-01-03 10:03:04','2021-01-04 17:10:09');

create table department(
department_id varchar(5),
department_name varchar(30),
primary key(department_id)
);

insert into department values('d01','Computer Science');
insert into department values('d02','Botany');
insert into department values('d03','Zoology');
insert into department values('d04','Mathematics');

select * from timesheet;

-- select distinct d.department_name as 'department name', 
-- (select sum(timediff(t.logout, t.login)/3600) 
-- from department d, timesheet t
-- where t.department_id = d.department_id)  as 'total time in hrs'
-- from department d
-- join timesheet t
-- where d.department_id = t.department_id;
-- group by d.department_id=t.department_id;

-- select (sum(timediff(t.logout, t.login))/3600) as 'time'
-- from timesheet t, department d
-- where t.department_id=d.department_id;


select d.department_name 'department' , sum(timestampdiff(minute,t.login,t.logout)/60) 'Total hours' 
from timesheet t inner join department d 
on (t.department_id = d.department_id)
group by d.department_name;