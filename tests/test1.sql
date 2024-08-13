-- fail if female visitors pct is 0 or less
select platform
from {{ ref('land_simweb') }}
where 
  1 = 1
  and category = 'gender'
  and attribute = 'Female'
  and left(string(report_date), 7) = '2024-07'
  and value_cleaned <= 0