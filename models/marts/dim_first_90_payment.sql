with users as (
    select * 
    from {{ ref('stg_user') }}
),

transactions as (
    select *,
    from {{ ref('stg_transaction') }}
)

select count(transaction_id) as first_90_transaction, client_id
from transactions 
left join users 
using (client_id)
where DATE_DIFF(transaction_date, registration_date, DAY) <= 9000000000000
group by client_id