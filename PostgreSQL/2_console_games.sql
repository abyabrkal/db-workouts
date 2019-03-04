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
select platform_name
from console_dates
where date_part('month', first_retail_availability) - 11 = 0 	-- before Black Friday
or date_part('month', first_retail_availability) - 12 = 0 		-- before Christmas


-- order the platforms by their longetivity in ascending order (ie, the platform which was 
--  available for the longest at the bottom)
select * , (discontinued - first_retail_availability) as days_existed from console_dates
order by days_existed asc;
--OR by using AGE function (BEST way to get difference in two dates
)
select *, age(discontinued, first_retail_availability) as platform_alive from console_dates
order by platform_alive asc;


--** all which are before month of 11
select * from console_dates where date_part('month', first_retail_availability) - 11 = 0;


-- demonstrate how to deal with the Game_Year column if the client wants to covert it to a different data type
select game_year::varchar(4) from console_games order by game_rank;

select to_date(CAST(game_year as varchar(4)), 'yyyy') from console_games order by game_rank;

-- provide recommendations on how to deal with missing data in the file.
--Delete the rows with main data missing
--or average values can be filled in if we have comparable data available.