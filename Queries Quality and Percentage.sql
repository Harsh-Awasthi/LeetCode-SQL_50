select q1.query_name, 
       round(sum(q1.rating/q1.position)/count(q1.query_name),2) as quality,
       round(SUM(CASE WHEN q1.rating < 3 THEN 1 ELSE 0 end) / count(q1.query_name)*100,2) as poor_query_percentage 
from Queries q1
group by q1.query_name;