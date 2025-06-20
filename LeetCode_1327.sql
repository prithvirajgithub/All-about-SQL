with CTE_order_date as (
    select
    product_id,
    order_date,
    unit
    from Orders where order_date  between '2020-02-01' and '2020-02-29'
)

select
    p.product_name,
    SUM(o.unit) AS unit
from 
    CTE_order_date o left join Products p
    on p.product_id = o.product_id
group by p.product_id
having SUM(o.unit) >= 100
