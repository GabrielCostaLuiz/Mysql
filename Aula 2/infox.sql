-- a linha abaixo cria um banco de dados
create database dbinfox;

-- a linha abaixo escolhe o banco de dados
use dbinfox;

-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

-- o comando abaixo descreve a tabela
describe tbusuarios;

-- a linha abaixo insere dados na tabela (CRUD)
-- create = insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'Gabriel Costa Luiz','9999-9999','gabrielcosta','123456');
-- a linha abaixo exibe os dados da tabela (CRUD)
-- read = select
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Administrador','9999-2348','admin','admin');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Bill Gates','9999-6598','bill','123456');

select * from tbusuarios;

-- a linha abaixo modifica dados na tabela (CRUD)
-- update = update
update tbusuarios set fone='8888-8888' where iduser=2;

select * from tbusuarios;

-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete = delete
delete from tbusuarios where iduser=3;

select * from tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Gabriel Costa Luiz','Rua Tux, 2015','9999-1234','ga@gmail.com');

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Ronaldinho','Rua Teleb, 2011','9999-5678','gaucho@gmail.com');

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Jorge Nascimento','Rua Brasil, 2000','9999-9012','jorge@gmail.com');

select * from tbclientes;