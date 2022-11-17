SELECT name, email, id, cohort_id FROM students
WHERE email not like '%gmail.com'
AND phone is null;