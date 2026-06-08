# Write your MySQL query statement below
select emuni.unique_id, emp.name from Employees as emp left join EmployeeUNI as emuni on emp.id=emuni.id;