-- {{ generate_household_flyer_items('corn') }}

-- select {{ windsor_time('current_timestamp()') }}

-- select * from {{ ref('fleeting_grocery_flyer_items') }}

select flyer_item, count(*) instances
from
    ({{ dbt_utils.deduplicate(
        relation = ref('fleeting_grocery_flyer_items'),
        partition_by = 'flyer_item',
        order_by = 'platform'
    ) }}) tbl1
group by 1
order by 2 desc
