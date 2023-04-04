
use sakila;

#1.Which actor has appeared in the most films?
SELECT DISTINCT a.first_name, a.last_name, COUNT(b.film_id)
FROM actor AS a
INNER JOIN film_actor as b
USING (actor_id)
GROUP BY actor_id 
ORDER BY COUNT(film_id) DESC
LIMIT 1

#2.Most active customer (the customer that has rented the most number of films)
use sakila;
SELECT a.first_name, a.last_name, count(b.rental_id)
FROM customer AS a 
INNER JOIN rental AS b 
USING (customer_id)
group by customer_id
order by count(rental_id) desc
limit 1;

#3 List number of films per category.
use sakila;
SELECT a.name, COUNT(b.film_id) 
FROM category as a
INNER JOIN film_category as b
USING (category_id) 
GROUP BY category_id;

#4 Display the first and last names, as well as the address, of each staff member.
SELECT a.first_name, a.last_name, b.address
FROM staff as a
INNER JOIN address as b
USING (address_id);

#5 Get films titles where the film language is either English or italian, and whose titles starts with letter "M" , sorted by title descending.
SELECT a.title, b.name
FROM film AS a
INNER JOIN language AS b 
USING (language_id)
WHERE title LIKE 'M%' and name = ('English') OR ('italian')
