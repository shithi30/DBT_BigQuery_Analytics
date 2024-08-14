select 'today' kobe, {{ to_celsius(100, 1) }} cels
union all
select 'yesterday' kobe, {{ to_celsius(100, 3) }} cels
union all
select 'kal' kobe, {{ to_celsius(100) }} cels