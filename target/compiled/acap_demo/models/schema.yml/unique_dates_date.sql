
    
    

select
    date as unique_field,
    count(*) as n_records

from `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`dates`
where date is not null
group by date
having count(*) > 1


