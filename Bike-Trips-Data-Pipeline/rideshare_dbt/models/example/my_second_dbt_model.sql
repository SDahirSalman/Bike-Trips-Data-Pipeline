
-- Use the `ref` function to select from other models

select *
from {{ ref('high_docks_stations') }}
where id = 1
