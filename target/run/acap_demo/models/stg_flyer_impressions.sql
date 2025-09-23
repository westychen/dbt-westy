
  
    
        create or replace table `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`stg_flyer_impressions`
      
      
  using delta
      
      
      
      
      
      
      
      as
      SELECT 
  date, 
  SUM(flyer_impressions) AS flyer_impressions
FROM flipp_data_prod.gold_facts.facts_campaigns
WHERE date >= '2025-07-02'
GROUP BY date
ORDER BY date
  