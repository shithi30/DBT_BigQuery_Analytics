{{ config(materialized='view') }}

select *
-- from big-query-exploration-432116.first_dataset.simweb_ubl
from {{ source('proc', 'simtbl') }}
where platform = 'daraz.com.bd'