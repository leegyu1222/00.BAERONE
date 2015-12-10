drop table reply cascade constraint

create table reply(
  reply_no     	number(10),
  post_no		number(10)	   not null,
  content       varchar2(4000) not null,
  nickname      varchar2(30) not null,
  write_date    varchar2(30) not null
);

create sequence reply_seq
start with 1
increment by 1;

drop sequence reply_seq

alter table reply
add constraint pk_reply_reply_no primary key(reply_no);
