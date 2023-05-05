#viewing available database
show databases;

# creating database
create table emp_details (Name_ varchar(25), age_ int, gender char(1), doj date, city varchar(15), salary float);

insert into emp_details 
values("prem", 36, "M", "2005-05-30", "palacode", 40000), ("anand", 35, "M", "2003-05-30", "dharmapuri", 60000), 
("bhubhu", 38, "M", "2000-05-30", "krishnagiri", 80000), ("pinky", 25, "F", "2015-05-30", "coimbatore", 25000),
("mk", 36, "F", "2005-05-30", "palacode", 45000), ("spnk", 38, "M", "2005-05-30", "palacode", 100000); 

#viewing database as tables
select * from emp_details

#counting
select count(Name_) from emp_details;

#aliasing name
select count(Name_) as count_name from emp_details;

#summation
select sum(salary) from emp_details;

#average
select avg(salary) from emp_details;

#particular columns from table
select Name_, age_, city from emp_details;

#operations
select * from emp_details where age_>35;

select Name_, age_, gender, salary from emp_details where gender = 'F';

select * from emp_details where city = 'palacode' or city = 'coimbatore';

select * from emp_details where city in ('palacode','coimbatore');

select * from emp_details where doj between '2005-01-01' and '2005-12-31';

select * from emp_details where age_ >25 and gender='M';

#inbuilt methods - groupby, order by
select gender, sum(salary) as total_sum from emp_details group by gender

select * from emp_details order by salary;
select * from emp_details order by salary desc;

#select methods
select (10+20) as addition;

select (10-20) as subtraction;

select length('India') as total_len;

select repeat('$', 5);

select upper('india') as upper_case;

select length(upper('india')) as upper_case;

select length(lower('INDIA')) as lower_case;

SELECT lcase('INDia');

select reverse('India');

#strings

select character_length('india') as total_len;
select Name_, char_length(Name_) as total_len from emp_details;

select concat('india', 'is', 'our', 'country') as merged;
select concat('india', ' is', ' our', ' country') as merged;

select Name_, age_, concat(Name_, age_) as age_name from emp_details;

select reverse(Name_) from emp_details;

select replace('orange is a vegetable', 'vegetable', 'fruit');

select length('    India     ');
select ltrim('    India     ');
select length(ltrim('    India     '));
select length(rtrim('    India     '));
select length(trim('    India     '));

select position('fruit' in 'orange is a fruit') as name;

select ascii('v');
select ascii('45');

#date and time
select curdate();

select day(curdate());

select now();
