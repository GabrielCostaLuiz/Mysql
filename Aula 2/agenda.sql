show databases;
create database agenda;
show databases;
use agenda;
show databases;
use agenda;
create table tbcontatos(
	id int primary key,
    nome varchar(50) not null,
    fone varchar(15) not null,
    email varchar(50)
);
show tables;
describe tbcontatos;
drop table tpcontatos;

/*********** CRUD **********/
-- create
insert into tbcontatos(id,nome,fone,email)
values(1,'Gabriel Costa Luiz','9999-99999','ga@gmail.com');

-- read
select * from tbcontatos;

-- update
update tbcontatos set fone='99123-4567' where id = 1;

-- delete
delete from tbcontatos where id = 1;

-- create novamente
insert into tbcontatos(id,nome,fone,email)
values(1,'Gabriel Costa Luiz','9999-99999','ga@gmail.com');