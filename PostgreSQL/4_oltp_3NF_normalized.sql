---- 3NF CHECK  ----------------------------------
-- 2NF confirmation
-- every non-prime column should non-transitively(without an intermediate connector) 
-- dependent on every candidate key

--------------------------------------------------


select * from customers;
-- customerid is the candidate key
-- firstname + surname is another candidate key
-- all other columns (shipping_state, loyalty_discount) are dependent on customerid/FN-SN candidates
-- hence 3NF confirmed for customers table

select * from transactions;
-- transactionid is a candidate key
-- timestampsec + customerid is another one (no same customer at same time)
-- item dependent on all 3 candidates
-- [x] description and retail_price trasitively dependent via item 
-- not 3NF confirmed and hence needs a split

create table tmp as
	select 
	  	item,
	  	description,
	  	retail_price
	  from transactions;
	
select * from tmp;
	  
create table products as
select distinct * from tmp;

select * from products;

alter table transactions
drop column description,
drop column retail_price

select * from transactions;

drop table tmp;

-- 3NF confirmed

