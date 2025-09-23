-- tests/test_flyer_impressions_nonnegative.sql

SELECT *
FROM `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`flyer_impressions`
WHERE flyer_impressions < 0