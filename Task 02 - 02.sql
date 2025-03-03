/*
a) all ids (without duplication) of all books ever taken by subscribers;
b) all books along with count of times each book was taken by a subscriber..
*/
-- a)
SELECT
	DISTINCT sb_book
FROM
	subscriptions
    
-- b)
SELECT
	sb_book,
    COUNT(*) AS bookCount,
    b_name
FROM
	subscriptions
JOIN
	books ON sb_book = b_id
GROUP BY sb_book
	
    
/*
SELECT 
	DISTINCT s_id,
	subscribers.s_name
FROM
	subscriptions
JOIN
	subscribers ON s_id = sb_subscriber
    */
