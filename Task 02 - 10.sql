/*
Show (for each year) how many books was taken by subscribers.
Show (for each year) how many subscribers were taking books
*/


# Show how many books were returned and are not returned to the library.
# another implementations
SELECT IF(sb_is_active = 'Y', 'Not returned', 'Returned') AS status,
		COUNT(sb_id)									  AS books
FROM subscriptions
GROUP BY status
ORDER BY status DESC


# Show how many books were returned and are not returned to the library.
WITH returnBookT AS (
	SELECT COUNT(sb_id) as returnBook FROM subscriptions WHERE sb_is_active = 'Y'),
    NOreturnBookT AS (
    SELECT COUNT(sb_id) as NOreturnBook FROM subscriptions WHERE sb_is_active = 'N')
SELECT
returnBook, NOreturnBook
FROM
returnBookT,
NOreturnBookT



# Show (for each year) how many subscribers were taking books
SELECT 
	year(sb_start) as yearbook,
    COUNT(DISTINCT sb_subscriber)
from
	subscriptions
GROUP BY yearbook
ORDER BY yearbook 


# Show (for each year) how many books was taken by subscribers.
SELECT 
	year(sb_start) as yearbook,
    COUNT(sb_id)
from
	subscriptions
GROUP BY yearbook
ORDER BY yearbook 