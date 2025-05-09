select p.project_id,round(ifnull(avg(e.experience_years ),0),2) as average_years 
from Project p
left join Employee e
on p.employee_id=e.employee_id 
group by p.project_id