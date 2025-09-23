
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- tests/test_flyer_impressions_nonnegative.sql

SELECT *
FROM `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`flyer_impressions`
WHERE flyer_impressions < 0
  
  
      
    ) dbt_internal_test