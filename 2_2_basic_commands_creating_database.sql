create database sql_intro;
show databases;
create table emp_details (Name_ varchar(25), age_ int, gender char(1), doj date, city varchar(15), salary float);

describe emp_details;
insert into emp_details 
values("prem", 36, "M", "2005-05-30", "palacode", 40000), ("anand", 35, "M", "2003-05-30", "dharmapuri", 60000), 
("bhubhu", 38, "M", "2000-05-30", "krishnagiri", 80000), ("pinky", 25, "F", "2015-05-30", "coimbatore", 25000),
("mk", 36, "F", "2005-05-30", "palacode", 45000), ("spnk", 38, "M", "2005-05-30", "palacode", 100000); 

describe emp_details;
select * from emp_details;
select distinct city from emp_details;
select distinct age_ from emp_details;
select distinct gender from emp_details;

