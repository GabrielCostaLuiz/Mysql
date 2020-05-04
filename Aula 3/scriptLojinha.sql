-- drop database lojinha;--

create database lojinha;
use lojinha;


create table tbclientes(
	idcli int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    cpf varchar(15) not null    
);

describe tbclientes;

insert into tbclientes(nome,fone,cpf)
values('Gabriel Costa Luiz','99999-1234',12345678901);

insert into tbclientes(nome,fone,cpf)
values('Ana Paula','99999-4321',98765432112);

insert into tbclientes(nome,fone,cpf)
values('Rafael Braga','99999-9999',13579246803);

select * from tbclientes;

select nome,fone,cpf from tbclientes;

create table tbprodutos(
	idpro int primary key auto_increment,
    produto varchar(50) not null,
    valor decimal(10,2),
    quantidade int not null
);

describe tbprodutos;

insert into tbprodutos(produto,valor,quantidade)
values('Bolacha',1.20,5);

insert into tbprodutos(produto,valor,quantidade)
values('Sabonete',5,2);

insert into tbprodutos(produto,valor,quantidade)
values('Leite',10,10);

insert into tbprodutos(produto,valor,quantidade)
values('Pera',1.5,10);

select * from tbprodutos;

create table tbpedidos(
	idpedido int primary key auto_increment,
    dataped timestamp default current_timestamp,
    idcli int not null,
    idpro int not null,
    foreign key(idcli) references tbclientes(idcli),
    foreign key(idpro) references tbprodutos(idpro)
);

describe tbpedidos;

insert into tbpedidos(idcli,idpro) values (1,1);
insert into tbpedidos(idcli,idpro) values (1,2);
insert into tbpedidos(idcli,idpro) values (2,3);
insert into tbpedidos(idcli,idpro) values (2,4);
insert into tbpedidos(idcli,idpro) values (3,1);
insert into tbpedidos(idcli,idpro) values (3,2);
insert into tbpedidos(idcli,idpro) values (3,3);
insert into tbpedidos(idcli,idpro) values (3,4);

select * from tbpedidos;

select * from tbpedidos
inner join tbclientes
on tbpedidos.idcli = tbclientes.idcli
inner join tbprodutos
on tbpedidos.idpro = tbprodutos.idpro;

select
P.idpedido as Pedido,
C.nome as Cliente,
V.Produto,Valor
from tbpedidos as P
inner join tbclientes as C
on (P.idcli = C.idcli)
inner join tbprodutos as V
on (P.idpro = V.idpro);

select sum(valor) as Total from tbprodutos;
