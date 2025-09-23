



select
    1
from `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`flyer_impressions`

where not(running_total_impressions running_total_impressions >= flyer_impressions)

