create table drone(
	drone_name varchar2(12) not null,
	beacon_uuid varchar2(40) not null,
	beacon_name varchar2(12) not null
);

alter table drone
add constraint pk_delivery_no primary key(delivery_no);

insert into drone values('드론1호기', ' E2C56DB5-DFFB-48D2-B060-D0F5A71096E0', 'minew11479');
