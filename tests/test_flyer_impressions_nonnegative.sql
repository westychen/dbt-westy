-- tests/test_flyer_impressions_nonnegative.sql

SELECT *
FROM {{ ref('flyer_impressions') }}
WHERE flyer_impressions < 0
