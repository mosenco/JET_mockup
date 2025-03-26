-- this one uses first transaction and count 90 days

with first_transaction_view as (
    select *
    from {{ ref('int_first_transaction') }}
)

select count(transaction_id) as first_90_transaction, client_id
from {{ ref('stg_transaction') }}
left join first_transaction_view
using (client_id)
where DATE_DIFF(transaction_date, first_transaction, DAY) <= 90
group by client_id
