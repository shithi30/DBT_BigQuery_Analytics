{% macro to_celsius(fahrenheit_column, decimal_places=1) %}
    ROUND(({{ fahrenheit_column }} - 32) * 5/9, {{ decimal_places }})
{% endmacro %}

/*
{% macro generate_profit_model(table_name) %}
SELECT 
    sales_date, 
    SUM(quantity_sold * unit_sell_price) as total_revenue, 
    SUM(quantity_sold * unit_purchase_cost) as total_cost, 
    SUM(quantity_sold * unit_sell_price) - SUM(quantity_sold * unit_purchase_cost) as total_profit 
FROM {{ source('training', table_name) }} 
GROUP BY sales_date
{% endmacro %}
*/

{% macro generate_plt_data(plt_name) %}
{{ config(materialized='view') }}
select *
from big-query-exploration-432116.first_dataset.simweb_ubl
where platform = '{{ plt_name }}'
{% endmacro %}
