/*
Consultas
1. ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente. (1)
*/
select
countries.name,
languages.language,
languages.percentage
from 
countries join languages on 
countries.id = languages.country_id
where languages.language = 'Slovene'
order by languages.percentage desc;

/*
2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
Su consulta debe devolver el nombre del país y el número total de ciudades. 
Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. (3)
*/
select 
co.name,
count(ci.name) as 'cities'
from countries co left join cities ci 
on co.id = ci.country_id
group by co.name
order by 2 desc
limit 10; 

/*
3. ¿Qué consulta harías para obtener todas las ciudades de México 
con una población de más de 500,000? 
Tu consulta debe organizar el resultado por población en orden descendente. (1)
*/

select 
name,
population,
country_id
from 
cities where population > 500000 and country_id = (select id from countries where name = 'Mexico')
order by population desc;

/*
4. ¿Qué consulta ejecutarías para obtener 
todos los idiomas en cada país con un porcentaje superior al 89%? 
Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)
*/

select 
c.name,
l.language,
l.percentage
from 
languages l join countries c 
on l.country_id = c.id
where l.percentage > 89
order by l.percentage desc;

/*
5. ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 y una población superior a 100,000? (2)
*/
select 
name,
surface_area,
population
from countries
where surface_area < 501 and population > 100000;

/*
6. ¿Qué consulta harías para obtener países con solo Monarquía Constitucional
 con un capital superior a 200 y una esperanza de vida superior a 75 años? (1)
*/

select 
name,
government_form,
life_expectancy
from countries
where government_form = "Constitutional Monarchy"
and capital > 200
and life_expectancy > 75;

