
{% test string_not_empty(model, column_name) %}
    select {{ column_name }}
    from {{ model }}
    where TRIM({{column_name}}) = ''
{% endtest %}

{% test not_negative(model, column_name) %}
    select {{ column_name }}
    from {{ model }}
    where {{column_name}} < 0
{% endtest %}