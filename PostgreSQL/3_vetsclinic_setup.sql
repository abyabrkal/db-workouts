use database vets clinic;

CREATE TABLE pets (
    petid varchar,
    name varchar,
    kind varchar,
    gender varchar,
    age int,
    ownerid varchar
);

-- WINDOWS
COPY pets FROM 'D:\Databases\Data\pets.csv' DELIMITER ',' CSV HEADER;

-- MAC
--COPY pets FROM '/users/ilyaeremenko/Desktop/Pets.csv' DELIMITER ',' CSV HEADER;



CREATE TABLE owners (
    ownerid varchar,
    name varchar,
    surname varchar,
    streetaddress varchar,
    city varchar,
    state varchar(2),
    statefull varchar,
    zipcode varchar
);

-- WINDOWS
COPY owners FROM 'D:\Databases\Data\owners.csv' DELIMITER ',' CSV HEADER;




CREATE TABLE proceduredetails (
    proceduretype varchar,
    proceduresubcode varchar,
    description varchar,
    price float
);

-- WINDOWS
COPY proceduredetails FROM 'D:\Databases\Data\proceduredetails.csv' DELIMITER ',' CSV HEADER;




CREATE TABLE procedurehistory (
    petid varchar,
    proceduredate date,
    proceduretype varchar,
    proceduresubcode varchar
);

-- WINDOWS
COPY procedurehistory FROM 'D:\Databases\Data\procedurehistory.csv' DELIMITER ',' CSV HEADER;

