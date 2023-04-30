-- Question 1 - how many actors with name whalberg?

select COUNT(last_name)
from actor a
where LAST_NAME = 'Wahlberg';

-- question 2 - How many payments made between 3.99 and 5.99

select count(amount)
from PAYMENT 
where AMOUNT < 5.99 and AMOUNT > 3.99;

--question 3- what films does store have the most of

select * from INVENTORY;

--could take the count out of the select word but i think its
--eaiser to read with count included so know how many films there are 

select COUNT(FILM_ID), FILM_ID
from inventory
group by FILM_ID
order by COUNT(FILM_ID) DESC;

-- question 4 how many customers have the last name william 

select * from customer c 

select COUNT(last_name)
from customer c 
where last_NAME = 'William';

-- question 5 What store employ (get the id) Sold the most rentals?


select * from PAYMENT

select STAFF_ID, COUNT(STAFF_ID)
from PAYMENT 
group by STAFF_ID
order by COUNT(STAFF_ID) desc;


-- question 6- how many different district names are there?

select * from STORE

select COUNT(STORE_ID)
from STORE 


--question 7 which film has the most actors in it

select * from FILM_ACTOR;

select FILM_ID, count(ACTOR_ID)
from film_actor fa 
group by FILM_ID
order by COUNT(ACTOR_ID) desc;

-- check my work

select FILM_ID, ACTOR_ID
from film_actor fa 
where FILM_ID = 508;

-- confirmed 15 distinct actor_id's appear in film_id 508

-- question 8- from store_id 1 how many customers have a name ending is '-es'

select * from customer c 

select COUNT(LAST_NAME)
from CUSTOMER 
where STORE_ID = 1 and LAST_NAME like '%es';


-- question 9: how many payment amounts (disctint) had a number of rentals above 250 
-- for customer id between 380 and 430

select * from PAYMENT 

-- testing if count of rental id count(ie amount of rentals) is above 250 
select distinct amount, COUNT(RENTAL_ID)
from PAYMENT 
group by amount
having count(rental_id) > 250 
order by COUNT(RENTAL_ID) desc;

-- testing the customer id- clause. learned customer_id needs to be in group by clause to be included 
-- also learned you can group by multiple things. so this is saying all purchases with same price and customer id
-- including both things in the query- amount of rentals and customers 


--final for question 9
select distinct amount, customer_id, count(RENTAL_ID)
from PAYMENT 
group by customer_id, amount
having CUSTOMER_ID < 430 and CUSTOMER_ID > 380 and COUNT(RENTAL_ID) > 250


-- question 10 - in film table how many rating categroies are there? What rating category has most movies total?

-- using this for the table 
select * from FILM


-- This gives how many categories there are- can see at bottom of page 
select RATING, COUNT(RATING)
from FILM 
group by RATING;

-- this gives the highes amount of movies in each category in descedning order  

select COUNT(rating), RATING
from FILM 
group by RATING
order by COUNT(RATING) desc;





