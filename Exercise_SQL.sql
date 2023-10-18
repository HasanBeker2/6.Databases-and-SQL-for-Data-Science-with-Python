
--Retrieve all employees whose address is in Elgin,IL.
Select *
from EMPLOYEES
Where ADDRESS LIKE '%Elgin,IL%';

--Retrieve all employees who were born during the 1970’s.
Select *
from EMPLOYEES
Where B_DATE like '197%';

--Retrieve all employees in department 5 whose salary is between 60000 and 70000.
Select *
from EMPLOYEES
Where DEP_ID = 5 and SALARY between 6000 and 70000;

--Retrieve a list of employees ordered by department ID.
Select *
from EMPLOYEES
ORDER BY DEP_ID;

--Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

--In SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name.
SELECT D.DEP_NAME , E.F_NAME, E.L_NAME
FROM EMPLOYEES as E, DEPARTMENTS as D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;

--For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, COUNT(*) as COUNT_Employee
FROM EMPLOYEES
GROUP BY DEP_ID;

--For each department retrieve the number of employees in the department, and the average employee salary in the department.

SELECT DEP_ID, COUNT(*) as COUNT_EMP, AVG(SALARY) as AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID;

--in Sabove problem, order the result set by Average Salary..

SELECT DEP_ID, COUNT(*) as COUNT_EMP, ROUND(AVG(SALARY),1) as AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG(SALARY);

--In SQL problem 4 (Exercise 3 Problem 4), limit the result to departments with fewer than 4 employees.
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING count(*) < 4
ORDER BY AVG_SALARY;