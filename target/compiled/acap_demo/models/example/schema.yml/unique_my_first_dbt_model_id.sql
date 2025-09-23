
    
    

select
    id as unique_field,
    count(*) as n_records

from `flipp_data_sandbox`.`dbt_demo_dbt_westy`.`my_first_dbt_model`
where id is not null
group by id
having count(*) > 1


