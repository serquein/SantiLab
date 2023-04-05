USE sakila;

#1 List all films whose length is longer than the average of all the films.

SELECT title
FROM film
WHERE length > (SELECT AVG(length)
				FROM film);
                
#2 How many copies of the film 'Hunchback Impossible' exist in the inventory system?
SELECT COUNT(inventory_id) # también COUNT(*)
FROM inventory
WHERE film_id IN (SELECT film_id 
					FROM film
					WHERE title = 'Hunchback Impossible');


#3 Use subqueries to display all actors who appear in the film Alone Trip.
SELECT first_name, last_name
FROM actor
WHERE actor_id IN (SELECT actor_id
					FROM film_actor
                    WHERE film_id = (SELECT film_id
									FROM film
                                    WHERE title = 'Alone Trip'));

#4 Sales have been lagging among young families, and you wish to target all 
  #family movies for a promotion. Identify all movies categorized as family films.
SELECT title
FROM film
WHERE film_id IN (SELECT film_id
					FROM film_category
                    WHERE category_id = (SELECT category_id
									FROM category
                                    WHERE name = 'family'));


#5 Get name and email from customers from Canada using subqueries. 
# Note that to create a join, you will have to 
# identify the correct tables with their primary keys and foreign keys, 
# that will help you get the relevant information.

#5.1
SELECT first_name, last_name, email
FROM customer
WHERE address_id IN (SELECT address_id
					   FROM address
                       WHERE city_id IN (SELECT city_id
										   FROM city
										  WHERE country_id IN (SELECT country_id
																FROM country
                                                                WHERE country = 'Canada')));
#5.2 Do the same with joins. 
SELECT a.first_name, a.last_name, a.email, b.country
FROM customer as a
JOIN LEFT 
address_id (address)
city_id (city)
country_id(contry AS b)
country = 'Canada');
										