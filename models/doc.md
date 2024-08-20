{% docs obj %}
The Google/GCP BigQuery workspace (dataset) for flyer analytics

 Sl | Task                           | Details                                                     
----|--------------------------------|--------------------------------------------------------------
  1 | Scrape grocery flyers          | Freshco, Sobeys, NoFrills, Zehrs etc                         
  2 | Transform flyers data          | For offers, discounts on household items                     
  3 | Warehouse chips entries        | Observe over time, how chips have occupied flyers           
  4 | Preserve flyer stats over time | Update metrics after each run - avg. val/discount, pricetags
{% enddocs %}

{% docs landing_tbl_desc %}
The main (landing) table, ETL-ed to BigQuery after scraping
{% enddocs %}