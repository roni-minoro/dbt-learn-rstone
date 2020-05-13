select
  ID
  , "orderID" as order_id
  , "paymentMethod" as payment_method
  , amount
  , created
  , _batched_at as batched_at
from {{ source('stripe', 'payment') }}