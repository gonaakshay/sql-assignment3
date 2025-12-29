SELECT COUNT(*) FROM employee WHERE sal < 2000 AND deptno = 10;
SELECT SUM(sal) FROM employee WHERE job = 'CLERK';
SELECT AVG(sal) FROM employee;
SELECT COUNT(*) FROM employee WHERE ename LIKE 'A%';
SELECT COUNT(*) FROM employee WHERE job IN ('CLERK','MANAGER');
SELECT SUM(sal) FROM employee WHERE MONTH(hiredate) = 2;
SELECT COUNT(*) FROM employee WHERE mgr = 7839;
SELECT COUNT(*) FROM employee WHERE comm IS NOT NULL AND deptno = 30;
SELECT AVG(sal) AS avg_salary,SUM(sal) AS total_salary,COUNT(*) AS no_of_employees,MAX(sal) AS max_salary FROM employee WHERE job = 'PRESIDENT';
SELECT COUNT(*) FROM employee WHERE ename LIKE '%A%';
SELECT COUNT(*) AS no_of_employees,SUM(sal) AS total_salary FROM employee WHERE ename LIKE '%LL%';
SELECT COUNT(DISTINCT deptno) FROM employee;
SELECT COUNT(*)
FROM employee WHERE ename LIKE '%Z%';
SELECT COUNT(*) FROM employee WHERE ename LIKE '%@%';
SELECT SUM(sal) FROM employee WHERE job = 'CLERK' AND deptno = 30;
SELECT MAX(sal) FROM employee WHERE job = 'ANALYST';
SELECT COUNT(DISTINCT sal) FROM employee;
SELECT AVG(sal) FROM employee WHERE job = 'CLERK';
SELECT MIN(sal) FROM employee WHERE deptno = 10 AND job IN ('MANAGER','CLERK');
SELECT COUNT(*) FROM employee WHERE sal < 2900;



















