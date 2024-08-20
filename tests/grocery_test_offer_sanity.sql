select *
from {{ source('workspace', 'landing_tbl') }}
where offer = '' and discount_spend is not null