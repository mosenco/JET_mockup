with sold_indian_food as (
    select *
    from {{ ref('int_sold_indian_food') }}
),

sold_italian_food as (
    select *
    from {{ ref('int_sold_italian_food') }}
)

select sold_indian, sold_pizza, transaction_date
from sold_indian_food
inner join sold_italian_food using (transaction_date)