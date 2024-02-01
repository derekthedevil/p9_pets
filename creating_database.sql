-- creating database 
create database p9_pets ;
-- using database p9_pets
use p9_pets ;
show tables;

-- creating tables owners 


CREATE TABLE owners (
    ownerid int primary key,
    name varchar(20),
    surname varchar(20),
    streetaddress varchar(50),
    city varchar(20),
    state varchar(20),
    zipcode int
);

-- creating table pets

CREATE TABLE pets (
    petid int primary key,
    name varchar(10),
    kind enum("Dog","Cat","Parrot","Hamster"),
    gender enum("M","F"),
    age int,
    ownerid int ,
    constraint ownerid_fk_1 foreign key(ownerid) references owners(ownerid)
);

-- creating table for stored procedures 
CREATE TABLE proceduredetails (
    proceduretype varchar(20),
    proceduresubcode int primary key,
    description varchar(20),
    price int
);
-- creating table procedurehistory and adding  petid and procudure subcod as foregin key 

CREATE TABLE procedurehistory (
    petid int,
    proceduredate date,
    proceduretype varchar(20),
    proceduresubcode int ,
	constraint petid_fk_1 foreign key(petid) references pets(petid),
    constraint prdcode_fk_3 foreign key(proceduresubcode) references proceduredetails(proceduresubcode)
);
-- drop database p9_pets;





