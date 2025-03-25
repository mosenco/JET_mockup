SELECT COUNT(transaction_id) AS sold_pizza, '2024-06-10' as transaction_date
FROM {{ ref('stg_transaction') }}
WHERE restaurant_id IN (
    SELECT restaurant_id
    FROM {{ ref('stg_restaurant') }}
    WHERE cuisine_type = 'Italian'
)
AND transaction_date = '2024-06-10'