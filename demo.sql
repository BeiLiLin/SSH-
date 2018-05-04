show variables like '%character%';
set character_set_database = utf8;
set character_set_server = utf8;

drop database StudentManagement;
create database StudentManagement;
use StudentManagement;


drop table if exists student;
create table student(
Sid varchar(10),
Sname varchar(10),
Sex char(2),
Address varchar(20),
Tele varchar(11),
constraint PK_Stu PRIMARY KEY (Sid),
constraint CK_Sex check(Sex in('男','女'))
)ENGINE = innoDB default charset utf8;



select * from Student;
delete from Student where sid in('S001','S002');
delete from Student where sid in('S001','S002');
insert into Student value('S001','张三','男','dasdads','12344564');
insert into Student values('S002','张三','男','dasdads','12344564')
,('S003','张三','男','dasdads','12344564')
,('S004','张三','男','dasdads','12344564')
,('S005','张三','男','dasdads','12344564')
,('S006','张三','男','dasdads','12344564')
,('S007','张三','男','dasdads','12344564')
,('S008','张三','男','dasdads','12344564')
,('S009','张三','男','dasdads','12344564')
,('S010','张三','男','dasdads','12344564')
,('S011','张三','男','dasdads','12344564')
,('S012','张三','男','dasdads','12344564');

insert into Student values('S023','张三','男','dasdads','12344564')
,('S013','张三','男','dasdads','12344564')
,('S014','张三','男','dasdads','12344564')
,('S015','张三','男','dasdads','12344564')
,('S016','张三','男','dasdads','12344564')
,('S017','张三','男','dasdads','12344564')
,('S018','张三','男','dasdads','12344564')
,('S019','张三','男','dasdads','12344564')
,('S020','张三','男','dasdads','12344564')
,('S021','张三','男','dasdads','12344564')
,('S022','张三','男','dasdads','12344564');
drop table if exists User;
create table User(
uid varchar(10),
password varchar(20),
constraint PK_Uid primary key(uid)
)ENGINE=innoDB default charset utf8;

select * from user;
insert into user value('admin','1234');