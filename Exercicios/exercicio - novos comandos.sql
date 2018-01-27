Create table Cliente(
cod_clie numeric(4) constraint clie_cod_pk primary key,
nome_clie varchar(20) constraint clie_nome_nn not null,
endereco varchar(30),
cidade varchar(15),
cep char(8),
uf char(2),
cnpj char(16) constraint cnpj_uk unique,
ic char(12)
)
sp_help Cliente
select*from Cliente
---------------------------------------------------------
Create table Vendedor(
cod_ven numeric(4) constraint ven_cod_pk primary key,
nome_ven varchar(20) constraint ven_nome_nn not null,
salario_fixo numeric(10,2),
comissao char(1)
)
sp_help Vendedor
select cod_ven,nome_ven,salario_fixo from Vendedor 
---------------------------------------------------------------
Create Table Produto(
cod_prod numeric(4) constraint prod_cod_pk primary key,
unidade varchar(3),
descricao varchar(30) constraint descricao_nn not null,
valor_unitario numeric(8,2)
)
sp_help Produto
------------------------------------------------------------------
Create Table Pedido(
num_pedido numeric(4) constraint pedido_num_pk primary key,
pr_entrega numeric(3),
cod_clie numeric(4) constraint clie_cod_fk foreign key references Cliente,
cod_vend numeric(4) constraint ven_cod_fk foreign key references Vendedor
)
sp_help Pedido
Select num_pedido,pr_entrega from Pedido
Drop table Pedido
----------------------------------------------------------------
Create Table Item_pedido(
num_pedido numeric(4) constraint pedido_num_fk foreign key references Pedido,
cod_pro numeric(4) constraint pro_cod_fk foreign key references Produto,
quant numeric(8,2)
)
sp_help Item_pedido

------------------
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(720,'Ana','Rua 17 n.19','Niterói',24358310,'RJ','12113231/0001-34','2134')
select nome_clie, cod_clie from Cliente where cod_clie between 190 and 390
select nome_clie, cod_clie from Cliente where cod_clie in(230,460,130)
select nome_clie, cod_clie from Cliente where nome_clie like '%a%' or nome_clie like '%A%'
select nome_clie, cod_clie from Cliente where nome_clie like '%a'
select nome_clie, cod_clie, cidade from Cliente where cod_clie between 235 and 719
select nome_clie, cod_clie, cidade from Cliente where cod_clie between 20 and 157 or cod_clie between 410 and 720
select nome_clie, cod_clie from Cliente where nome_clie  not like '%a%' and nome_clie not like '%A%'
select nome_clie, cod_clie from Cliente where (nome_clie  like '%o%' or nome_clie like '%O%') and (nome_clie like '%a%' or nome_clie like '%A%')  
--------																					
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(870,'Flávio','Av. Pres. Vargas 10','São Paulo',22763931,'SP','22534126/9387-9','4631')
select nome_clie, cod_clie from Cliente where cod_clie Not between 190 and 390
select nome_clie, cod_clie from Cliente where nome_clie  between 'C' and 'N'
select nome_clie, cod_clie from Cliente where cod_clie = 20 and cod_clie = 180 and cod_clie = 720
select nome_clie from Cliente where cod_clie = 20 and cod_clie = 180 and cod_clie = 720
select nome_clie, upper(nome_clie), lower(nome_clie), len(nome_clie) from Cliente
select nome_clie, substring(nome_clie,2,4) from Cliente;
select substring(nome_clie,2,3)+ substring(endereco,3,6)+ substring(cnpj,2,3) from Cliente;
select*from Cliente where upper(nome_clie) = 'BETH'
select count(*) from Cliente
select count(nome_clie) "total" from Cliente where lower(uf) = 'sp'
select count(nome_clie) from Cliente where cep is null



Select cidade,count(cod_clie)  from Cliente group by(cidade) having count(cod_clie)>2 



Select cidade,count(cod_clie) from Cliente  group by (cidade)
------
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(230,'Jorge','Rua Caiapó, 13','Curitiba',30078500,'PR','14512764/9834-9',null)
-----
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(222,'Lúcia','Rua Itabira, 123','Belo Horizonte',22124391,'MG','283152123/9348-8','2985')
-----
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(830,'Mauricio','Av. Paulista, 1236','São Paulo',3012683,'SP','32816985/7465-6','9343')

insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(130, 'Edmar','Rua da Praia, s/n','Salvador', 30079300, 'BA', '23463284/234-9', '7121')
select nome_clie from Cliente where nome_clie <'L' 

