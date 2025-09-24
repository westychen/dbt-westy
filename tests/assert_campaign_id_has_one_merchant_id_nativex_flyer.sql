/*
  This test checks that for yesterday's data, each campaign_id
  is associated with only one merchant_id.
*/

select
    campaign_id,
    count(distinct merchant_id) as merchant_count
from {{ source('databricks_uc_sources_facts', 'facts_nativex_flyers') }}
where date = date_sub(date(current_timestamp()), 1)
group by
    campaign_id
having
    count(distinct merchant_id) > 1