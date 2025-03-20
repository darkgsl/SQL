SELECT myYear as "Год отгрузки", 
CAST(myValue as DECIMAL) as "Годовая сумма отгрузки",  
CAST(myAVG as DECIMAL)
 FROM (
		Select year(processed_data.date) myYear, SUM(processed_data.value) as myValue, AVG(processed_data.value) as myAVG
        FROM processed_data
        GROUP BY myYear) as subQuery
#GROUP BY year(processed_data.date);