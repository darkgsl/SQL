/*
a. Show all books ordered by issuing year (ascending)
b/ Show all books ordered by issuing year (descending). 
same code , without ASC must HAVE DESC
c. Write an SQL query to show the all authors ordered by their names descending (i.e., "Z -> A").
*/
#b
SELECT
	b_name
FROM
	books
ORDER BY b_name DESC

#a
SELECT
*
FROM
books
ORDER BY b_year ASC