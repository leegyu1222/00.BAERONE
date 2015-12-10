drop table board cascade constraint

create table board(
  post_no       number(10),
  title         varchar2(30) not null,
  content       varchar2(4000) not null,
  nickname      varchar2(30) not null,
  write_date    varchar2(30) not null,
  hit           number(10)
);

create sequence board_seq
start with 1
increment by 1;

drop sequence board_seq;

alter table board
add constraint pk_board_post_no primary key(post_no);