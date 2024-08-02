-- Retrieving All Rows and Columns from a Table
select * from employee;
-- Retrieving a Subset of Rows from a Table
SELECT * FROM employee
WHERE
    deptno > 10;

-- Finding Rows That Satisfy Multiple Conditions
SELECT * FROM employee
WHERE
    deptno = 10 OR comm IS NOT NULL
        OR sal <= 2000;

-- here we get all the rows which have deptno '10' and where comm values are not null and where sal is smaller or equal to 2000
-- but if we want only those rows where dept no is 10 with all these conditions we need to first execute this then we'll apply another condition.

SELECT * FROM employee
WHERE
    (deptno = 10 OR comm IS NOT NULL
        OR sal <= 2000)
        AND DEPTNO = 10;
        
-- Providing Meaningful Names for Columns
SELECT 
    sal AS salary, comm AS commission
FROM
    employee
LIMIT 5; -- Limiting the Number of Rows Returned

-- Referencing an Aliased Column in the WHERE Clause
SELECT 
    salary
FROM
    (SELECT 
        sal AS salary, comm AS commission
    FROM
        employee) AS a
WHERE
    commission IS NOT NULL;

-- Concatenating Column Values
SELECT 
    EMPNO,
    sal AS salary,
    CONCAT(ename, ' works as ', job) AS position
FROM
    employee
WHERE
    deptno = 10;
    
-- Using Conditional Logic in a SELECT Statement
SELECT 
    ename,
    sal AS salary,
    CASE
        WHEN sal <= 2000 THEN 'UNDERPAID'
        WHEN sal >= 4000 THEN 'OVERPAID'
        ELSE 'OK'
    END AS Status
FROM
    employee
LIMIT 5; 

-- Returning n Random Records from a Table
SELECT 
    ename, job
FROM
    employee
ORDER BY RAND()
LIMIT 5;

-- Finding Null Values
SELECT 
    *
FROM
    employee
WHERE
    comm IS NULL;

-- Transforming Nulls into Real Values
select coalesce(comm,0) from employee;

-- Searching for Patterns
SELECT 
    ename, job
FROM
    employee
WHERE
    deptno IN (10 , 20)