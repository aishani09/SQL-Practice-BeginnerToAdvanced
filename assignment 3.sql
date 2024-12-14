create table department_2(dept_id varchar(5), dept_name varchar(10) not null, primary key(dept_id));

create table project_2(project_id varchar(5), project_name varchar(10) not null, did varchar(5), primary key(project_id), foreign key(did) references department_2(dept_id));

create table employee_2(emp_id varchar(5), name varchar(15), gender varchar(5), did varchar(5), pid varchar(5), doj date, age int check (age>21), location varchar(15) default 'Chennai' , primary key(emp_id), foreign key(did) references department_2(dept_id), foreign key(pid) references project_2(project_id));

insert into department_2 (dept_id, dept_name) values
(1, 'IT'),
(2, 'Finance'),
(3, 'HR'),
(4, 'Marketing'),
(5, 'Operations');

insert into project_2 (project_id, project_name, did) values
(1, 'DigitTran', 1),    -- Digital Transformation
(2, 'TaxAuto', 2),      -- Tax Automation
(3, 'EmpWelf', 3),      -- Employee Welfare
(4, 'AdCamp', 4),       -- Ad Campaigns
(5, 'LogManage', 5);    -- Logistics Management

-- Employee with Location Specified
INSERT INTO EMPLOYEE_2 (EMP_ID, NAME, GENDER, DID, PID, DOJ, AGE, LOCATION) VALUES
(1001, 'Aarav', 'M', 1, 1, '2020-01-15', 25, 'BANGALORE');

-- Employee Without Location (Default Location 'CHENNAI')
INSERT INTO EMPLOYEE_2 (EMP_ID, NAME, GENDER, DID, PID, DOJ, AGE) VALUES
(1002, 'Ananya', 'F', 2, 2, '2019-05-20', 29);

-- Another Employee With Location Specified
INSERT INTO EMPLOYEE_2 (EMP_ID, NAME, GENDER, DID, PID, DOJ, AGE, LOCATION) VALUES
(1003, 'Kumar', 'M', 1, 1, '2021-03-10', 30, 'MUMBAI');

-- Employee Without Location (Default Location 'CHENNAI')
INSERT INTO EMPLOYEE_2 (EMP_ID, NAME, GENDER, DID, PID, DOJ, AGE) VALUES
(1004, 'Priya', 'F', 3, 3, '2020-08-18', 27);

-- Employee with Location Specified
INSERT INTO EMPLOYEE_2 (EMP_ID, NAME, GENDER, DID, PID, DOJ, AGE, LOCATION) VALUES
(1005, 'Rohan', 'M', 5, 5, '2018-11-12', 32, 'DELHI');

update employee_2 set pid=2 where emp_id=1001;

update employee_2 set name = 'Kumaar' where name ='Kumar';

delete from employee_2 where gender ='F' and pid=2;

delete from employee_2 where gender='M' and pid=1;

delete from project_2 where did=1;

drop table employee_2;
drop table project_2;
drop table department_2;






