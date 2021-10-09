desc emaillist;

insert into emaillist values(null, '둘', '리', 'pocpoc0202@naver.com');

select no, first_name, last_name, email
from emaillist
order by no desc;