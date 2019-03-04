select * from consumer_complaints;
select product_name, issue from consumer_complaints where state_name = 'NY';


--Find out how many complainst received and sent in same day
select count(issue), count(complaint_id) from consumer_complaints where date_received = date_sent;

--complaints received in NY
select issue from consumer_complaints where state_name = 'NY';

--complaints received in NY and CA
select issue, state_name from consumer_complaints where state_name = 'NY' or state_name = 'CA';

--extract all rows with word 'credit' in product field
select * from consumer_complaints where lower(product_name) like '%credit%';

--extract all rows with 'late' in issues field
select * from consumer_complaints where lower(issue) like '%late%';
