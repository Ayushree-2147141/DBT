create table login(
login_id varchar(10) not null,
login_username varchar(20) unique,
login_password varchar(15) not null,
primary key(login_id)
);

insert into login values('L_101','priyanka','priyanka@123');
insert into login values('L_102','jeetank','jeetank@123');
insert into login values('L_103','ankur','ankur@123');
insert into login values('L_104','adarsh','adarsh@123');
insert into login values('L_105','ashwin','ashwin@123');
insert into login values('A_101','Admin_1','admin@123');
insert into login values('A_102','Admin_2','admin@123');
insert into login values('A_103','Admin_3','admin@123');



create table patient(
patient_id int,
login_id varchar(10) not null,
patient_fname varchar(15) not null,
patient_mname varchar(10),
patient_lname varchar(20) not null,
registration_date date not null,
reg_type varchar(10),
patient_contact varchar(50),
patient_address varchar(100) not null,
patient_age int not null,
primary key(patient_id),
foreign key(login_id) references login(login_id)
);

insert into patient values(101,'L_101','Priyanka','','Yadav','2018-09-21','online','9078563456 ,7856786745','SG Palya',23);
insert into patient values(102,'L_102','Jeetank','Naidu','Reenesh','2016-11-12','offline','6745783467 ,8967904567','MG Road',22);
insert into patient values(103,'L_103','Ankur','','Sharma','2021-01-15','online','6745890098 ,9898768776','SG Palya',24);
insert into patient values(104,'L_104','Adarsh','D.','Verma','2018-09-21','offline','9890987687 ,9856784567','Brigadiers Road',22);
insert into patient values(105,'L_105','Ashwin','Kumar','V.','2022-01-07','online','8798769809 ,9876435678','Jayanagar',25);

create table admin(
admin_id int,
login_id varchar(10),
admin_name varchar(20),
admin_Role varchar(30),
admin_RoleDesc varchar(30),
primary key (admin_id),
foreign key(login_id) references login(login_id)
);

insert into admin values(101,'A_101','MR. Admin Singh','Manager', 'Maintains the count of patient');
insert into admin values(102,'A_102','MS. Admin Babbar','Controller', 'Controls the flow of data');
insert into admin values(103,'A_103','MRS. Admin Kesri','Sr. Manager', 'Looks into DB');

create table doctor(
doctor_id varchar(10),
doctor_name varchar(20),
doctor_specialisation varchar(20),
primary key(doctor_id)
);

insert into doctor values('D_101','Dr. Ajay Verma', 'Gynaecologist');
insert into doctor values('D_102','Dr. Ganga Agnihotri', 'Physician');
insert into doctor values('D_103','Dr. Sheetal Deo', 'Gyanecologist');
insert into doctor values('D_104','Dr. Ramanujan Aiyer', 'Oncologist');
insert into doctor values('D_105','Dr. Shreenmoyee C.', 'Paedatrician');
insert into doctor values('D_106','Dr. Ayushree C.', 'Gyanecologist');

create table appointment(
patient_id int not null,
appt_time time,
appt_id int,
appt_date date not null,
doctor_id varchar(10),
primary key(patient_id,doctor_id,appt_date,appt_time),
foreign key(patient_id) references patient(patient_id),
foreign key(doctor_id) references doctor(doctor_id)
);

insert into appointment values(101,'12:00:00',01,'2021-09-21','D_101');
insert into appointment values(102,'11:00:00',02,'2022-11-01','D_102');
insert into appointment values(103,'12:10:00',01,'2021-11-09','D_103');
insert into appointment values(101,'12:10:00',04,'2018-09-21','D_101');
insert into appointment values(101,'13:15:00',05,'2021-09-21','D_102');
insert into appointment values(103,'12:30:00',02,'2022-01-07','D_104');
insert into appointment values(102,'12:00:00',05,'2021-09-20','D_102');


-- display the doctors who have their appointment scheduled
select distinct doctor.doctor_id as dr_id, doctor.doctor_name as dr_name , appointment.appt_time as time, appointment.appt_date as date
from doctor
inner join appointment on doctor.doctor_id = appointment.doctor_id;

-- display the names of patient who has their apt with D_102
select distinct patient.patient_fname , patient.patient_mname , patient.patient_lname
from patient
join appointment on appointment.patient_id = patient.patient_id and appointment.doctor_id = 'D_102';

