#коррелирующий подзапрос 
select b_name, b_quantity
from 
	books as ext
where b_quantity > ALL (SELECT b_quantity
						FROM books as int11
                        where ext.b_id != 
                        int11.b_id)

SELECT b_quantity
FROM books as int11
                        where ext.b_id != 
                        int11.b_id

select  b_name, b_quantity,
	RANK() OVER (ORDER BY b_quantity DESC) as rn 
    from books


select
 b_name, b_quantity
from (select  b_name, b_quantity,
	RANK() OVER (ORDER BY b_quantity DESC) as rn from books) as temporary_data
WHERE	rn = 1
 


select
 b_name, b_quantity
 from
 books
WHERE	b_quantity = (Select MAX(b_quantity) from books)
 
 

select
 b_name, b_quantity
 from
 books
 order by b_quantity desc
 limit 1;
 