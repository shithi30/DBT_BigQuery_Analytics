{{ config(materialized='table') }}

select platform, value female_visitors_pct
from {{ ref('proc_simweb_chaldal') }}
where 
  1 = 1
  and category = 'gender'
  and attribute = 'Female'
  and left(string(report_date), 7) = '2024-07'

union all

select platform, value female_visitors_pct
from {{ ref('proc_simweb_daraz') }}
where 
  1 = 1
  and category = 'gender'
  and attribute = 'Female'
  and left(string(report_date), 7) = '2024-07'