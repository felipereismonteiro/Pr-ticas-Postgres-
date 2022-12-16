SELECT MAX(jobs.salary) AS "maximumSalary", companies.name AS role FROM jobs 
JOIN companies 
ON jobs."roleId" = companies.id
WHERE active = 'true' 
GROUP BY companies.id, jobs.salary
ORDER BY salary;