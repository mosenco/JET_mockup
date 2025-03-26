SELECT COUNT(transaction_id) AS sold_indian, transaction_date
FROM {{ ref('stg_transaction') }}
WHERE restaurant_id IN (
    select restaurant_id
    from {{ ref('stg_restaurant') }}
    where cuisine_type = 'Indian'
)
group by transaction_date