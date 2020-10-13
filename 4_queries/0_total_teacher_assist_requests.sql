SELECT teachers.name, count(*) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;