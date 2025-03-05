/*
Minimum and Maximum Values
a. Show the book presented in the library with the maximum number of copies.
b. Just show one (any!) book, the number of copies of which is maximum (is equal to the maximum for all books).
c. Show all books, the number of copies of which is maximum (and is the same for all these books).
d. Show a book (if any) which has more copies than any other book.

UPDATE books
SET 
b_quantity=12
WHERE b_id = 1

*/
# d
SELECT 
	b_name, b_quantity
FROM
	books
WHERE
	b_quantity > (SELECT MAX(b_quantity) FROM books)


# b
SELECT 
	b_name, b_quantity
FROM
	books
WHERE
	b_quantity = (SELECT MAX(b_quantity) 
				  FROM books)
LIMIT 1

SELECT 
	b_name, b_quantity
FROM
	books
ORDER BY b_quantity DESC
LIMIT 1
    
 # a
SELECT 
	b_name, b_quantity
FROM
	books
ORDER BY  b_quantity DESC

