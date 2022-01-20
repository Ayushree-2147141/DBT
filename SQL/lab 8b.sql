use ayushree;

select * from appointment;
select * from patient;
select * from login;

insert into login values('L_106','Hrishik','hrishik@123');
insert into login values('L_107','Hrithik','hrithik@123');
insert into login values('L_108','Shreyanshi','shreyanshi@123');
insert into login values('L_109','Bhoomi','bhoomi@123');
insert into login values('L_110','Isha','isha@123');
insert into login values('L_111','Tanushree','tanushree@123');
insert into login values('L_112','Divya','divya@123');
insert into login values('L_113','Priya','priya@123');

         
-- display the patient names who had there appointments between a range of dates.         
select p.patient_fname, p.patient_lname
from patient p 
where patient_id in (select patient_id
from appointment
where appt_date between '2020-01-01' and '2022-01-01');

-- display the details of patient who has their appointment 
-- and their age is greater than that of patient '102'
SELECT a.appt_id, a.patient_id, p.patient_fname , p.patient_age
FROM appointment a, patient p
WHERE a.patient_id = p.patient_id AND p.patient_age >
(SELECT patient_age
FROM patient
WHERE patient_id =  102)
order by a.appt_id;








