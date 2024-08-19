select tbl1.platform
from 
    {{ source('workspace', 'seed_tbl') }} tbl1
    left join 
    (select distinct platform from {{ source('workspace', 'processing_tbl') }}) tbl2 using(platform)
where tbl2.platform is null