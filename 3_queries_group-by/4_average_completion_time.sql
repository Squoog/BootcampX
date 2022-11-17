SELECT name as student, AVG(duration) as average_assignment_duration
from assignment_submissions
RIGHT OUTER JOIN students on students.id = student_id
WHERE end_date is NULL
GROUP BY name
ORDER BY average_assignment_duration DESC;