-----
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(410,'Rodolfo','Largo da Lapa, 27','Rio de Janeiro',30078900,'RJ','12835128/2346-9','7431')
------
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(20,'Beth','Av. Climério, 45','São Paulo',25679300,'SP','32485126/7326-8','9280')
------
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(157,'Paulo',' Trav. Moraes, casa 3','Londrina',null,'PR','32848223/324-2','1923')
select nome_clie, cod_clie from Cliente where cod_clie >200
----
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(180,' Lívio',' Av. Beira Mar 1256',' Florianópolis', 30077500,' SC',' 12736571/2347-4', '1111')
----
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(260 ,'Susana',' Rua Lopes Mandes, 12', 'Niterói', 30046500 ,'RJ' ,'21763571/232-9' ,'2530')
----
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(290, 'Renato' ,'Rua Meireles, 123' ,'São Paulo', 30225900, 'SP', '13276571/1231-4' ,'1820')
----
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(390, 'Sebastião', 'Rua da Igreja, 10', 'Uberaba', 30438700 ,'MG' ,'32176547/213-3', '9071')
----
insert into Cliente
(cod_clie,nome_clie,endereco,cidade,cep,uf,cnpj,ic)
values(234 ,'Albert', 'Quadra 3, Bl. 3, sl. 1003', 'Brasília', 22841650 ,'DF', '21763576/1232-3', '2931')
===========
===========
===========
insert into Vendedor
(cod_ven,nome_ven,salario_fixo,comissao)
values(209, 'José' ,1800 ,'C')
Select cod_ven, salario_fixo, salario_fixo + 100 From Vendedor
Select nome_ven From Vendedor where comissao like 'A' or comissao like 'C'
-----
insert into Vendedor
(cod_ven,nome_ven,salario_fixo,comissao)
values(111 ,'Carlos', 2490, 'A')
Select cod_ven, salario_fixo, salario_fixo +100 From 
Vendedor
-----
insert into Vendedor
(cod_ven,nome_ven,salario_fixo,comissao)
values(11,'João',2780,'C')
select*from Vendedor where salario_fixo >= 2000 or comissao = 'C'
-----
insert into Vendedor
(cod_ven,nome_ven,salario_fixo,comissao)
values(240 ,'Antônio' ,9500, 'C')
select salario_fixo/1.3, Round(salario_fixo/1.3 ,2) from Vendedor
select sum(salario_fixo),Round(avg(salario_fixo),2), max(salario_fixo), min(salario_fixo) from Vendedor
select nome_ven from Vendedor where salario_fixo = (select max(salario_fixo) from Vendedor)
select nome_ven from Vendedor where salario_fixo = (select max(salario_fixo) from Vendedor) or salario_fixo = (select min(salario_fixo) from Vendedor)
select nome_ven salario_fixo from Vendedor where salario_fixo < (select avg(salario_fixo) from Vendedor) 
insert into Vendedor
(cod_ven,nome_ven,salario_fixo,comissao)
values(720 ,'Felipe' ,4600 ,'A')
-----
insert into Vendedor
values(213,'Jonas',2300,'A')

insert into Vendedor
(cod_ven,nome_ven,salario_fixo,comissao)
values(101 ,'João' ,2650 ,'C')

insert into Vendedor
(cod_ven,nome_ven,salario_fixo,comissao)
values(310 ,'Josias', 870, 'B')

insert into Vendedor
(cod_ven,nome_ven,salario_fixo,comissao)
values(250 ,'Maurício', 2930, 'B')
======
=======
========
insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(25,'KG','Queijo',0.97)
Select cod_prod from Produto where valor_unitario >1 and unidade like 'M' and (descricao like '%a%' or descricao like '%A') and (descricao like '%e%' or descricao like '%E')
Select cod_prod, valor_unitario, valor_unitario - (valor_unitario * 5/100) from Produto order by valor_unitario - (valor_unitario * 5/100) asc
--------
insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(31 ,'BAR' ,'Chocolate' ,0.87)

insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(78,'L','Vinho',2.00)

insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(22 ,'M' ,'Linho', 0.11)

insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(30 ,'SAC' ,'Açúcar', 0.30)

insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(53, 'M' ,'Linha', 1.80)

insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(13 ,'G','Ouro' ,6.18)

insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(45 ,'M' ,'Madeira' ,0.25)

insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(87 ,'M', 'Cano', 1.97)

insert into Produto
(cod_prod,unidade,descricao,valor_unitario)
values(77 ,'M' ,'Papel' ,1.05)

insert into Pedido
values(1211,113,720,209)
select num_pedido from Pedido where num_pedido not in (13,51,77)
select cod_clie,count(cod_clie) from Pedido group by(cod_clie)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(97 ,20 ,720 ,101)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(101 ,15, 720, 101)
Select nome_clie, num_pedido From Cliente inner join Pedido on Cliente.cod_clie = Pedido.cod_clie
Select nome_ven, num_pedido From Vendedor right join Pedido on Vendedor.cod_ven = Pedido.cod_vend

Select nome_clie, nome_ven From Pedido inner join Vendedor on Vendedor.cod_ven = Pedido.cod_vend
							           inner join Cliente  on Cliente.cod_clie = Pedido.cod_clie
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(148 ,20 ,720 ,720)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(189 ,15, 870, 213)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(104 ,30 ,110 ,101)
select pr_entrega from Pedido where pr_entrega != 20
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(203 ,30, 830, 250)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(98 ,20 ,410 ,209)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(143 ,30, 20, 111)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(105 ,30 ,180 ,240)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(111 ,15, 260, 240)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(103 ,20 ,260 ,11)
insert into Pedido
values(138,20,260,71)
insert into Pedido
(num_pedido,pr_entrega,cod_clie,cod_vend)
values(108, 15, 290, 310)
insert into Pedido
values(119, 30, 390, 250)
select count(num_pedido) from Pedido where pr_entrega < 30

=========
========
========
insert into Item_pedido
values(121,25,10)
select cod_pro from Item_pedido where cod_pro = 31
select num_pedido from Item_pedido where cod_pro not in (13,51,77)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(121 ,31, 35)
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(97 ,77 ,20)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(101 ,31, 9)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(101 ,78 ,18)
------
insert into Item_pedido
values(101,13,5)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(98 ,77, 5)
------
insert into Item_pedido
values(148 ,45 ,8)
 
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(148,31,7)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(148,77,3)

insert into Item_pedido
(num_pedido,cod_pro,quant)
values(160,77,2)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(148,25,10)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(148,77,30)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(104 ,53, 32)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(203 ,31,6)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(189 ,78, 45)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(143 ,31,20)
------
insert into Item_pedido
(num_pedido,cod_pro,quant)
values(143, 78, 10)
-----



select nome_clie from Cliente order by uf
select*from Vendedor order by salario_fixo 
select*from Pedido order by cod_clie desc
select*from Pedido order by num_pedido 





