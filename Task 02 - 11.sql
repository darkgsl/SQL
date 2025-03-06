
SELECT b_name,
		a_name,
        g_name
FROM
	books 
JOIN m2m_books_authors USING (b_id)
JOIN authors USING (a_id)
JOIN m2m_books_genres USING (b_id)
JOIN genres USING(g_id);
	

select b_name,
		s_name, sb_start, sb_finish
from  subscriptions
JOIN subscribers ON  sb_subscriber = s_id
JOIN books ON sb_book = b_id
	
	