create table DELIVERY(
     delivery_no number(10) not null,
     delivery_date varchar(30) not null,
     sender_id varchar2(12) not null,
     sender_name varchar2(16) not null,
     sender_phone varchar2(20) not null,
     sender_post_no number(6) not null,
     sender_addr_old varchar2(30) not null,
     sender_addr_new varchar2(50) not null,
     sender_addr_misc varchar2(50) not null,
     receiver_id varchar2(12) not null,
     receiver_name varchar2(16) not null,
     receiver_phone varchar2(20) not null,
     receiver_post_no number(6) not null,
     receiver_addr_old varchar2(30) not null,
     receiver_addr_new varchar2(50) not null,
     receiver_addr_misc varchar2(50) not null,
     product_detail varchar2(100) not null,
     fare number(6) not null,
     delivery_status varchar2(10) not null
);

alter table delivery
add constraint pk_delivery_no primary key(delivery_no);

create sequence delivery_seq 
start with 0
increment by 1;