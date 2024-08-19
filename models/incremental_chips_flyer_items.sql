
{{ config(materialized = 'incremental', unique_key = 'flyer_item') }}

select *
from 
    (select *, current_timestamp() model_report_time
    from {{ ref('fleeting_grocery_flyer_items') }}
    where lower(flyer_item) like '%chips%'
    ) tbl1

{% if is_incremental() %}
where report_time >= (select max(model_report_time) from {{ this }})
{% endif %}