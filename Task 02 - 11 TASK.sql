/*
Task

Write SQL queries to show:
a) books written by more than one author;
b) books that are written in exactly one genre.
*/

SELECT
	b_name,
    COUNT(b_id)
FROM
	books
JOIN m2m_books_genres USING(b_id)
JOIN genres USING (g_id)
#WHERE COUNT(b_id) = 1
GROUP BY b_name
HAVING 
    COUNT(b_id) =  1




# нужно сгруппировать по автору
select
	b_name,
    COUNT(b_id)
FROM
	books
JOIN m2m_books_authors USING(b_id)
JOIN authors USING (a_id)
GROUP BY b_name
