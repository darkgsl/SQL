/*
Rewrite solution 3 so that (while counting returned and not returned books)
 the DBMS operates the initial values of the sb_is_active field (i.e., 'Y' and 'N'), 
 and the transformation to "Returned" and "Not returned" occurs after the coun
*/


SELECT
	#sb_is_active,
    CASE 
        WHEN sb_is_active = 'Y' THEN 'Not returned' 
        ELSE 'Returned' 
    END AS status,
	COUNT(sb_id) AS books
FROM subscriptions
GROUP BY sb_is_active;

SELECT IF(sb_is_active = 'Y', 'Not returned', 'Returned') AS status,
		COUNT(sb_id)									  AS books
FROM subscriptions
GROUP BY status
ORDER BY status DESC