
create table department(deptid varchar(5), dname varchar(15), location varchar(15));

create table student(regnum varchar(10), name varchar(20), deptid varchar(5), semester varchar(10), age varchar(3));

create table faculty(fid varchar(5), fname varchar(15), deptid varchar(5));

create table class(cname varchar(10), slot varchar(5), room varchar(5), fid varchar(5));

create table enrolled(regnum varchar(10), cname varchar(10));

alter table student add gender varchar(5);

alter table student add mobile varchar(10);

alter table student rename column name to SName;

alter table faculty rename column fid to FacultyID;

alter table class rename column fid to FacultyID;

drop table enrolled;



