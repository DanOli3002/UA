create database reserva_voos

use reserva_voos

create table airplane_type(
	[type_name] varChar(30) primary key,
	max_seats int,
	company varChar(30)
)

create table airport(
	airport_code bigInt primary key,
	city varChar(30),
	[state] varChar(30),
	[name] varChar(30)
)

create table flight(
	number bigInt primary key,
	airline varChar(30),
	weekdays varChar(30)
)

create table airplane(
	airplane_ID bigInt primary key,
	total_no_of_seats int,
	fk_type_name varChar(30),
	foreign key(fk_type_name) References airplane_type([type_name])
)

create table fare(
	code bigInt not null,
	fk_number bigInt not null,
	primary key(code, fk_number),
	amounts float,
	restrictions varChar(50),
	foreign key(fk_number) References flight(number)
)

create table flight_leg(
	leg_no bigInt not null,
	fk_number bigInt not null,
	fk_airport_departure bigInt not null,
	fk_airport_arrival bigInt not null,
	primary key(leg_no, fk_number, fk_airport_departure, fk_airport_arrival),
	scheduled_dep_time time,
	scheduled_arr_time time,
	foreign key(fk_number) References flight(number),
	foreign key(fk_airport_departure) References airport(airport_code),
	foreign key(fk_airport_arrival) References airport(airport_code)
)

create table leg_instance(
	[date] date not null,
	fk_leg_no bigInt not null,
	fk_number bigInt not null,
	primary key([date], fk_leg_no, fk_number),
	fk_airport_departure bigInt,
	fk_airport_arrival bigInt,
	scheduled_dep_time time,
	scheduled_arr_time time,
	no_avail_seats int,
	airport_code bigInt unique,
	fk_airplane_ID bigInt,
	foreign key(fk_leg_no, fk_number, fk_airport_departure, fk_airport_arrival) References flight_leg(leg_no, fk_number, fk_airport_departure, fk_airport_arrival),
	foreign key(fk_airplane_ID) References airplane(airplane_ID)
)

create table seats(
	seat_no int not null,
	fk_leg_no bigInt not null,
	fk_date date not null,
	fk_number bigInt not null,
	fk_airplane_ID bigInt not null,
	cphone bigInt,
	customer_name varChar(30),
	primary key(seat_no, fk_leg_no, fk_date, fk_number, fk_airplane_ID),
	foreign key(fk_date ,fk_leg_no, fk_number) References leg_instance([date], fk_leg_no, fk_number),
	foreign key(fk_airplane_ID) References airplane(airplane_ID)
)