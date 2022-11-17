SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students on students.id = assignment_submissions.student_id
JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';