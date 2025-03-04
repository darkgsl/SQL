/*
Show all books that are:
• issued in 1990-2000 years range;
• represented with at least 3 copies
*/

SELECT *
FROM
	books
WHERE b_year BETWEEN 1990 and 2000
AND 
b_quantity >= 3
	

