USE SAKILA;


alter table staff drop column picture;

Select * from staff limit 5;

select * from customer where first_name = 'TAMMY' and last_name = 'SANDERS';

insert into staff values (3,'Tammy', 'Sanders',
(select address_id from customer where first_name = 'TAMMY' and last_name = 'SANDERS'),
'tammy.sanders@sakilastaff.org',2,1,'Tammy',null,CURRENT_TIME());

Select * from rental limit 5;

insert into rental  
values(6,
CURRENT_TIME(),
(select inventory_id from inventory where store_id = 1),
(select customer_id from customer where first_name = 'CHARLOTTE' and last_name = 'HUNTER'),
Null,
(select staff_id from staff where first_name = 'MIKE' and last_name = 'HILLYER'),
CURRENT_TIME());

Create table backup_deleted2(
  customerid int(3) default null,
  email  varchar(100) default null,
  date datetime default null);

select * from customer where active = 0;

insert into backup_deleted2 values 
(16, 'SANDRA.MARTIN@sakilacustomer.org', current_time()),
(64, 'JUDITH.COX@sakilacustomer.org', current_time()),
(124, 'SHEILA.WELLS@sakilacustomer.org', current_time()),
(169, 'ERICA.MATTHEWS@sakilacustomer.org', current_time()),
(241, 'HEIDI.LARSON@sakilacustomer.org', current_time()),
(271, 'PENNY.NEAL@sakilacustomer.org', current_time()),
(315, 'KENNETH.GOODEN@sakilacustomer.org', current_time()),
(368, 'HARRY.ARCE@sakilacustomer.org', current_time()),
(406, 'NATHAN.RUNYON@sakilacustomer.org', current_time()),
(446, 'THEODORE.CULP@sakilacustomer.org', current_time()),
(482, 'MAURICE.CRAWLEY@sakilacustomer.org', current_time()),
(510, 'BEN.EASTER@sakilacustomer.org', current_time()),
(534, 'CHRISTIAN.JUNG@sakilacustomer.org', current_time()),
(558, 'JIMMIE.EGGLESTON@sakilacustomer.org', current_time()),
(592, 'TERRANCE.ROUSH@sakilacustomer.org', current_time());

Select * from  backup_deleted2 limit 5;
