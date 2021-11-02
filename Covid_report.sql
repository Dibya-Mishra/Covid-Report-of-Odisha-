create database covid_19;
use covid_19;
CREATE TABLE all_districts (
    district_name VARCHAR(255) NOT NULL,
    confirmed INT,
    active_ INT,
    recovered INT,
    deceased INT
);
insert into all_districts 
values ("Angul", 18084,3463,14580,41);
insert into all_districts
values ("Balasore", 16202,1805,14292,100);
insert into all_districts
values ("Bargarh", 19180,4084,15052,44);
insert into all_districts (district_name,confirmed, active_, recovered,deceased)
values 
("Bhadrak", 10241, 1544, 8662, 31),
("Bolangir",15382,2287,13044,51),
("Boudh", 4556, 1500, 3040, 16)
;
insert into all_districts (district_name,confirmed, active_, recovered,deceased)
values 
("Cuttack" , 41378, 6677, 34547, 150),
("Deogarh", 2845, 597, 2240, 8),
("Dhenkanal", 6921, 851, 6040,30),
("Gajapati", 6177, 850, 5290, 36),
("Ganjam", 26266, 1625, 24370, 263),
("Jagatsinghapur", 11474, 1171, 10263, 40),
("Jajpur", 17435, 2420, 14987,27),
("Jharsuguda", 15781, 2701, 13050, 30),
("Kalahandi", 14712, 3192, 11468, 52),
("Kandhamal", 7041, 571, 6435, 35),
("Kendrapada", 10916, 879, 10006, 30),
("Kendujhar", 11893, 884, 10961, 46),
("Khordha", 82149, 13025, 68731, 383),
("Koraput", 9856, 1081, 8755, 20),
("Malkangiri", 6038, 496, 5512, 27),
("Mayurbhanj", 18772, 1733, 16945, 91),
("Nabarangpur", 12589, 2881, 9691, 15),
("Nayagarh", 9560, 1768, 7744, 46),
("Nuapada", 17729, 2011, 15682, 36),
("Puri", 22111, 3348, 18629, 131),
("Rayagada", 11459, 1177, 10212, 70),
("Sambalpur", 18472, 4184, 14205, 83),
("Subarnapur", 7060, 1172, 5866, 22),
("Sundergarh", 37650, 10121, 27318, 207)
;
use covid_19;
SELECT 
    *
FROM
    all_districts
ORDER BY district_name DESC;
use employees;
SELECT 
    *
FROM
    dept_manager;    
SELECT 
    departments.dept_name, dept_emp.emp_no
FROM
    departments
        INNER JOIN
    dept_emp ON departments.dept_no = dept_emp.emp_no

create database students;
create table std_name (roll_num int, nos varchar(255), address varchar(255));
use students;
insert into std_name (roll_num,nos,address)
values (1, "Alka Dash", "Nuapada"),
(2, "Dibya Mishra", "Angul"),
(3, "Rosalin Mishra", "Cuttack"),
(4, "Subhasis Swain", "Berhampur"),
(5, "Pratik Tripathy", "keonjhar"),
(6, "Debashish", "Keonjhar"),
(7, "Sambit Parida", "Kendrapara");
select * from std_name;
drop table marksheet;
use students;
CREATE TABLE marksheet (
    roll_num INT,
    Hindi INT,
    English INT,
    Math INT,
    Total_marks INT
);
use students;
insert into marksheet
values (1, 57, 59, 58, 174),
(2, 64, 65 , 66, 195),
(3, 74,75,76,225),
(4, 84,85,86,255),
(5, 63, 67, 68, 198),
(6, 73,77,78,228),
(7, 83, 87, 89, 259);
select * from marksheet;

use students;
SELECT 
    sn.nos, sn.address, m.Total_marks
FROM
    marksheet m
        INNER JOIN
    std_name sn ON sn.roll_num = m.roll_num;
use students;
select m.math,m.Total_marks,s.nos
from marksheet m
left join std_name s on m.roll_num = s.roll_num
where Total_marks > 170
group by Total_marks
order by nos;
create database population;
use population;
CREATE TABLE details (
    index_no INT,
    nam VARCHAR(255),
    state VARCHAR(255)
);
CREATE TABLE info (
    nam VARCHAR(255),
    members INT
);
CREATE TABLE work_details (
    nam VARCHAR(255),
    place VARCHAR(255),
    salary INT
);
insert into details
values (1, "Dibya" ,"Odisha"),
(2, "Ajay", "Delhi"),
(3, "Rahul", "Gujrat"),
(4, "Ved", "Chhatisgarh"),
(5, "Subham", "Delhi"),
(6, "Chinmay", "Odisha"),
(7, "Shibu", "Gujrat"),
(8, "Ankita", "Pune"),
(9, "Madhu" , "Chhatisgarh"),
(10, "Amita", "Pune");
insert into info
values  ("Dibya" , 5),
("Ajay", 4),
("Rahul", 6),
("Ved", 5),
("Subham", 6),
("Chinmay", 6),
("Shibu", 5),
("Ankita", 4),
("Madhu" , 5),
("Amita", 4);
insert into work_details
values ("Dibya" ,"Odisha", 40000),
("Ajay", "Delhi", 50000),
("Rahul", "Gujrat", 50000),
("Ved", "Chhatisgarh", 45000),
("Subham", "Delhi", 40000),
("Chinmay", "Odisha", 35000),
("Shibu", "Gujrat", 65000),
("Ankita", "Pune", 45000),
("Madhu" , "Chhatisgarh", 38000),
("Amita", "Pune", 42000);

    SELECT 
    d.nam, d.state, w.salary
FROM
    details d
        LEFT JOIN
    work_details w ON d.nam = w.nam
ORDER BY salary DESC;
SELECT 
    state, COUNT(state) AS total
FROM
    details
GROUP BY state;
select * from details;
select d.emp_no, d.from_date, max(s.salary) as highest_salary
from dept_emp d
 join
salaries s on d.emp_no = s.emp_no
use employees;
select d.dept_no, s.salary, t.dept_name
from dept_emp d
join 
salaries s   on d.emp_no = s.emp_no
join departments t
on d.dept_no = t.dept_no
where salary < (select avg(salary) from salaries);
use employees;
create table emp_sal
(first_name varchar(30), salary int, dept_name varchar(30));
alter table emp_sal drop column dept_name;
select e.first_name, s.salary
from employees e
join 
salaries s on e.emp_no=s.emp_no
group by first_name
having max(salary);
use employees;
select * from dept_emp;
create database manager;
CREATE TABLE customer (
    customerID INT,
    customer_name VARCHAR(30),
    contactname VARCHAR(30),
    address VARCHAR(30),
    city CHAR(6),
    postalcode INT,
    country VARCHAR(30)
);
insert into customer
values (1, "Dibya Mishra","Dibya", "Talcher", "Angul", 759102, "India"),
(2, "Rosalin Mishra" , "rosy", "Cuttack" , "Jajpur", 751001, "India"),
(3, "Sohaib Malick", "Shoaib" , "Rawalpindi", "Punjab", 224107, "Pakistan");

use employees;
create view v_manager_avg_salary as
select avg(salary) as sal
from salaries;

delimiter $$
create procedure avg_sal()
begin
select Round(avg(salary),2) from salaries;
end$$
delimiter ;

select customerName
from customers
where creditLimit > (select creditLimit
from customers
where customername = "Rochelle Gifts")
select reverse(substring('Sachin Tendulkar', -7, 3))