{% snapshot historical_grocery_flyer_summary %}

{{ config (unique_key = 'platform', strategy = 'check', check_cols = ['flyer_items', 'no_pricetag_items'], invalidate_hard_deletes = false) }}

select 
  platform, 
  count(*) flyer_items,
  count(case when offer != '' then offer else null end) flyer_offer_items,
  round(avg(discount_spend), 2) flyer_avg_discount,
  count(case when offer_price is null then flyer_item else null end) no_pricetag_items,
  round(sum(offer_price), 2) flyer_total_value,
  round(avg(offer_price), 2) value_per_item,
from {{ ref('processing_grocery_flyer_items') }}
group by 1

{% endsnapshot %}
