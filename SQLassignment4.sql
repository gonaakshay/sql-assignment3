select * from employee;

select ename from employee where comm is null;

select * from employee where job='salesman' and deptno=30;

select * from employee where job='salesman' and deptno=30 and sal>1500;

select ename from employee where ename like 'S%' or ename like 'A%';

select ename,deptno from employee where deptno not in(10,20);

select ename from employee where ename not like 'S%';

select ename,job from employee where comm is null and job='clerk';

select ename from employee where job='salesman' and deptno=30 and sal>2450;

select ename from employee where job='analyst' and deptno=20 and sal>2500;

select ename from employee where ename like 'M%' or ename like 'S%';

select ename,sal,deptno,sal*12 as annual from employee where deptno not in(30);

select ename from employee where ename not like '%ES' and ename not like '%R';

select ename,hiredate from employee where hiredate > '1981-12-31';

select ename,hiredate from employee where month(hiredate)=2;

select count(*) as total_employee from employee ;

select count(*) as total_employee from employee where deptno=20;

select sum(sal) as total_salary from employee where deptno in(10,20) and job in('manager','clerk');

select count(*),avg(sal) as average_salary from employee where deptno in(10,30);