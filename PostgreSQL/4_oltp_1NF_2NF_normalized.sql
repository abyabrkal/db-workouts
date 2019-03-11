---- 1NF CHECK  ----------------------------------

select * from transactions;

select count(*) from transactions;
-- 3455

select count(*) 
from (
	select distinct * from transactions ) as uniqCount;
-- 3455
-- Proves all rows are unique and without any duplicates and 
-- visual investigation of data shows no mutiple data in any rows.
-- hence confirming 1NF.

--------- 2NF CHECK ---------------------------------
-- the table should be 1NF
-- identify candidate keys and non-prime columns should wholly depend on all candidate keys to identify itself.

-- CANDIDATE KEYS
-- a) CID1 -> transactionid			b) CID2 -> timestampsec + customerid

-----------------------------------------------------

select * from transactions;

-- separate out columns which doesnt fully depend on the candidate keys
-- in this case, which depends only on CID2-customerid only and not on CID2-timestampsec

create table tmp as 
	select  customerid,
			firstname,
			surname,
			shipping_state,
			loyalty_discount
	from transactions;

select * from tmp order by customerid asc;

-- remove the duplicates from above 'tmp' table
create table customers as
	select distinct * from tmp;

select * from customers;
-- 942
-- candidate key is customerid and all other columns depend on candidate key
-- hence 'customers' confirmed 2NF

-- Now update main transactions table by removing all customer related data except customerid(foreign key)
alter table transactions
drop column firstname,
drop column surname,
drop column shipping_state,
drop column loyalty_discount

select * from transactions;
-- Now transactions table is also 2NF confirmed

drop table tmp;