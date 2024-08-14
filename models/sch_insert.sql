{{ config(materialized='table') }}

select 'chollo?' kiholo, DATETIME_SUB(CURRENT_DATETIME(), INTERVAL 4 HOUR) kokhon
