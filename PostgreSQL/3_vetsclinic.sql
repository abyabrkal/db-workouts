use database vets clinic;

select * from pets;
select * from owners;
select * from procedurehistory;
select * from proceduredetails;

-- 1. extract information on pets names and owner names side-by-side
select pets.name, owners.name from pets inner join owners 
on pets.ownerid = owners.ownerid;


-- 2. find out which pets from this clinic had procedures performed
select distinct pets.name from pets inner join procedurehistory
on pets.petid = procedurehistory.petid
 
 
-- 3. match up all procedures performed to their description
select ph.proceduretype, pd.description  from procedurehistory as ph 
left join proceduredetails as pd
on  ph.proceduretype = pd.proceduretype
and ph.proceduresubcode = pd.proceduresubcode


-- 4. same as above but only for pets from clinic in question
select pets.name, ph.proceduretype, pd.description  
from pets
inner join procedurehistory as ph 
on pets.petid = ph.petid
left join proceduredetails as pd
on ph.proceduretype = pd.proceduretype
and ph.proceduresubcode = pd.proceduresubcode


-- 5. Extract a table of individual costs (procedure prices) incurred 
--     by owners of the pets from the clinic in question (with owner and procdure price side-by-side) 


