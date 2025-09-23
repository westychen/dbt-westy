
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select day_name
from `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`dates`
where day_name is null



  
  
      
    ) dbt_internal_test