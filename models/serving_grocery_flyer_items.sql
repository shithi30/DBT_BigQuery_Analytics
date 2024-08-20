{{ config(materialized = 'view') }}

{{ generate_household_flyer_items('bread') }}
union all
{{ generate_household_flyer_items('chicken') }}
union all
{{ generate_household_flyer_items('chips') }}
union all
{{ generate_household_flyer_items('sausage') }}
union all
{{ generate_household_flyer_items('rusk') }}
union all
{{ generate_household_flyer_items('pork') }}
union all
{{ generate_household_flyer_items('oats') }}