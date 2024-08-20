select tbl1.platform
from 
    {{ ref('seed_flyer_grocers') }} tbl1
    left join 
    (select distinct platform from {{ source('workspace', 'landing_tbl') }}) tbl2 using(platform)
where tbl2.platform is null