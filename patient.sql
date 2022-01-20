use ayushree;

create table login(
login_id bigint not null,
login_username varchar(20) not null,
login_password varchar(20) not null,
unique (login_username),
primary key (login_id)
);

insert into login values(231256782345,'priyanka','ghf748rrbgds');
insert into login values(658747873974,'yamini','gdh3453dffdf');
insert into login values(437628787243,'ananya','gdhjksdb6384');
insert into login values(637887543532,'divya','geuhd67345');
insert into login values(473593454544,'arjun','jkjdsbh635');
insert into login values(476328535465,'hrishik','ghsfb345');
insert into login values(473687534564,'jeetank','yuiwhebcbx');
insert into login values(567637856457,'adarsh','hfjxcvh');
insert into login values(658743854664,'ankuri','gfdhbxjv');
insert into login values(758346456575,'arunabha','yusfjhkcx');




create table user(
username varchar(20) not null,
user_id bigint not null,
user_contact bigint not null,
user_address varchar(100) not null,
primary key(user_id),
unique(username)
);

insert into user values('vanshika',678945678945,8823892323,'SG Palya');
insert into user values('priya',674678326871,8907654321,'Koramangla');
insert into user values('shipra',345678903456,9089765433,'Chiclane');
insert into user values('shikha',019284563483,8765435678,'Kanke');
insert into user values('sunny',789056347890,6745236789,'Nandi Hills');
insert into user values('sandeep',234567899876,8756789067,'Hostel');
insert into user values('amber',785690453478,6789567890,'Diamond factory');
insert into user values('yash',785634896745,9876567845,'Ranchi');
insert into user values('gyan',905634896745,6756896789,'Pune');
insert into user values('dhanashree',124567893456,7856786745,'JP Nagar');


create table admin(
admin_id bigint not null,
admin_role varchar(15) not null,
admin_desc varchar(30) not null,
primary key (admin_id)
);

insert into admin values(675444689898,'Maintenance','Maintains the DB of patients.');
insert into admin values(879556456458,'Manages','Manages the data. ');
insert into admin values(787766554356,'Monitors','gjfbsd hdfjdv hfidn ');


create table patient(
patient_id bigint not null,
indoor_patient int not null,
outdoor_patient int not null,
first_name varchar(15) not null,
middle_name varchar(15) not null,
last_name varchar(15) not null,
reg_date date not null,
type_of_reg varchar(15) not null,
patient_contact bigint not null,
patient_address varchar(100) not null,
primary key(patient_id)
-- foreign key(patient_id) references user(user_id)
);

insert into patient values(678945678948,1,0,'Priyanka','S.','Yadav','2021-09-03','online',7867567890,'GV Ullur');
insert into patient values(345567567573,0,1,'Ankur','Pethi','Sharma','2022-09-03','online',5657567873,'hdfughjf');
insert into patient values(456765868762,1,0,'Jeetank','Naidu','Reenesh','2021-08-03','offline',5634789043,'Ramanuja');
insert into patient values(988765454424,1,0,'Adarsh','S.','Verma','2021-09-03','online',9887364734,'Bariatu');
insert into patient values(455577677347,1,0,'Ananya','S.','Yadav','2021-09-08','offline',6767867456,'Ranchi');
insert into patient values(678945678655,0,1,'Divya','S.','Yadav','2021-12-05','offline',8765879876,'Daltonganj');
insert into patient values(678945678235,1,0,'Priya','S.','Yadav','2021-09-27','offline',9876547654,'Dhurwa');
insert into patient values(678945678455,0,1,'Naazir','S.','Yadav','2021-11-03','online',8765784534,'Rotrari');
insert into patient values(678945678785,1,0,'tara','S.','Yadav','2021-09-21','online',9834560945,'tullu');


create table appointment(
appt_id int not null,
appt_time time not null,
dr_id int not null,
dr_name varchar(20),
appt_type varchar(15) not null,
appt_date date not null,
apt_p_id bigint not null,
primary key (appt_id,apt_p_id),
foreign key(apt_p_id) references patient(patient_id)
);


insert into appointment values(12,'07:00',34,'Dr. Priyanka Yadav','offline','2015-03-03',678945678945);
insert into appointment values(9,'04:00',36,'Dr. Ananya Mitra','offline','2015-03-03',678945678945);
insert into appointment values(10,'17:00',31,'Dr. Divya Prasad','offline','2015-03-03',678945678945);
insert into appointment values(5,'07:10',34,'Dr. Priya Gupta','online','2015-03-03',785690453478);
insert into appointment values(21,'17:30',34,'Dr. Yamini Gupta','offline','2015-03-03',678945678945);
insert into appointment values(17,'13:20',38,'Dr. Ankur Sharma','offline','2015-03-03',678945678945);
insert into appointment values(12,'19:00',32,'Dr. Adarsh Verma','online','2015-03-03',678945678945);
insert into appointment values(6,'23:00',36,'Dr. Jeetank Naidu Reenesh','offline','2015-03-03',678945678945);
