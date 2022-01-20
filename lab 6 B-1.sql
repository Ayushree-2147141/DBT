
-- contains a in the name
select doctor.doctor_name , doctor.doctor_specialisation
from doctor
where doctor_name like '%a%';

-- starts with A
select doctor.doctor_name , doctor.doctor_specialisation
from doctor
where doctor_name like 'DR. A%';

