DROP TABLE IF EXISTS members;

CREATE TABLE members (
	id serial primary key,
    name text not null,
    birth_day date,
    gender varchar(1),
    color_id integer
);





