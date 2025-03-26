with last_seven_average as (
    select *
    from {{ ref('int_average_last_seven_transaction') }}
),

restaurant as (
    select *
    from {{ ref('stg_restaurant') }}
)


select average_transaction, brand
from last_seven_average
left join restaurant using (restaurant_id)