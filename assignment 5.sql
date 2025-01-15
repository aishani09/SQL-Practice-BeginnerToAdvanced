CREATE TABLE EMPLOYEE_2 ( EMPID INT PRIMARY KEY, EMPNAME VARCHAR(50), JOB VARCHAR(50), DOB DATE, SALARY DECIMAL(10, 2),DEPTNO INT,GENDER CHAR(1));

INSERT INTO EMPLOYEE_2 (EMPID, EMPNAME, JOB, DOB, SALARY, DEPTNO, GENDER)
VALUES
(1, 'Aarav', 'Manager', '1990-04-10', 75000.00, 101, 'M'),
(2, 'Ananya', 'Engineer', '1985-08-15', 60000.00, 102, 'F'),
(3, 'Rohit', 'Technician', '1992-08-20', 45000.00, 101, 'M'),
(4, 'Isha', 'Clerk', '1995-12-01', 30000.00, 103, 'F'),
(5, 'Kabir', 'Manager', '1988-04-18', 80000.00, 104, 'M'),
(6, 'Meera', 'Engineer', '1993-08-08', 55000.00, 102, 'F');

SELECT SQRT(SALARY) AS SalarySQRT FROM EMPLOYEE_2;

SELECT ABS(SALARY) AS SalaryABS, CEIL(SALARY) AS SalaryCEIL, FLOOR(SALARY) AS SalaryFLOOR, POWER(SALARY, 2) AS SalaryPOWER, ROUND(SALARY, 2) AS SalaryROUND FROM EMPLOYEE_2;

SELECT SUBSTR(EMPNAME, 1, 5) AS ShortName FROM EMPLOYEE_2;

SELECT UPPER(EMPNAME) AS UpperName, LOWER(EMPNAME) AS LowerName, CONCAT(EMPNAME, 'is employed.') AS ConcatName, REPLACE(EMPNAME, 'a', '@') AS ReplaceName FROM EMPLOYEE_2;

SELECT MAX(SALARY), MIN(SALARY) FROM EMPLOYEE_2;

SELECT EXTRACT(MONTH FROM DATE '2015-07-14') AS Month_Number;

SELECT DATE_FORMAT(DOB, '%d-%m-%y') AS Formatted_DOB FROM EMPLOYEE_2;

SELECT EMPNAME, DATE_ADD(DOB, INTERVAL 2 MONTH) AS DATE_AFTER_2_MONTHS FROM EMPLOYEE_2;

SELECT LAST_DAY(DATE '2015-10-05') AS Last_Date_Of_Month FROM DUAL;

SELECT DATE_FORMAT(CURDATE(), '%Y') AS ROUNDED_YEAR, DATE_FORMAT(CURDATE(), '%m') AS ROUNDED_MONTH, DATE_FORMAT(CURDATE(), '%d') AS ROUNDED_DAY;   

SELECT CURDATE() AS CRNT_DATE, DATE_SUB(CURDATE(), INTERVAL 60 DAY) AS DATE_60_DAYS_BEFORE;

SELECT EMPNAME, DOB FROM EMPLOYEE_2 WHERE EXTRACT(MONTH FROM DOB)=8;

SELECT EMPNAME FROM EMPLOYEE_2 WHERE EXTRACT(MONTH FROM DOB)=EXTRACT(MONTH FROM CURDATE());

SELECT EMPNAME FROM EMPLOYEE_2 WHERE GENDER='F' AND EXTRACT(MONTH FROM DOB)='4';

SELECT MAX(SALARY), MIN(SALARY), MAX(SALARY)-MIN(SALARY) FROM EMPLOYEE_2;

SELECT DEPTNO, COUNT(*) AS NUM_EMPLOYEES FROM EMPLOYEE_2 GROUP BY DEPTNO;

SELECT SUM(SALARY) FROM EMPLOYEE_2;

SELECT JOB, SUM(SALARY) FROM EMPLOYEE_2 GROUP BY JOB;

SELECT JOB, EMPNAME, SALARY FROM EMPLOYEE_2 WHERE (JOB, SALARY) IN (SELECT JOB, MIN(SALARY) FROM EMPLOYEE_2 GROUP BY JOB);

SELECT COUNT(DISTINCT JOB) FROM EMPLOYEE_2;