
{{ config(materialized = 'incremental', unique_key = 'flyer_item') }}

select *
from 
    (select *, current_timestamp() model_report_time
    from
    ({{ dbt_utils.deduplicate(
        relation = ref('fleeting_grocery_flyer_items'),
        partition_by = 'flyer_item',
        order_by = 'platform'
    ) }}) tbl1
    where lower(flyer_item) like '%chips%'
    ) tbl1

{% if is_incremental() %}
where report_time >= (select max(model_report_time) from {{ this }})
{% endif %}