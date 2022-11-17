SELECT count(assistance_requests) as total_assistances, name from teachers
JOIN assistance_requests on teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;