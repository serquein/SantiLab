#use sakila;
#2.Explore tables by selecting all columns from each table or using the in built review features for your client.
SELECT * FROM information_schema.columns WHERE table_schema = 'sakila';

#3.Select one column from a table. Get film titles.
SELECT title FROM film;

#4.Select one column from a table and alias it. Get unique list of film languages under the alias language
SELECT name FROM language AS language;

#5.1.Find out how many stores does the company have?
SELECT COUNT(store_id) FROM store;

#5.2 Find out how many employees staff does the company have?
SELECT COUNT(staff_id) FROM staff;

#5.3 Return a list of employee first names only? 
SELECT first_name FROM staff;