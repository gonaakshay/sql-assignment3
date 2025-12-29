select upper(st_name) from class;
select lower(st_name) from class;

select st_name,length(st_name) from class;

select reverse(st_name) from class;

select concat(st_name ," lives in ",st_city) from class;

select replace(st_email,"gmail","outlook") from class;

select substr(st_name,1,3) from class;

select st_name,lpad(st_name,10,'*') from class;

select st_name,rpad(st_name,12,'#')from class;

select left(st_name,2) from class;

select right(st_name, 2) from class;

select st_name,locate("A",st_name) from class;

select st_name,ascii(left(st_name,1)) from class;

select st_marks,mod(st_marks,10) from class;

select sqrt(st_marks) from class;

select truncate(st_marks,-1) from class;

select st_marks,round(st_marks,-1) from class;

select st_marks,abs(st_marks) from class;

select st_name,admission_date from class;

select st_name,admission_date,timestampdiff(year,admission_date,curdate()) from class;

select st_name,admission_date,date_add(admission_date,interval 6 month) from class;

select st_name,day(admission_date),month(admission_date),year(admission_date) from class;

select st_name,admission_date,dayname(admission_date) from class;

select st_name,st_marks,if(st_marks>=75,"Pass","Fail") from class;

select st_email,ifnull(st_email,"Not Provided") from class;

select st_city,nullif(st_city,"Delhi") from class;

select st_name,coalesce(st_email, 'Not Provided')from class;