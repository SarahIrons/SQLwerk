select*from employee
inner join payroll on employee.employee_id=payroll.employee_id
inner join job on employee.job_id=job.job_id
inner join salary on job.salary_id=salary.salary_id;

select employee.first_name as 'First Name:',
employee.last_name as 'Last Name:',
payroll.hours_worked as 'Hours:',
salary.hourly_rate as 'Rate:',
payroll.hours_worked*salary.hourly_rate as 'Total Pay:' from employee
inner join payroll on employee.employee_id = payroll.employee_id
inner join job on employee.job_id=job.job_id
inner join salary on job.salary_id=salary.salary_id;

