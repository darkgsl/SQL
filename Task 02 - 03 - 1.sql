/*
Show how many books are there in the library.
*/
SELECT 
	COUNT(b_id) as 'количество книг в библиотеке'
FROM
	books

/*
Syntax Explanation
COUNT(*) Classic approach, shows total count.
COUNT(1) Alternative notation for the classic approach.
COUNT(PrimaryKey) Alternative notation for the classic approach.
COUNT(FieldName) Shows count of all not NULL values.
COUNT(DISTINCT FieldName) Shows count of all not NULL values without
duplication.
*/