-- punto 1
select film_id,title from film ;
-- punto 2
select * from film limit 5;
-- punto 3
select * from film where film_id between 1 and 4;
-- punto 4
select * from film where rating = 'PG' or rating = 'G'; 
-- punto 5 
select * from actor where first_name in ('Angela','Angelina','Audrey');
-- punto 6 
select * from actor where first_name='Julia';
-- punto 7
select * from actor where first_name='Chris'or first_name='Cameron' or first_name='Cuba';
-- punto 8 
select * from customer where first_name=('Jamie') and last_name=('Rice');
-- punto 9
SELECT amount,payment_date FROM payment where amount between 0 and 1;
-- punto 10
select  distinct rental_duration  from film ;
--punto 11
select * from city order by (country_id,city);
-- punto 12
select customer_id from rental limit 3 offset 997;
-- punto 13 a
select rating from film where rating ='NC-17';
-- punto 13b
select rating from film where rating ='PG'OR rating='PG-13';
--punto 14 
select  count(distinct customer_id)  from rental ;
-- punto 15
select distinct last_name from customer;
-- punto 16
select film_id,count(distinct actor_id) as num_actors from film_actor group by film_id order by num_actors desc limit 1;
-- punto 17
select actor_id,count(distinct film_id) as num_films from film_actor group by actor_id order by num_films desc limit 1;
-- punto 18
select country_id ,count(city)as num_city from city group by country_id order by num_city desc;
-- punto 19
select round(avg(amount),2) from payment ;
--punto 20
select (first_name|| ' ' ||last_name)as actor_name, length (first_name||last_name) len from actor order by len desc;




