/*
Show the average quantity of copies of books each reader
currently has taken.
Show the average quantity of books each reader currently has
taken.
*/


WITH subscriber_book_counts AS (
    SELECT
        sb_subscriber,
		subscr.s_name,
        COUNT(sb_book) AS book_count
    FROM
        subscriptions
	JOIN
		subscribers AS subscr ON s_id = sb_subscriber
    GROUP BY
        sb_subscriber
),
aggregated_data AS (
    SELECT
        MAX(book_count) AS max_books,
        AVG(book_count) AS avg_books
    FROM
        subscriber_book_counts
)
SELECT
    s.sb_subscriber,
    s.s_name,
    s.book_count,
    a.max_books,
    a.avg_books
FROM
    subscriber_book_counts s,
    aggregated_data a;
    
    
    

#здесь все работает, но неправильно считает срднее
SELECT 
	sb_subscriber, s_name, book_count, average
FROM (
	SELECT
		sb_subscriber, book_count_internal as book_count, AVG(book_count_internal) as average
	FROM
		# subscriptions
        (
        SELECT
        		sb_subscriber, count(sb_book) as book_count_internal
		FROM
			subscriptions
		GROUP BY sb_subscriber
		) as subquey2
        
GROUP BY sb_subscriber
) AS subquery
	JOIN
		subscribers AS s ON s_id = sb_subscriber
GROUP BY sb_subscriber;

#, s_name
SELECT 
    sb_subscriber,
    s.s_name,
   # COUNT(sub.sb_book) AS book_count,
    AVG(sub.book_count) AS average
FROM (
    SELECT
        sb_subscriber,
        COUNT(sb_book) AS book_count
    FROM
        subscriptions
    GROUP BY
        sb_subscriber
) AS sub
JOIN 
    subscribers AS s ON s.s_id = sub.sb_subscriber
GROUP BY 
    sb_subscriber
    
    , s.s_name;
    
    #------
#-----



SELECT 
    s.sb_subscriber,
    s.s_name,
    COUNT(sub.sb_book) AS "всего книг",
    AVG(sub.book_count) AS average
FROM (
    SELECT
        sb_subscriber,
        COUNT(sb_book) AS book_count
    FROM
        subscriptions
    GROUP BY
        sb_subscriber, sb_book
) AS sub
JOIN 
    subscribers AS s ON s.s_id = sub.sb_subscriber
GROUP BY 
    s.sb_subscriber, s.s_name;
    
    
    #-----------
    SELECT 
    s.s_id AS sb_subscriber,
    s.s_name,
    COUNT(sub.sb_book) AS "всего книг",
    AVG(sub.book_count) AS average
FROM (
    SELECT
        sb_subscriber,
        sb_book,
        COUNT(sb_book) AS book_count
    FROM
        subscriptions
    GROUP BY
        sb_subscriber, sb_book
) AS sub
JOIN 
    subscribers AS s ON s.s_id = sub.sb_subscriber
GROUP BY 
    s.s_id, s.s_name;
    #=====
    
    
№----------

SELECT
	sb_subscriber, count(sb_book) as average
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
