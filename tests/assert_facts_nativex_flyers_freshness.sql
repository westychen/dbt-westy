/*
  This test checks if the max date in the table is exactly today's date.
  If the max date is not today, the query returns a row and the test fails.
*/

select *
from (
    select max(date) as max_date
    from {{ source('databricks_uc_sources', 'facts_nativex_flyers') }}
)
where max_date != date_sub(date(current_timestamp()), 1)