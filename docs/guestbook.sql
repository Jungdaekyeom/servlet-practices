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




select * from guestbook;
select * from user;


-- 입력이 잘 되는지 테스트
insert into user values(null, '둘리', 'dooly@gmail.com', '1234', 'male', now());


select * from user;

-- section01 : 
select no, name from user where email='kickscar@gmail.com' and password='1234';

-- section02
select * from user;





employees;
department;


SELECT *
FROM employees a JOIN department b
ON a.emp_no = b.emp_no;



natural join = 조인;
