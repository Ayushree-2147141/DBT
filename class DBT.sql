create database class;
use class;

create table student(
roll_no int,
std_name varchar(255),
address varchar(255),
phone numeric,
age int
);

insert into student values(001,'Ayushree','BLR Campus',8102501954,23);
insert into student values(002,'Hrishik','KGR Campus',8756346756,24);

create table studentCourse(
course_id int,
roll_no int
);

insert into studentCourse values(11,001);
insert into studentCourse values(12,001);
insert into studentCourse values(13,001);
insert into studentCourse values(11,002);
insert into studentCourse values(12,002);

-- inner join
select studentCourse.course_id, student.std_name, student.age from student inner join studentCourse on student.roll_no=studentCourse.roll_no;

-- left join
select student.std_name, studentCourse.course_id from student left join studentCourse on studentCourse.roll_no = student.roll_no;

-- right join
select student.std_name, studentCourse.course_id as newTable from student right join studentCourse on studentCourse.roll_no = student.roll_no;

-- cross join 
select student.std_name , student.age, studentCourse.course_id from student cross join studentCourse;