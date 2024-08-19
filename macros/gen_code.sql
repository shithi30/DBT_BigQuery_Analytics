{% macro generate_household_flyer_items(item) %}

select *, '{{ item }}' household_item
from {{ ref('fleeting_grocery_flyer_items') }}
where lower(sku) like '%{{ item }}%'

{% endmacro %}


