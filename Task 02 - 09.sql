/*
Show the average quantity of copies of books each reader
currently has taken.
Show the average quantity of books each reader currently has
taken.
*/

#вывести читателей и дополнительно среднее количество книг
select
sb_subscriber, d.average
from  subscriptions
JOIN (
		SELECT AVG(sb_book) AS average from subscriptions) AS d

SELECT AVG(sb_book)  as average from subscriptions


SELECT average
from (SELECT AVG(sb_book)  as average from subscriptions)

WHERE sb_is_active = 'Y'



Select sb_subscriber, sb_book, sb_is_active
    (SELECT AVG(sb_book) from subscriptions as temp 
		WHERE sb_subscriber = temp.sb_subscriber) as average
from subscriptions
WHERE sb_is_active = 'Y'
