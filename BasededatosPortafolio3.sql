/* cuantos productos tiene el estado*/
use sales_db;
select type,
count(price_ars) cantidadproductos
from products
group by type
order by cantidadproductos desc;
/* precio de productos desde el mas barato al mas caro*/
use sales_db;
select price_ars,product_id,name,
count(name) 
from products
group by price_ars
order by price_ars asc;
/*estados con menos usuarios */
use sales_db;
select state,
count(user_id) as num_users
from users
group by state
order by num_users asc;
/* fecha minima sales*/

use sales_db;
select date,
count(name) 
from sales

group by date
order by order_id asc;

/* productos con mas unidades*/
use sales_db;
select units,
count(order_id)
from sales
group by units
order by units desc;

