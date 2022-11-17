SELECT assignments.id, name, day, chapter, COUNT(assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests on assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;