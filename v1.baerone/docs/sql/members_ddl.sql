create table Members(
   userid varchar2(12) ,
   userpw varchar2(20) not null ,
   name varchar2(20) not null , 
   birthday varchar2(20) not null,
   gender varchar2(2) not null,
   phone varchar2(20) not null, 
   email varchar2(30) not null,
   postno number(6) not null ,
   address_old varchar2(50) not null,
   address_new varchar2(50) not null,
   address_misc varchar2(100) not null ,
   mileage number(8) not null,
   grade varchar(2) not null
);

alter table members
add constraint pk_userid primary key(userid);

insert into members values('user01','pass01','seogijin','910623','M','010-9124-7128','herohe@naver.com',12345,'경기도 남양주시 별내동','경기도 남양주시 별내4로8' ,
'별내더스타한화꿈에그린아파트4611-503호',0,'G');