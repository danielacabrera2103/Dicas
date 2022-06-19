--============================================================
-- criando o banco de dados
--============================================================

create database my_home

--============================================================
-- alterando o destino de execução dos scripts para esse novo banco
--============================================================

use my_home

--============================================================
-- criando uma tabela simples de clientes
--============================================================

create table clientes(
cod_cli int not null identity (1,1),
nom_cli varchar(100) null,
pessoa_cli varchar(1) null,
cpf_cnpj_cli varchar(14) null,
rg_ie_cli varchar(15) null,
email_cli varchar(100) null)

--============================================================
-- adicionando uma primary key
--============================================================
alter table clientes add constraint pk_clientes primary key (cod_cli)

--============================================================
-- inserindo os dados nessa tabela de clientes
-- importante: a coluna cod_cli não será relacionada no insert 
-- porque ela é um campo autoincremental iniciado em 1 e sequencial de 1
--============================================================

insert clientes
(nom_cli, pessoa_cli, cpf_cnpj_cli, rg_ie_cli, email_cli)
values
('CLIENTE UM', 'F', '11111111111', '1111111', 'clienteum@meuteste.com.br')

insert clientes
(nom_cli, pessoa_cli, cpf_cnpj_cli, rg_ie_cli, email_cli)
values
('CLIENTE DOIS', 'J', '22222222222222', '22222222222', 'clientedois@meuteste.com.br')

insert clientes
(nom_cli, pessoa_cli, cpf_cnpj_cli, rg_ie_cli, email_cli)
values
('CLIENTE TRES', 'F', '33333333333', '333333', 'clientetres@meuteste.com.br')

--============================================================
-- quero buscar no bando todos os campos de todos os clientes 
-- pessoa física
--============================================================
select * from clientes where pessoa_cli = 'F'  

--============================================================
-- quero buscar no bando todos os campos de todos os clientes 
-- pessoa jurídica
--============================================================
select * from clientes where pessoa_cli = 'F'  

--============================================================
-- quero buscar no bando nome e email de clientes ordernado por nome
--============================================================
select nom_cli, email_cli from clientes order by nom_cli

--============================================================
-- quero contar quantos clientes pessoa física tenho no banco
--============================================================
select count(*) as qtd_clientes_pf from clientes where pessoa_cli = 'F'

--============================================================
-- ou 
--============================================================
select count(*) as qtd_clientes, pessoa_cli  from clientes group by pessoa_cli
