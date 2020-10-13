SELECT AVG(x.duration)
FROM 
  (SELECT SUM(completed_at - started_at) as duration 
  FROM assistance_requests
  JOIN students on students.id = assistance_requests.student_id
  JOIN cohorts on students.cohort_id = cohorts.id
  GROUP BY cohorts.name
) as x;