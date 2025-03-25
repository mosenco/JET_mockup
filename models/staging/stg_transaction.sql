select
    transaction_id,
    restaurant_id,
    customer_id as client_id,
    transaction_date,
    transaction_value as transaction_amount

from {{ source('dataset_01', 'transactions') }}