create table FARE(
	 fare_no		number(3) not null,
     distance_from  number(3) not null,
     distance_to    number(3) not null,
     fare        	number(6) not null
);

alter table fare
add constraint pk_fare_ primary key(fare_no);

insert into fare values (1, 0, 5, 5000);
insert into fare values (2, 5, 10, 10000);
insert into fare values (3, 10, 15, 15000);
insert into fare values (4, 15, 20, 20000);
insert into fare values (5, 20, 25, 25000);
insert into fare values (6, 25, 30, 30000);
insert into fare values (7, 30, 35, 35000);
insert into fare values (8, 35, 40, 40000);
insert into fare values (9, 40, 45, 45000);
insert into fare values (10,45, 50, 50000);