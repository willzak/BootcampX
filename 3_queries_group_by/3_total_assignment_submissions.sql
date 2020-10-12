SELECT cohorts.name as cohort_name, count(assignment_submissions.id)
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.id) DESC;