with customers as (
    select
        "ID" as customer_id,
        "FIRST_NAME",
        "LAST_NAME"

    from {{ source('jaffle_shop', 'jaffle_shop_customers') }}
)

select * from customers