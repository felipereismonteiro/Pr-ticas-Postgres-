SELECT schools.name AS school, courses.name AS course, COUNT(educations."userId") FROM educations 
JOIN schools
ON educations."schoolId" = schools.id
JOIN courses 
ON educations."courseId" = courses.id
WHERE status='ongoing' 
OR status='finished' 
GROUP BY schools.name, courses.name
LIMIT 3;