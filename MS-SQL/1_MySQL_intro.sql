USE shop;

DROP TABLE IF EXISTS `users`;
create table users (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(50),
	createdon DATE
);
insert into users (id, first_name, last_name, gender, createdon) values (1, 'Mendy', 'Sheilds', 'Male', '2015/05/04');
insert into users (id, first_name, last_name, gender, createdon) values (2, 'Taite', 'Finnimore', 'Male', '2018/10/06');
insert into users (id, first_name, last_name, gender, createdon) values (3, 'Gavra', 'McRitchie', 'Female', '2018/07/04');
insert into users (id, first_name, last_name, gender, createdon) values (4, 'Natalina', 'Absalom', 'Female', '2015/08/04');
insert into users (id, first_name, last_name, gender, createdon) values (5, 'Adria', 'Romanin', 'Female', '2018/06/28');
insert into users (id, first_name, last_name, gender, createdon) values (6, 'Emmy', 'Coull', 'Male', '2016/09/02');
insert into users (id, first_name, last_name, gender, createdon) values (7, 'Etty', 'Toderini', 'Female', '2017/07/18');
insert into users (id, first_name, last_name, gender, createdon) values (8, 'Malissa', 'Fargie', 'Female', '2017/02/24');
insert into users (id, first_name, last_name, gender, createdon) values (9, 'Petey', 'Medland', 'Male', '2015/05/06');
insert into users (id, first_name, last_name, gender, createdon) values (10, 'Kary', 'Holmyard', 'Female', '2016/04/28');

select * from users where first_name like '%y' and gender='female';

select first_name, createdon , 
		day(createdon), dayname(createdon) , dayofmonth(createdon), dayofweek(createdon), dayofyear(createdon),
        monthname(createdon), month(createdon),
        year(createdon), yearweek(createdon) from users;

select * from users;


