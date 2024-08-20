{% macro generate_household_flyer_items(item) %}
    select *, '{{ item }}' household_item
    from {{ ref('fleeting_grocery_flyer_items') }}
    where lower(sku) like '%{{ item }}%'
{% endmacro %}

{% macro windsor_time(bigquery_time, hours_lag = 4) %}
    timestamp_sub({{ bigquery_time }}, interval {{ hours_lag }} hour)
{% endmacro %}
