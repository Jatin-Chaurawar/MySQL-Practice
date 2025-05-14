
SELECT * FROM danger.studant;
insert into studant
values 
('1','rashmi','joshi','female','nagpur'),
('2','sanjog','meshram','male','navi mumbai'),
('3','aparna','bhajbhuje','female','nagpur'),
('4','abhit','mishra','male','nagpur'),
('5','kuldip','fulpagar','male','nagpur');
 
 set sql_safe_updates =0;
 update studant
 set firstname = 'sumit', gender= 'male'
 where stuid= 1;
 delete from studant where lastname ='joshi';
 alter table studant 
 add email varchar(255);
 alter table studant 
 drop column city;
 
