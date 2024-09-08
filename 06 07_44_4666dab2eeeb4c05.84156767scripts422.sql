create table cars (
 id_car serial not null,
 make varchar(100)not null,
 model varchar(25) not null,
 cost numeric not null check (cost >0),
person_id integer not null,
primary key (id_car));
create table person(id_person serial not null primary key, name varchar(150) not null,
age smallint  constraint age_constraint check(age>0),
driver_license boolean 	default false
);
alter table cars add foreign key (person_id) references person(id_person);