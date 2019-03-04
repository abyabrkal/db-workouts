

# create database twitter
create database if not exists twitter;
# drop database if exists twitter;

use twitter;
# build schema
	# a. user table
    create table users (
		id integer auto_increment primary key,
		username varchar(50),
		created_at timestamp default now()
    );
     drop table if exists users;
     
	# create tweets
    create table tweets (
		id integer auto_increment primary key,
        body text not null,
        user_id integer,
        created_at timestamp default now(),
        foreign key (user_id) references users(id) on delete cascade
    );
    drop table if exists tweets;
    
    create table replies (
		id integer auto_increment primary key,
        body text not null,
        user_id int,
        tweet_id int,
        created_at timestamp default now(),
        foreign key (user_id) references users(id) on delete cascade,
        foreign key (tweet_id) references tweets(id) on delete cascade
    );
    drop table if exists replies;
    
# insert data
insert into users (username) values ('Thomas'), ('Alex'), ('John'), ('Cathy'); 
insert into tweets (body, user_id) values 
										('Nice weather', 1), ('CSS is hard', 1),
										('PHP is bad!!!', 2), ('Great progress in SQL', 2),
                                        ('Captain Virginia on Mars', 4), ('We are in the EndGame now', 4), 
                                        ('Lets make some pasta!', 4);
insert into replies (body, user_id, tweet_id) values 
										('Its freezing here',4, 1), ('Yes!!!', 3, 2),
                                        ('Not that hard',2, 2), ('Off it is better', 3, 4),
                                        ('God Save',1, 5), ('EndGame it is', 2, 6),
                                        ('Why did you do it?',1, 6), ('Oh Man!!!', 3, 6),
                                        ('alfredo, yes',1, 7), ('penni!!!', 2, 7);
						



# show 
select * from users;
select * from tweets;
select * from replies;

select users.username, tweets.body, tweets.created_at from tweets join users on tweets.user_id = users.id order by tweets.created_at desc;

select users.username, tweets.body, replies.body from replies inner join users on replies.user_id = users.id join tweets on replies.tweet_id = tweets.id; 

select tweets.body, replies.body from tweets join replies on tweets.id = replies.tweet_id;