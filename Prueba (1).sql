/* Yefferson Silva y Fernando Armua
/*6*/
select country ,city
from  country c
inner join c.ast_update on city.last_update
group by country,city
;

/*4*/
SELECT f.title, a.first_name, a.last_name
FROM film f, actor a, film_actor fa
WHERE f.film_id = fa.film_id 
AND a.actor_id = fa.actor_id
ORDER BY f.title;

/*2 */
SELECT c.name, avg(f.length) as media_duracion,category_id,a.name
FROM category c, film f, film_category fc,actor a
WHERE c.category_id = fc.category_id
AND f.film_id = fc.film_id
;
/*8*/
select first_name,first_name ,rental_date
from staff s,rental r
inner join s.staff_id on r.staff_id
 having (select rental_date
from rental 
where '2005-07-29' and '2021-07-30')
;

/*7*/
select  city,first_name,last_name
from  city,actor,country
where country = ('United States') 
or city.city
 ;
 
 
 /*3*/
 SELECT country,city,first_name,last_name,address
FROM actor,city,country ,address
WHERE upper(country) LIKE 'A%';


/*1*/
/*
SELECT actor_id,first_name,last_name count  (amount)    
FROM actor ,payment
WHERE upper(first_name) = 'Ellen'
group by  amount =100 and amount = 125;
*/

/*9*/
SELECT SUM(rental_rate) as suma_rental 
FROM film







