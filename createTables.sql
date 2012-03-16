-- createTables.sql
drop sequence if exists student_id_seq cascade;
create sequence student_id_seq;
drop table if exists students cascade;
create table students(
   id integer not null default nextval('student_id_seq'),
   first_name varchar(40),
   last_name varchar(50),
   major varchar(30),
   primary key (id)
);

insert into students (first_name, last_name, major)
   values ('Jane','Doe','CENT');
insert into students (first_name, last_name, major)
   values ('John','Doe','PHYS');
insert into students (first_name, last_name, major)
   values ('Bill','Gates','ICS');
insert into students (first_name, last_name, major)
   values ('Eric','Raymond','MATH');
insert into students (first_name, last_name, major)
   values ('Bruce','Perens','ICS');
insert into students (first_name, last_name, major)
   values ('Robert','LaFore','EE');
