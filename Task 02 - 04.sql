/*
a. Show how many copies of books are taken by subscribers
b. Show how many different books are taken by subscribers.
*/
# a
SELECT 
	COUNT(*) AS 'count BOOKS'
FROM 
	subscriptions
WHERE sb_is_active = 'Y'

# b
