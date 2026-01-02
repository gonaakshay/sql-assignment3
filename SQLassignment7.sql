select * from employee;
select deptno,count(*) from employee where job not in ('president') group by deptno;

select job,sum(sal) from employee group by job;

select deptno,count(*) from employee where job = 'manager' group by deptno;

select deptno,avg(sal) from employee where deptno <> 20 group by deptno;

select job,count(*) from employee where ename like '%a%' group by job;

select deptno,count(*),avg(sal) from employee where sal > 2000 group by deptno;

select deptno,count(*),sum(sal) from employee where job='salesman' group by deptno;

select count(*),job,max(sal) from employee group by job;

select job,max(sal) from employee group by job;

select sal,count(*) from employee group  by sal;

select deptno,job,count(*),sum(sal) as total_sal from employee group by job,deptno;

select deptno,count(*) as clerk_count from employee where job='clerk' group by deptno having count(*) >=2; 

select deptno,sum(sal),count(*) as emp_count from employee group by deptno having count(*) >= 4; 

select job,count(*) as no_of_employees,sum(sal) from employee where sal> 1200 group by job;

select job,max(sal) from employee group by job having max(sal) > 2000;

select deptno,count(*) as no_of_managers from employee where job='manager' group by deptno having count(*)<=2;

select sal,count(*) from employee group by sal having count(*)>1;

select deptno,avg(sal) from employee group by deptno having avg(sal)<3000;

select deptno,count(*) as no_of_emp from employee where ename like '%a%' or ename like '%s%' group by deptno having count(*)>=3;

select job,min(sal),max(sal) from employee group by job having min(sal)>1000 and max(sal)<5000;