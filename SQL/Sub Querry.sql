USE sakila;

#first name of the actor that are in film_1 = 1

SELECT first_name
FROM actor
WHERE actor_id in (SELECT actor_id
					FROM film_actor
					WHERE film_id=1);

# List of first name of the actor that starts in the movie "bucket brotherhood"

SELECT first_name
FROM actor
WHERE actor_id IN ( SELECT actor_id                           #IN if it is a list
					FROM film_actor                           
					WHERE film_id = ( SELECT film_id          #= if it is one value
										FROM film
                                        WHERE title = 'Bucket Brotherhood'));

# List of first name of actor that ( appeared in film) (that are present in the cathegory) (action).

SELECT first_name
FROM actor
WHERE actor_id IN ( SELECT actor_id                                                       # IN if it is a list
					FROM film_actor                           
					WHERE film_id IN ( SELECT film_id                                     # IN if it is a list
										FROM film_category
                                        WHERE category_id = (SELECT category_id           # = if it is one value
																FROM category
                                                                WHERE name = 'Action')));
