{{ dbt_utils.deduplicate(
    relation=source('proc', 'simtbl'),
    partition_by='platform',
    order_by='report_date desc'
) }}