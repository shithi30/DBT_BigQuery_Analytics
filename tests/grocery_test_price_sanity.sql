select *
from {{ source('workspace', 'landing_tbl') }}
where offer_price >= regular_price