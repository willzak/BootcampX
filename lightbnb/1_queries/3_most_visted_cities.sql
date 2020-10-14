SELECT city, count(reservations.id) as total_reservations
FROM properties
JOIN reservations ON reservations.property_id = properties.id
GROUP BY city
ORDER BY count(reservations.id) DESC;