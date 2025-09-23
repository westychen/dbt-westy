
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select date
from `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`flyer_impressions`
where date is null



  
  
      
    ) dbt_internal_test