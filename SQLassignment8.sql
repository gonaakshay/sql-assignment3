#where clause,group by clause,having clause,order by clause
select * from employee;

select deptno,sum(sal) from employee where sal > 1000 group by deptno having sum(sal)>5000 order by sum(sal) desc;

select job,count(*) as no_of_employees from employee where job <> 'clerk'  group by job having count(*)>1 order by count(*) desc;  

select deptno,avg(sal) from employee where deptno <> 10 group by deptno having avg(sal)>2000 order by avg(sal) asc;

select job,max(sal) from employee where hiredate > '1981-12-31' group by job having max(sal)>2500 order by max(sal) desc;

select deptno,count(*) as no_of_employees from employee where job <> 'president' group by deptno having count(*)>2 order by count(*) desc;

select job,sum(comm) as total_comm from employee where comm is not null group by job having sum(comm)>500 order by sum(comm) desc;

select deptno,min(sal) from employee where sal>900 group by deptno having min(sal)>1000 order by min(sal) asc;

select job,avg(sal) from employee where job <> 'salesman' group by job having avg(sal)>2500  order by avg(sal) desc; 

select deptno,max(sal),count(*) as no_of_employee from employee where hiredate < '1982-01-01' group by deptno having count(*)>1 order by max(sal) desc;

select job,count(*) as no_of_employees from employee where sal>1000 group by job having count(*)>1 order by job;

#all 

select * from employee where sal < all(select sal from employee where job='manager');

select * from employee where sal > all(select sal from employee where deptno=30);

select * from employee where hiredate < all(select hiredate from employee where deptno=20);

select * from employee where hiredate < all(select hiredate from employee where deptno=10);

select * from employee where comm > all(select comm from employee where comm is not null);

select * from employee where sal = all(select sal from employee where job='clerk');

select * from department;
select * from employee where sal > all(select sal from employee where deptno in (select deptno from department where loc='chicago'));

select * from employee where hiredate > all(select hiredate from employee where job='manager');

select * from employee where sal < all(select sal from employee where deptno=20);

select * from employee where sal > any(select sal from employee where job='clerk') and sal < all(select sal from employee where job='mamager'); 

select * from employee where sal > all(select sal from employee where deptno=20) and sal > any(select sal from employee where deptno=30);

#any
select * from employee where sal > any(select sal from employee where deptno=10);

select * from employee where sal < any (select sal from employee where job='manager');

select * from employee where hiredate < any(select hiredate from employee where deptno=20);

select * from employee where comm > any(select comm from employee where comm is not null);

select * from employee where sal = any(select sal from employee where job='clerk');

select * from employee where sal > any(select sal from employee where job='salesman');

select * from employee where hiredate > any(select hiredate from employee where deptno=30);

select * from employee where sal < any(select sal from employee where deptno in(select deptno from department where loc='New York'));

select * from employee where hiredate < any(select hiredate from employee where job='salesman')
						 and hiredate > all(select hiredate from employee where job='clerks'); 
                         
select * from employee where sal <> any(select sal from employee where deptno=30); 

#Nested Subqueries
select distinct sal from employee order by sal asc limit 2,1;

select * from employee where sal=(select distinct sal from employee order by sal desc limit 1,1);                         

select * from employee where hiredate=(select distinct hiredate from employee order by hiredate limit 2,1);

select * from employee where sal=(select distinct sal from employee order by sal desc limit 6,1);

select * from employee;
select * from department;
select d.dname from employee e join department d on e.deptno=d.deptno where sal=(select distinct sal from employee order by sal desc limit 4,1);

select e2.ename as smith_manager from employee e1 join employee e2 on e1.mgr=e2.empno where e1.ename='smith';

select e3.ename as allen_manager from employee e1 join employee e2 on e1.mgr=e2.empno
												  join employee e3 on e2.mgr=e3.empno where e1.ename='allen';