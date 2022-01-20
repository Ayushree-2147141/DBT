use ayushree;

create table Elves(
fname varchar(15) not null,
lname varchar(20) not null,
elvid int not null,
elvposition varchar(15) not null,
primary key(elvid)
);

insert into Elves values('yutegil','daniel',21,'barber');
insert into Elves values('daemon','castaroy',31,'prince');
insert into Elves values('stefan','salvatore',01,'prince');
insert into Elves values('kategiline','bennet',78,'police');
insert into Elves values('elijah','nmikaelson',34,'king');
insert into Elves values('elena','gilbert',11,'queen');
insert into Elves values('caroline','forbes',09,'barber');
insert into Elves values('bonnie','bennet',06,'magician');
insert into Elves values('tyler','lockwood',10,'cook');
insert into Elves values('niclaus','astary',22,'king');

select * from Elves;


select * from Elves
where fname like '%tegil%' or lname like '%astar%' ;

update Elves
set elvposition = 'Council'
where fname like '%tegil%' or lname like '%astar%' ;

select * from Elves;

select concat(concat(upper(substring(fname,1,1)),substring(fname,2)),
concat(' '),
concat(upper(substring(lname,1,1)),substring(lname,2)))
as Council, elvid as Elves_id from Elves
where elvposition='Council';