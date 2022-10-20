

  create  table
    "rideshare_database_cluster"."public"."my_second_dbt_model__dbt_tmp"
    
    
    
  as (
    -- Use the `ref` function to select from other models

select *
from "rideshare_database_cluster"."public"."high_docks_stations"
where id = 1
  );