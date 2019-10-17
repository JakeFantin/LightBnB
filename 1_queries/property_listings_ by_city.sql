SELECT properties.id, properties.title, properties.city, properties.cost_per_night, AVG(property_reviews.rating) 
FROM properties JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE city LIKE '%ancouver'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night ASC
LIMIT 10;