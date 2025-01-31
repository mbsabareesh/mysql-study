create database donationblood;
use donationblood;
create table donationblood(
donar_id int primary key,
donar_name varchar (100),
blood_group varchar (100),
donation_date varchar(100),
location varchar (100));
select * from donationblood;

insert into donationblood values
(1,'sabareesh','o+','2023','molasi'),
(2,'ooviya','b+','2027','molasi'),
(3,'raja','a+','2024','molasi');

select * from donationblood;

alter table donationblood add column donation_time varchar(100);
select * from donationblood;

alter table donationblood drop column donation_time;

select* from donationblood;



insert into donationblood values
(4,'ijf','b+','2029','molasi');
select * from donationblood;

update donationblood set location="tiruchengode" where donar_id=3;

select* from donationblood;

create table bloodgroups( blood_group_id int primary key,
blood_group_name varchar (100));
select * from bloodgroups;

insert into bloodgroups values
(1,'a+'),
(2,'b+'),
(3,'o+');

select * from bloodgroups;
use donationblood;
create table donar(donar_name varchar(100),
donar_id int primary key,
contract_infro varchar(1000));

select * from donar;

alter table donar add constraint unique_donar_name unique (donar_name);

select * from donar;
alter table donar add column donar_age int;

select* from donar;

# DDL AND DML QUESTION 15-05-2024

create database blooddonation;
use blooddonation;
create table  blooddonation(donar_id int auto_increment primary key,
donar_name varchar(100),
blood_gropu varchar(100),
donation_date date not null,
location varchar(100));
select*from blooddonation;

alter table blooddonation add column donation_time time;
select*from blooddonation;

alter table blooddonation modify column location varchar(100);

alter table blooddonation drop column donation_time;

select*from blooddonation;

rename table blooddonation to donation;

drop table donation;

create table bloodgroup( blood_group_id int auto_increment primary key,
blood_group_name varchar(100) unique );

select*from bloodgroup;



insert into bloodgroup (blood_group_name) values ('a+'),('a-'),('b+'),('b-'),('ab+'),('ab-'),('o+'),('o-');

alter table bloodgroup add constraint fk_blood_group foreign key (blood_group) references bloodgroup(blood_group_name);

create table donars( donar_id int auto_increment primary key,
donar_name varchar(100)not null ,
phone_number varchar(15),
email varchar(100));

alter table donars add constraint unique_donar_name unique(donar_name);

alter table donars add column donation_date date;
select*from donars;

alter table donars add column donar_age int;
select*from donars;




