create database if not exists learn;

use learn ;

create table if not exists employee (
EMPNO INT NOT NULL,
ENAME VARCHAR(255) NOT NULL,
JOB VARCHAR(255) NOT NULL,
MGR INT,
HIREDATE DATE,
SAL INT,
COMM INT,
DEPTNO INT,
PRIMARY KEY(EMPNO)
);

create table if not exists department (
DEPTNO INT NOT NULL,
DNAME VARCHAR(255),
LOC VARCHAR(255),
PRIMARY KEY(DEPTNO)
);

INSERT INTO employee (
EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES 
(7369,'VARUN','CLERK',7902,str_to_date('17-DEC-2005','%d-%b-%Y'),800,null,20),
(7499,'SHUBAM','SALESMAN',7698,str_to_date('20-FEB-2006','%d-%b-%Y'),1600,300,30),
(7521,'AKASH','SALESMAN',7698,str_to_date('22-FEB-2006','%d-%b-%Y'),1250,500,30),
(7566,'ASHISH','MANAGER',7839,str_to_date('02-APR-2006','%d-%b-%Y'),2975,NULL,20),
(7654,'AJAY','SALESMAN',7698,str_to_date('28-SEP-2006','%d-%b-%Y'),1250,1400,30),
(7698,'AMANDEEP','MANAGER',7839,str_to_date('01-MAY-2006','%d-%b-%Y'),2850,NULL,30),
(7782,'BILAL','MANAGER',7839,str_to_date('09-JUN-2006','%d-%b-%Y'),2450,NULL,10),
(7788,'ADNAN','ANALYST',7566,str_to_date('09-DEC-2007','%d-%b-%Y'),3000,NULL,20),
(7839,'SONU','PRESIDENT',NULL,str_to_date('17-NOV-2006','%d-%b-%Y'),5000,NULL,10),
(7844,'MONU','SALESMAN',7698,str_to_date('08-SEP-2006','%d-%b-%Y'),1500,0,30),
(7876,'PRAKASH','CLERK',7788,str_to_date('12-JAN-2008','%d-%b-%Y'),1100,NULL,20),
(7900,'HARSH','CLERK',7698,str_to_date('03-DEC-2006','%d-%b-%Y'),950,NULL,30),
(7902,'IMRAN','ANALYST',7566,str_to_date('03-DEC-2006','%d-%b-%Y'),3000,NULL,20),
(7934,'SAMEER','CLERK',7782,str_to_date('23-JAN-2007 ','%d-%b-%Y'),1300,NULL,10);

INSERT INTO department (
DEPTNO, DNAME,LOC) VALUES 
(10, 'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');