/*
a. Show total, minimum, maximum, and average copies of books
quantities.
total - 33
MIN - 1
MAX - 12
AVG - 4?7

b. Write an SQL query to show the first and the last dates when a book was taken by a subscriber.
*/
# b
SELECT 
	  sb_start as 'first date',
	  sb_finish as 'last date',
      b_name,
      s_name
      
FROM
	subscriptions
JOIN
	books ON sb_book = b_id
JOIN 
	subscribers ON sb_subscriber = s_id
# a
SELECT
	SUM(b_quantity) as 'SUM',
    MAX(b_quantity) as 'max',
    MIN(b_quantity) as 'min',
	AVG(b_quantity) as 'avg'
FROM
	books
# WHERE b_quantity >13
    
