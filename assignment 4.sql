CREATE TABLE DEPARTMENT_2 (DEPT_ID INT PRIMARY KEY, DEPT_NAME VARCHAR(50) NOT NULL, STUDENT_CNT INT);

CREATE TABLE STUDENT_2 ( REG_NO INT PRIMARY KEY, NAME VARCHAR(50) NOT NULL, GENDER CHAR(1) CHECK (GENDER IN ('M', 'F')), AGE INT CHECK (AGE > 0), DEPTID INT, SEMESTER INT CHECK (SEMESTER BETWEEN 1 AND 8), FOREIGN KEY (DEPTID) REFERENCES DEPARTMENT_2(DEPT_ID));

INSERT INTO DEPARTMENT_2 (DEPT_ID, DEPT_NAME, STUDENT_CNT) VALUES (1, 'CSE', 8);
INSERT INTO DEPARTMENT_2 (DEPT_ID, DEPT_NAME, STUDENT_CNT) VALUES (2, 'ECE', 5);
INSERT INTO DEPARTMENT_2 (DEPT_ID, DEPT_NAME, STUDENT_CNT) VALUES (3, 'EEE', 4);
INSERT INTO DEPARTMENT_2 (DEPT_ID, DEPT_NAME, STUDENT_CNT) VALUES (4, 'MECH', 3);

INSERT INTO STUDENT_2 (REG_NO, NAME, GENDER, AGE, DEPTID, SEMESTER)
VALUES 
(101, 'Aarav Sharma', 'M', 20, 1, 4),
(102, 'Ananya Mishra', 'F', 19, 1, 2),
(103, 'Aditi Reddy', 'F', 21, 1, 6),
(104, 'Manish Verma', 'M', 22, 1, 8),
(105, 'Arjun Kapoor', 'M', 18, 2, 2),
(106, 'Meena Iyer', 'F', 20, 2, 5),
(107, 'Rohit Gupta', 'M', 19, 2, 3),
(108, 'Simran Kaur', 'F', 21, 3, 7),
(109, 'Soham Nair', 'M', 20, 3, 4),
(110, 'Anjali Jain', 'F', 18, 3, 1),
(111, 'Rahul Bose', 'M', 19, 4, 2),
(112, 'Madhuri Rao', 'F', 22, 4, 6);

SELECT * FROM DEPARTMENT_2;

SELECT * FROM STUDENT_2;

SELECT DISTINCT DEPT_NAME FROM DEPARTMENT_2;

SELECT DISTINCT DEPT_ID, DEPT_NAME FROM DEPARTMENT_2;

SELECT REG_NO, NAME FROM STUDENT_2 WHERE DEPTID = (SELECT DEPT_ID FROM DEPARTMENT_2 WHERE DEPT_NAME = 'CSE');

SELECT REG_NO, NAME FROM STUDENT_2 WHERE GENDER = 'F' AND DEPTID = (SELECT DEPT_ID FROM DEPARTMENT_2 WHERE DEPT_NAME = 'CSE');

SELECT COUNT(*) AS MALE_COUNT FROM STUDENT_2 WHERE GENDER='M' AND DEPTID = (SELECT DEPT_ID FROM DEPARTMENT_2 WHERE DEPT_NAME = 'CSE');

SELECT REG_NO, NAME FROM STUDENT_2 WHERE AGE > 19;

SELECT NAME FROM STUDENT_2 WHERE NAME LIKE 'A%';

SELECT NAME FROM STUDENT_2 WHERE NAME LIKE '%a';

SELECT NAME FROM STUDENT_2 WHERE NAME LIKE '%m%';

SELECT NAME FROM STUDENT_2 WHERE NAME LIKE '%m%' AND NAME NOT LIKE '%m' AND NAME NOT LIKE 'm%';

SELECT REG_NO, NAME FROM STUDENT_2 WHERE DEPTID IN (SELECT DEPT_ID FROM DEPARTMENT_2 WHERE DEPT_NAME = 'ECE' OR DEPT_NAME = 'EEE');

SELECT MAX(STUDENT_CNT) AS MAX_STUD_COUNT FROM DEPARTMENT_2;

SELECT AVG(STUDENT_CNT) AS AVG_STUD_COUNT FROM DEPARTMENT_2;

SELECT NAME FROM STUDENT_2 WHERE SEMESTER BETWEEN 5 AND 6;

SELECT DISTINCT DEPT_NAME FROM DEPARTMENT_2 JOIN STUDENT_2 ON DEPARTMENT_2.DEPT_ID = STUDENT_2.DEPTID;

SELECT COUNT(*) FROM STUDENT_2 WHERE DEPTID = (SELECT DEPT_ID FROM DEPARTMENT_2 WHERE DEPT_NAME = 'CSE');

