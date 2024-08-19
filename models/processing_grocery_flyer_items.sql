{{ config(materialized = "view") }}

select 
    * except(report_time), 
    parse_timestamp("%Y-%m-%d, %I:%M %p", report_time) report_time
from {{ source('workspace', 'landing_tbl') }}

