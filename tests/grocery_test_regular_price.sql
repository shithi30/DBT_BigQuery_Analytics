
select *
from 
  (select flyer_item, offer_price, discount_spend, round(offer_price + discount_spend, 4) regular_price_expected, regular_price
  from {{ ref('processing_grocery_flyer_items') }}
  ) tbl1
where regular_price != regular_price_expected