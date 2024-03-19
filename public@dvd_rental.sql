-- Question 1

SELECT last_name, COUNT(last_name)
FROM actor
GROUP BY last_name 
HAVING last_name = 'Wahlberg';

-- Answer: 2

-- Question 2

SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;

-- Answer: 5607

-- Question 3

SELECT film_id, COUNT(film_id)
FROM inventory 
GROUP BY film_id
HAVING COUNT(film_id) = 7;

-- Answer: see table

-- Question 4

SELECT first_name, COUNT(first_name)
FROM customer
WHERE first_name = 'Willie'
GROUP BY first_name;

-- Answer: 2

-- Question 5

SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id;

-- Answer: staff_id 1 with 8040 rentals

--Question 6

SELECT COUNT(DISTINCT(district))
FROM address;

-- ANSWER: 378

-- Question 7

SELECT MAX(row_count)
FROM (
		SELECT film_id, COUNT(film_id) AS row_count
		FROM film_actor
		GROUP BY film_id
	);

SELECT film_id, COUNT(film_id)
FROM film_actor  
GROUP BY film_id 
HAVING COUNT(film_id) = 15;

-- Answer: film_id 508

-- Question 8

SELECT COUNT(last_name)
FROM customer 
WHERE last_name LIKE '%es' AND store_id = 1;

-- Answer: 13

-- Question 9

SELECT amount, COUNT(amount)
FROM payment 
WHERE customer_id >= 380 AND customer_id <= 430
GROUP BY amount
HAVING COUNT(amount) >250;

-- Answer: 3 amounts: $2.99, $4.99, $0.99

-- Question 10 

SELECT DISTINCT(rating), COUNT(rating)
FROM film
GROUP BY rating;

-- Answer: 5 ratings, pg-13 has the most movies