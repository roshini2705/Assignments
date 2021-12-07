use demo;
create table xtable(xx varchar(3), id int);
create table ytable(yy varchar(3), y_id int);
insert into xtable values('xx1',1);
insert into xtable values('xx2',2);
insert into ytable values('yy1',1);
insert into xtable values('xx3',3);
select * from ytable;

select xx,xtable.id,ytable.y_id,yy 
from xtable inner join ytable on xtable.id=ytable.y_id;
select * from xtable cross join ytable;
select * from xtable t1 left outer join ytable t2 on t1.id=t2.y_id;