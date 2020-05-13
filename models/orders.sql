select
  o.order_id
  , o.customer_id
  , o.order_date
  , o.status
  --, p."paymentMethod"
  , sum(p.amount) as order_amount
  --, p.created
  from {{ ref('stg_orders') }} o
join {{ ref('stg_payments') }} p
on o.order_id=p.order_id
group by 1,2,3,4