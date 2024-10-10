

# 1 Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
SELECT COUNT(film_id)
FROM inventory
WHERE film_id IN (select film_id
					FROM film
					WHERE title = "Hunchback Impossible"
)
;

# List all films whose length is longer than the average length of all the films in the Sakila database.

SELECT title 
FROM film
WHERE length > (SELECT AVG(length) from
film);


# Use a subquery to display all actors who appear in the film "Alone Trip".

SELECT *
FROM ACTOR 
WHERE actor_id IN (
					SELECT actor_id 
					FROM film_actor
					WHERE film_id IN (
										SELECT film_id
										FROM film
										WHERE title = "Alone Trip"
                                        )
					);
