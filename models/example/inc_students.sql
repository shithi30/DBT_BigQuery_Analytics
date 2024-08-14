
{{ config(materialized='incremental', unique_key='id') }}

select *, CURRENT_TIMESTAMP() report_time
from dbt_smaitra.students

{% if is_incremental() %}
where created_at >= (select max(report_time) from {{ this }})
{% endif %}