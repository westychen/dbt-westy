
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`stg_flyer_impressions`

where not(flyer_impressions flyer_impressions >= 0)


  
  
      
    ) dbt_internal_test