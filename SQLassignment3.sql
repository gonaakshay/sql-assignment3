select * from employee where job='clerk' and sal < 1500;

select ename,hiredate from employee where job='manager' and deptno=30;

select *,sal*12 as annual from employee where job='salesman' and deptno=30 and sal*12 >1400;

select * from employee where deptno=30 or job='analyst';

select ename from employee where sal>1100 and job='clerk';

select ename,sal,sal*12 as annual,deptno from employee where deptno=20 and sal>1100 and sal*12 >12000;

select empno,ename from employee where job='manager' and deptno=30;

select * from employee where deptno in (20,30);

select * from employee where job='president' and sal=4000;

select ename,deptno,job from employee where job='clerk' and deptno in (10,20);

select * from employee where job in ('clerk','manager') and deptno=10; 

select ename from employee where deptno in (10,20,30,40);

select * from employee where empno in (7902,7839);

select * from employee where job in ('manager','salesman','clerk');

select ename from employee where hiredate between '1981-01-01' and '1982-12-31';

select * from employee where sal between 1250 and 3000;  

select ename from employee where hiredate > '1981-12-31' and deptno in (10,30);

select ename,sal*12 as annual from employee where job in ('manager','clerk') and deptno in (10,30);

select *,sal*12 as annual from employee where sal between 1000 and 4000 and sal*12 > 15000;
