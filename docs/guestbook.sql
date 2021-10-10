desc guestbook;

-- insert
insert into guestbook values(null, '둘리', '1234', '호이~', now());

-- select
select no, name, date_format(reg_date, '%Y/%m/%d %H:%i%s'), message from guestbook
order by reg_date desc;

-- delete
delete from guestbook
where no=1
and password='1234';

select * from guestbook;
delete from guestbook where no=1 and password='bbb';














employees;
department;


SELECT *
FROM employees a JOIN department b
ON a.emp_no = b.emp_no;



natural join = 조인;
