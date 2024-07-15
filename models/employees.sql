with calc_employees as(
select 
convert(int, (date_part(year,current_date) - date_part(year, birth_date))) as age,
convert(int, (date_part(year,current_date) - date_part(year, hire_date))) as lenght_of_service,
first_name ||' '|| last_name as name, *
from {{source('sources','employees')}}
)
select * from calc_employees