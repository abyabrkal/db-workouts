CREATE TABLE transactions (
    transactionid varchar,
    timestampsec timestamp,
    customerid varchar,
    firstname varchar,
    surname varchar,
    shipping_state varchar,
    item varchar,
    description varchar,
    retail_price float(2),
    loyalty_discount float(2)
);

--Windows
--COPY transactions FROM 'D:\Databases\Data\OLTP.csv' DELIMITER ',' CSV HEADER;

--Mac
--COPY transactions FROM '/users/ilyaeremenko/Desktop/OLTP.csv' DELIMITER ',' CSV HEADER;

select * from transactions;
