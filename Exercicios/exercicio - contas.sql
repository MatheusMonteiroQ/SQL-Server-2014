Create table CD(
codigo numeric(4) constraint cod_pk primary key,
datacompra datetime,
valorpago numeric(6,2),
localcompra varchar(20),
album char(1)
)

Create table Musica(
cod_cd numeric(4) constraint cd_cod_fk foreign key references CD,
numero numeric(3),
artista varchar(20),
tempo numeric(3),
nome varchar(20)
)
insert into CD
values(1013,'20 - 01 - 2016',2133.12,'dsaad','a')
insert into Musica
values(100,101,'asdda34s',120,'ass46')
insert into Musica
values(100,101,'asdda34s',100,'ass46')
insert into CD
values(100,'10-10-10',103.22,'av santos 21','a')
insert into CD
values(102,'10-10-10',103.22,'av santos 21','a')
insert into CD
values(103,'10-10-10',103.22,'av santos 21','a')

select sum(tempo) from Musica
select sum(salario_fixo),Round(avg(salario_fixo),2), max(salario_fixo), min(salario_fixo) from Vendedor

select count(musica) from Musica 
select avg(tempo) from Musica
Select count(*) from CD