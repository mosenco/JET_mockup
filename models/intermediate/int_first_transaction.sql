select min(transaction_date) as first_transaction, client_id
from {{ ref('stg_transaction') }}
group by client_id