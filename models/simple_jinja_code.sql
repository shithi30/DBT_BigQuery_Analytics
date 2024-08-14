{# This Jinja code generates SELECT statements to print numbers from 0 to 9 #}
{% set max_number = 10 %}
{% for i in range(max_number) %}
    SELECT {{ i }} AS number
    {% if not loop.last %}
        UNION ALL
    {% endif %}
{% endfor %} 