SELECT COUNT(transaction_id) AS sold_indian, '2024-06-10' as transaction_date
FROM {{ ref('stg_transaction') }}
WHERE restaurant_id IN (
    select restaurant_id
    from {{ ref('stg_restaurant') }}
    where cuisine_type = 'Indian'
)
AND transaction_date = '2024-06-10'