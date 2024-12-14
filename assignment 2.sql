create table employee_1(fname varchar(20), minit varchar(15), lname varchar(15), ssn varchar(20), bdate date, address varchar(100), sex varchar(5), salary varchar(10), super_ssn varchar(20), primary key(ssn));

create table department_1(dname varchar(20), dnumber varchar(10), mgr_ssn varchar(20), mgr_start_date date, primary key(dnumber));

create table dept_locations(dnumber varchar(5), dlocation varchar(20), primary key(dlocation), foreign key(dnumber) references department_1(dnumber));

create table project(pname varchar(20), pnumber varchar(5), plocation varchar(20), dnum varchar(5), primary key(pnumber), foreign key(dnum) references department_1(dnumber));

create table works_on(essn varchar(20), pno varchar(5), hours varchar(5), primary key(essn), foreign key(pno) references project(pnumber), foreign key(essn) references employee_1(ssn));

create table dependent(essn varchar(20), dependent_name varchar(15), sex varchar(5), bdate date, relationship varchar(10), primary key(dependent_name), foreign key(essn) references employee_1(ssn));
