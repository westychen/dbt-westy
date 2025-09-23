
  
    
        create or replace table `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`dates`
      
      
  using delta
      
      
      
      
      
      
      
      as
      SELECT 
  date, 
  day_name
FROM flipp_data_prod.gold_dimensions.dates
  