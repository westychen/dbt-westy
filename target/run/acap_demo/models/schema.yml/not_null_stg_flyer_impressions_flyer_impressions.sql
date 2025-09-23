
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select flyer_impressions
from `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`stg_flyer_impressions`
where flyer_impressions is null



  
  
      
    ) dbt_internal_test