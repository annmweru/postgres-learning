create table car (
	car_uid UUID PRIMARY KEY NOT NULL,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price NUMERIC(19, 2) NOT NULL CHECK (price > 0)
);

create table person (
	person_uid UUID PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) ,
	gender VARCHAR(50) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_uid UUID REFERENCES car(car_uid),
	 UNIQUE (car_uid),
	 UNIQUE (email)
);

insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Dorelle', 'Thams', 'dthams0@stanford.edu', 'Female', '2/10/2026', 'Brazil');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Pyotr', 'McLarens', 'pmclarens1@vk.com', 'Male', '3/14/2026', 'Thailand');
insert into person (person_uid, first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'annah', 'mweru', 'annah2@bloglines.com', 'Female', '09/27/2026', 'Kenya');

insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'land rover', 'stering', '234889');
insert into car (car_uid, make, model, price) values (uuid_generate_v4(), 'Honda', 'Civic', '20000');

