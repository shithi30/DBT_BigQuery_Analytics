{{ config(materialized='ephemeral') }}

select *
from big-query-exploration-432116.first_dataset.simweb_ubl
where platform = 'chaldal.com'