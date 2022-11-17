SELECT students.name as student, AVG (assignment_submissions.duration) as average_assignment_duration, AVG (assignments.duration) as average_estimated_duration
FROM assignment_submissions
JOIN students on students.id = student_id
JOIN assignments on assignments.id = assignment_id
WHERE end_date is NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;