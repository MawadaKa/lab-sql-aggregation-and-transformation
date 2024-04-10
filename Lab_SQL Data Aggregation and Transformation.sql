USE sakila;
-- Challenge 1
SELECT min(length) AS min_duration FROM film;
SELECT max(length) AS max_duration FROM film;
SELECT AVG(length) FROM film;
SELECT round(AVG (length/60)) AS avg_length FROM film;

-- Challenge 2
-- 2.1
SELECT min(rental_date) AS early, max(rental_date) AS late FROM rental;
SELECT DATEDIFF('2006-02-14', '2005-05-24') AS DateDiff;
-- 2.2
SELECT * FROM rental;
SELECT WEEKDAY(rental_date) as weekday, month(rental_date) as Month
from rental LIMIT 20;
-- 3
SELECT * FROM film;
Select title, IFNULL(rental_duration, 'NOT AVAILABLE') AS rental_duration from FILM ORDER BY title ASC;

-- Challenge 2
-- 1.1
SELECT COUNT(*) FROM film; 
-- 1.2
SELECT rating, COUNT(*) FROM film GROUP BY rating;
-- 1.3
SELECT rating, COUNT(*) AS num_films FROM film GROUP BY rating ORDER BY num_films DESC;
-- 2.1
SELECT rating, ROUND(AVG(length), 2) AS mean_duration FROM film GROUP BY rating ORDER BY mean_duration DESC;
-- 2.2
SELECT X.rating FROM (SELECT rating, ROUND(AVG(length), 2) AS mean_duration FROM film GROUP BY rating) AS X WHERE mean_duration > 120;
-- 3.Bonus
SELECT last_name FROM (SELECT last_name, COUNT(*) AS repeats FROM actor GROUP BY last_name) AS Y WHERE repeats = 1;