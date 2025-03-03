/*
Show ids (without duplication) of those subscribers, who visited
the library at least once.
*/

SELECT
	DISTINCT sb_subscriber
FROM
	subscriptions
/*
SELECT 
	DISTINCT s_id,
	subscribers.s_name
FROM
	subscriptions
JOIN
	subscribers ON s_id = sb_subscriber
    */
