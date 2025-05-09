select p.product_id,ROUND(COALESCE(SUM(u.units * p.price) / SUM(u.units), 0), 2) AS average_price
from Prices p
left join UnitsSold u
on p.product_id=u.product_id and u.purchase_date between p.start_date and p.end_date

group by p.product_id