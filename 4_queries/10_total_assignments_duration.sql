SELECT day, count(id) as number_of_assignments, sum(duration) as assignments_duration
FROM assignments
GROUP BY day
ORDER BY day;