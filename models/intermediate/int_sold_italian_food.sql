SELECT COUNT(transaction_id) AS sold_pizza, transaction_date
FROM {{ ref('stg_transaction') }}
WHERE restaurant_id IN (
    SELECT restaurant_id
    FROM {{ ref('stg_restaurant') }}
    WHERE cuisine_type = 'Italian'
)
group by transaction_date