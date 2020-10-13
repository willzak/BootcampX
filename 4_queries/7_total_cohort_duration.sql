SELECT cohorts.name as cohort, SUM(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students on students.id = assistance_requests.student_id
JOIN cohorts on students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY SUM(completed_at - started_at);