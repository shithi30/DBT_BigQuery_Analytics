{% snapshot dokan_history %}

{{ 
    config (
        unique_key='id',
        strategy='check',
        check_cols=['shorthand', 'hq'],
        invalidate_hard_deletes=false  
    ) 
}}

SELECT * FROM dbt_smaitra.seed_platforms

{% endsnapshot %}
