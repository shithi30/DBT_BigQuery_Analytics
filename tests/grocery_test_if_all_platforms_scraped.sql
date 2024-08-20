select tbl1.platform
from 
    {{ ref('seed_flyer_grocers') }} tbl1
    left join 
    (select distinct platform from {{ ref('processing_grocery_flyer_items') }}) tbl2 using(platform)
where tbl2.platform is null