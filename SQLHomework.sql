use sakila;

select first_name, last_name from actor

select UPPER (first_name), UPPER(last_name) AS ActorName from actor

select actor_id, first_name, last_name
from actor 
where first_name='Joe'

select *
from actor where last_name like'%GEN%'

select * from actor where last_name like '%LI%'
order by last_name, first_name  desc

select country_id, country from country where country in ('Afghanistan', 'Bangladesh', 'China')

Alter Table actor
add Description blob;

Alter Table actor
drop column Description;

select Count (last_name) from actor;

update actor
set first_name='Harpo'
where first_name ='Groucho' and last_name='Williams'

update actor
set first_name='Groucho'
where first_name='Harpo' and last_name='Williams'

select Staff.first_name, staff.last_name, address.address, address.address2
from staff join  address on staff.address_id = address.address_id

select staff.first_name, staff.last_name, payment.amount
from staff join payment on payment.staff_id=staff.staff_id
where payment.payment_date like '%2005-08%'

select * from inventory where inventory_id = 439

select customer.first_name, customer.last_name,(payment.amount)
from customer join payment on payment.customer_id=customer.customer_id
order by customer.last_name desc





