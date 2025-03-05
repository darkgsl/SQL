/*
Show the average quantity of copies of books each reader
currently has taken.
Show the average quantity of books each reader currently has
taken.
*/

SELECT
	sb_subscriber, AVG(count(sb_book)) as average
FROM
	subscriptions
GROUP BY sb_subscriber



SELECT
	 sb_subscriber, s_name, count(sb_subscriber)
FROM
	subscriptions
JOIN
	subscribers ON sb_id = s_id
GROUP BY sb_subscriber

SELECT 
	DISTINCT s_id,
	subscribers.s_name
FROM
	subscriptions
JOIN
	subscribers ON s_id = sb_subscriber
    
#вывести читателей и дополнительно среднее количество книг

SELECT s.sb_subscriber, ss.s_name,  COUNT(s.sb_book) as bookQunatity
FROM  subscriptions as s
JOIN
	subscribers ON sb_id = s_id
GROUP BY sb_subscriber

WHERE bookQunatity = (select AVG(sb_subscriber) from subscriptions)
GROUP BY sb_subscriber

JOIN (
		SELECT AVG(sb_book) AS average from subscriptions) AS d
JOIN
	subscribers ON sb_id = s_id

select DISTINCT sb_subscriber, sb_id # s_name,
COUNT(sb_book) as bookQunatity
from  subscriptions

GROUP BY sb_subscriber

        

SELECT AVG(sb_book)  as average from subscriptions


SELECT average
from (SELECT AVG(sb_book)  as average from subscriptions) as tempary

WHERE sb_is_active = 'Y'



Select sb_subscriber, sb_book, sb_is_active
    (SELECT AVG(sb_book) from subscriptions as temp 
		WHERE sb_subscriber = temp.sb_subscriber) as average
from subscriptions
WHERE sb_is_active = 'Y'
