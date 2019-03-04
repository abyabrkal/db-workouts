-- List of all console games released between 1985 and 2015
CREATE TABLE console_games (
    game_rank integer,
    game_name varchar(1200),
    platform varchar(1200),
    game_year integer,
    genre varchar(20),
    publisher varchar(1200),
    na_sales float8,
    eu_sales float8,
    jp_sales float8,
    other_sales float8    
);

COPY console_games FROM 'D:\Databases\Data\consolegamesales.csv' DELIMITER ',' CSV HEADER;

select * from console_games;


-- List of all console platforms and details
CREATE TABLE console_dates (
    platform_name char(120),
    first_retail_availability date,
    discontinued date,
    units_sold_mill float8,
    platform_comment varchar(120)    
);

COPY console_dates FROM 'D:\Databases\Data\consoledates.csv' DELIMITER ',' CSV HEADER;

select * from console_dates;
