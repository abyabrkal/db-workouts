select * from console_games;

-- Calculate what % of global sales were made in North America
Alter table console_games
add column global_sales float8;

update console_games
set global_sales = na_sales + eu_sales + jp_sales + other_sales;

alter table console_games
add column na_sales_percent float8;

update console_games
set na_sales_percent = (na_sales / global_sales ) * 100
where global_sales > 0;

-- extract a view of console games titles 
--  ordered by platform name in ascending order and year of release in descending order
select * from console_games
order by platform asc , game_year desc;


-- for each game title extract the first four letters of the publishers name
select game_name, left(publisher, 4) from console_games;


-- display all the console platforms which were released wither just before Black Friday 
-- just before Christmas (in any year)


-- order the platforms by their longetivity in ascending order (ie, the platform which was 
--  available for the longest at the bottom)

-- demonstrate how to deal with the Game_Year column if the client wants to covert it to a different data type

-- provide recommendations on how to deal with missing data in the file.