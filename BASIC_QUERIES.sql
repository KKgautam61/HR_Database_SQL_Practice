## select all the details from employees and department table

SELECT * 
FROM EMPLOYEES E,  DEPARTMENTS D
WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID;

## GET THE FULL NAME AND HIRE DATE OF ALL EMPLOYEES
SELECT CONCAT(FIRST_NAME, " ", LAST_NAME) AS NAME, HIRE_DATE
FROM EMPLOYEES;

## GET THE FULL NAME AND JOB_ID WITH IN ONE COLUMN
SELECT CONCAT(E.FIRST_NAME, " ", E.LAST_NAME, " ", "is ", J.JOB_TITLE) AS NAME_TITLE
FROM EMPLOYEES E JOIN JOBS J
WHERE E.JOB_ID=J.JOB_ID;

## select employees with no managers
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE MANAGER_ID IS NOT NULL;


## GET THE LAST NAME AND JOB TITLE OF ALL EMPLOYEES WHOSE SALARY NOT EQUAL TO 2500,3500,5000 AND THE JOB TITLE IS
## SALES REPRESENTATIVE OR STOCK CLERK

SELECT E.LAST_NAME, J.JOB_TITLE
FROM EMPLOYEES E JOIN JOBS J
WHERE E.JOB_ID=J.JOB_ID
AND SALARY NOT IN (2500,3500,5000)
AND JOB_TITLE IN ("SALES REPRESENTATIVE", "STOCK CLERK");

## NUMBER OF EMPLOYEES IN EACH DEPARTMENT HAVING MANAGER ID NULL
SELECT D.DEPARTMENT_ID, COUNT(E.FIRST_NAME)
FROM EMPLOYEES E JOIN DEPARTMENTS D
WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID
AND MANAGER_ID IS NULL
GROUP BY D.DEPARTMENT_ID;


#GET THE STATS ON SALARIES IN EMPLOYEES TABLES
SELECT MAX(SALARY) AS SAL_MAX, MIN(SALARY) AS SAL_MIN, AVG(SALARY) SAL_AVG
FROM EMPLOYEES;

## GET THE SUM OF SALARIES IN EACH DEPARTMENT
SELECT SUM(SALARY) AS TOTAL 
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

## SHOW DEPARTMENT NAME AND AVG SALARY
SELECT D.DEPARTMENT_NAME AS DEPARTMENT, ROUND(AVG(E.SALARY),2) AS SAL_AVG
FROM EMPLOYEES E JOIN DEPARTMENTS D
WHERE E.DEPARTMENT_ID=D.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME;

##NO. EMPLOYEES I ALL DEPTS
SELECT DEPARTMENT_ID, COUNT(*) AS TOTAL
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;





