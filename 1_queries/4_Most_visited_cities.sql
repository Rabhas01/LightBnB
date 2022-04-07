SELECT city, count(reservations.id) as total_reservations
FROM properties
JOIN reservations ON reservations.id = reservations_id
WHERE total_reservations = max;SELECT properties.city, count(reservations) as total_reservations
FROM reservations
JOIN properties ON property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;