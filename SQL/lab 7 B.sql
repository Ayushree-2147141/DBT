use ayushree;

-- display the doctors who have their appointment scheduled
select distinct doctor.doctor_id as dr_id, doctor.doctor_name as dr_name , appointment.appt_time as time, appointment.appt_date as date
from doctor
inner join appointment on doctor.doctor_id = appointment.doctor_id;

-- display the names of patient who has their apt with D_102
	select distinct patient.patient_fname , patient.patient_mname , patient.patient_lname
	from patient
	join appointment on appointment.patient_id = patient.patient_id and appointment.doctor_id = 'D_102';

-- display the patient name who has their appointment scheduled in between 2021-10-01 and 2022-01-01
select distinct patient.patient_fname, patient.patient_mname, patient.patient_lname , appointment.appt_date
from patient 
left join appointment 
on appointment.patient_id = patient.patient_id and 
appointment.appt_date between '2021-08-01' and '2022-01-01';

