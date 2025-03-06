/*
Write SQL queries to show:
a) average number of copies of books registered in the library;
b) average number of days a subscriber is registered in the library (the registration period starts with the first subscription date and ends with the current date).

*/
SELECT
	AVG(DATEDIFF(CURDATE(), sb_start))
FROM
	subscriptions
where sb_subscriber = 4
	


#a) average number of copies of books registered in the library;
SELECT
	AVG(b_quantity) as 'average number of copies of books '
FROM
	books