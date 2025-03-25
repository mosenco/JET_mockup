select
    restaurant_id,
    restaurant_name,
    restaurant_brand as brand,
    cuisine_type as cuisine_type

from {{ source('dataset_01', 'restaurants') }}