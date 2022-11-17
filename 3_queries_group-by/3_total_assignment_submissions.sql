SELECT cohorts.name as cohort, COUNT(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
GROUP BY cohort
ORDER BY total_submissions DESC;