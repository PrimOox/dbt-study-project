with orders as ( 
    select
        "ID" as order_id,
        "USER_ID" as customer_id,
        "ORDER_DATE",
        "STATUS"

    from {{ source('jaffle_shop', 'jaffle_shop_orders') }}

    {{ limit_data_in_dev(column_name = 'order_date', dev_days_of_data = 3000) }}
)

select * from orders