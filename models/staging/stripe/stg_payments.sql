select
    "ID" as payment_id,
    "ORDERID" as order_id,
    "PAYMENTMETHOD" as payment_method,
    "STATUS",
    -- amount is stored in cents, convert it to dollars
    {{ cents_to_dollars("AMOUNT", 4) }} as amount,
    "CREATED" as created_at

from {{ source('stripe', 'stripe_payments') }} 