SELECT assignments.id as id, assignments.day as day, assignments.chapter as chapter, assignments.name as name, count(assistance_requests.id) as total_requests
FROM assignments
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id, assignments.day, assignments.chapter, assignments.name
ORDER BY count(assistance_requests.id) DESC;