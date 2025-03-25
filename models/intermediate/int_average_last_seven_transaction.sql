SELECT 
    AVG(transaction_amount) as average_transaction, 
    restaurant_id
FROM {{ ref('stg_transaction') }}
--WHERE transaction_date >= DATE({{ dbt.current_timestamp() }}) - INTERVAL 7 YEAR 2024-06-10
WHERE transaction_date >= '2024-06-10' - INTERVAL 7 DAY
GROUP BY restaurant_id


