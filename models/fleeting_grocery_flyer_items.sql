{{ config(materialized = 'ephemeral') }}

select 
  flyer_item, 
  sku,
  offer_price, 
  platform, 
  (select max(report_time) from dbt_smaitra.processing_grocery_flyer_items) report_time
from {{ ref('processing_grocery_flyer_items') }}