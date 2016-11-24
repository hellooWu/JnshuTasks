create database jnshu;

use jnshu

drop table if exists stu_info;

create table stu_info( 
id bigint primary key auto_increment,
name varchar(20),
city varchar(20),
create_at bigint,
update_at bigint);

alter table stu_info  add announce text;
alter table stu_info  add type varchar(20);


drop trigger if exists auto_update;
drop trigger if exists auto_insert;


delimiter //
create trigger auto_insert before insert 
on stu_info for each row
begin
set new.create_at=UNIX_TIMESTAMP(NOW());
end//
delimiter ;


delimiter //
create trigger auto_update before update 
on stu_info for each row
begin
set new.update_at=UNIX_TIMESTAMP(NOW());
end//
delimiter ;

delete from stu_info where id=1;

insert into stu_info(name,city,announce,type)values
("巫佳龙","北京","hello java","java");


select UNIX_TIMESTAMP(NOW());

insert into stu_info(create_at)values(UNIX_TIMESTAMP(NOW()));

alter table stu_info auto_increment=1;

update stu_info set announce="老大最帅" where id=1;

select * from stu_info where name="巫佳龙";

drop index  name_index on stu_info;

create index name_index on stu_info(name);

insert into stu_info(name,city,announce,type)values
("罗龙","北京","boss","Android"),
("国梁","北京","大神","Android"),
("Jerry","北京","小弟","Android"),
("李涛","北京","小弟","Android"),
("帅凯","北京","小弟","Android"),
("雨轩","北京","小弟","Android"),
("张佳","北京","小妹","Android"),
("瑞芬","北京","美术","UI"),
("博欣","北京","小弟","前端"),
("牛枭","北京","newer","产品");



select * from stu_info;

desc stu_info;

show create table stu_info;
