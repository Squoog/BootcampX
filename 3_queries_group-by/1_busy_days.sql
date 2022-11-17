SELECT day, count(assignments.*) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(*) > 9
ORDER BY day;