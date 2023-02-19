-- Database: dvdrental

-- DROP DATABASE IF EXISTS dvdrental;

CREATE DATABASE dvdrental
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	SELECT title, description, rating, rental_duration, rental_rate FROM film
	WHERE rating IN ('G','PG-13')
	
	SELECT * FROM film
	
	SELECT title, description, rating FROM film
	WHERE rating IN ('G','PG-13') AND rental_duration < 2 AND rental_rate < 3.00
	ORDER BY title
	
	SELECT COUNT(*) FROM film
	GROUP BY rating
	
	SELECT * FROM customer 
	ORDER BY customer_id
	
	SELECT * FROM customer 
	ORDER BY customer_id
	
	UPDATE address
	SET address = 'Abidjan'
	WHERE address_id IN (SELECT address_id FROM address INNER JOIN customer USING(address_id) WHERE address_id = 5)
