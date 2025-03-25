select
    customer_id as client_id,
    sign_up_date as registration_date,
    sex as gender,
    birthday,
    username

from {{ source('dataset_01', 'user') }}