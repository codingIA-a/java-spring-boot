/*
1. ¿Qué consulta ejecutarías para obtener todos los países que hablan esloveno? 
Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de habla del idioma.  
Tu consulta debe ordenar el resultado por porcentaje de habla del idioma en orden descendente. (1) 
*/

SELECT countries.name as name, languages.language as language, 
languages.percentage as percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = "Slovene"
ORDER BY languages.percentage DESC;

/*
2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades de cada país?  Tu consulta debe devolver el nombre del país, 
el idioma y el número total de ciudades. Tu consulta debe ordenar el resultado por el número de ciudades en orden descendente. (3) 
*/
SELECT countries.name as name,
 COUNT(cities.name) as cities
FROM countries
LEFT JOIN cities ON countries.id = cities.country_id
GROUP BY countries.name
ORDER BY cities DESC;
/*
3. ¿Qué consulta ejecutarías para obtener todos ciudades 
de México con una población mayor a 500,000? Tu consulta debe ordenar el resultado por población en orden descendente. (1) 
*/
SELECT  name , population, country_id FROM cities
WHERE cities.population > 500000
AND cities.country_id = ( SELECT id FROM countries WHERE countries.name = "Mexico" )
ORDER BY population DESC;
/*
4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje de habla mayor a 89%?
 Tu consulta debe ordenar el resultado por porcentaje de habla en orden descendente. (1) 
*/
SELECT countries.name as name, languages.language as language, languages.percentage as percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;
/*
5. ¿Qué consulta ejecutarías para obtener todos los países con un área de superficie menor 
a 501 y población mayor a 100,000? (2) 
*/

SELECT name, surface_area, population from countries
WHERE surface_area < 501
AND population >100000;
/*
6. ¿Qué consulta ejecutarías para obtener países solo con monarquía constitucional, 
un capital superior a 200 y una esperanza de vida mayor a 75 años?  (1) 
*/
SELECT name, government_form,capital, life_expectancy from countries
WHERE capital > 200
AND government_form ="Constitutional Monarchy"
AND life_expectancy > 75;
/*
7. ¿Qué consulta ejecutarías para obtener todas las ciudades de Argentina dentro del distrito de
 Buenos Aires con una población mayor a 500,000 habitantes?  
La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población.  (2) 
*/

SELECT countries.name as country_name, cities.name as city_name,
 cities.district, cities.population from countries
JOIN cities ON countries.id = cities.country_id
WHERE cities.district = "Buenos Aires"
AND cities.population > 500000
ORDER BY cities.population DESC;
/*
8. ¿Qué consulta ejecutarías para resumir el número de países en cada región?
 Tu consulta debe mostrar el nombre de la región y el número de países.
 Además, debe ordenar el resultado por el número de países en orden descendente. (2) 
*/
SELECT countries.region, COUNT(countries.name) as countries
FROM countries
GROUP BY countries.region
ORDER BY countries DESC