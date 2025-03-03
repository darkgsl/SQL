/*
Show the list of all subscribers along with information of their
names count.
*/
SELECT
	DISTINCT s_name,
	COUNT(*) AS 'peopleCount'
FROM
	library.subscribers
GROUP BY s_name
