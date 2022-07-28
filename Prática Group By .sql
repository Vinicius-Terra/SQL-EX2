

-- EXERCICIO 1

SELECT COUNT("endDate") as "currentExperiences"
FROM experiences;

-- EXERCICIO 2

SELECT "userId" as id, COUNT("userId") as "educations"
FROM educations
GROUP BY "userId";

-- EXERCICIO 3

SELECT u.name as writer, COUNT(t."writerId") as "testimonailCount"
FROM users u
JOIN testimonials t ON t."writerId" = 435
WHERE u.id = 435
GROUP BY u.name;

-- EXERCICIO 4

SELECT MAX(salary) AS "maximumSalary", roles.name as role
FROM jobs
JOIN roles ON roles.id = jobs."roleId"
WHERE jobs.active = true 
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;


-- EXERCICIO BONUS

SELECT schools.name as school, courses.name as course, 
COUNT(educations."courseId") as "studentsCount", educations.status as role
FROM educations
JOIN schools  ON schools.id = educations."schoolId" 
JOIN courses ON courses.id= educations."courseId" 
WHERE educations.status ='ongoing' OR educations.status='finished'
GROUP BY courses.name, schools.name, educations.status
ORDER BY "studentsCount" DESC
LIMIT 3;

