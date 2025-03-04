/*
a. Show all books that are:
• issued in 1990-2000 years range;
• represented with at least 3 copies
b. Show all subscriptions that had occurred in summer of 2012.
c. Write SQL queries to show:
a) books that have the number of their copies less than average number of all books copies;
b) ids and dates of all subscriptions occurred during the first year of the library work (i.e., up to Dec 31st of the year when the first subscription had happened).
*/
#c b
SELECT
	sb_id, sb_start, sb_finish
FROM
	subscriptions
WHERE year(sb_start) = (SELECT MIN(YEAR(sb_start)) FROM subscriptions)


# c a
SELECT 
    AVG(b_quantity)
FROM
	books
    
SELECT 
	b_name, b_quantity
FROM
	books
WHERE
	b_quantity < (SELECT AVG(b_quantity) FROM books)
    

# b
SELECT *
FROM
	subscriptions
WHERE 
		year(sb_start) = 2012 
    AND 
		month(sb_start) BETWEEN 6 AND 8


SELECT *
FROM
	subscriptions
WHERE 
		sb_start >= '2012-06-01' 
    AND 
		sb_start < '2012-09-01'

# a
SELECT 
	b_name,
    b_year,
    b_quantity
FROM
	books
WHERE 
	b_year BETWEEN 1990 and 2000
    AND b_quantity >= 3
ORDER BY b_year
	