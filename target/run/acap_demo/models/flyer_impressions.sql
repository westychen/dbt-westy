
  
    
        create or replace table `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`flyer_impressions`
      
      
  using delta
      
      
      
      
      
      
      
      as
      WITH daily_impressions AS (
  SELECT 
    f.date,
    d.day_name,
    f.flyer_impressions
  FROM `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`stg_flyer_impressions` f
  JOIN `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`dates` d
    ON f.date = d.date
)
SELECT 
  date,
  day_name,
  flyer_impressions,
  SUM(flyer_impressions) OVER (ORDER BY date) as running_total_impressions,
  AVG(flyer_impressions) OVER (PARTITION BY day_name) as avg_impressions_by_day
FROM daily_impressions
ORDER BY date
  