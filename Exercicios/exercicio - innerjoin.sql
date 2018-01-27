Create table Cargo(
cd_cargo varchar(4) constraint cargo_cd_pk primary key,
nome_cargo varchar(20) constraint cargo_nome_nn not null,
salario numeric(6,2))


Create table Funcionario(
cd_fun numeric(4) constraint fun_cd_pk primary key,
cd_cargo varchar(4) constraint cargo_cd_fk foreign key references Cargo,
nome_fun varchar(20) constraint nome_fun_nn not null,
)
Insert into Cargo
values('a10','vendedor',3000)
Insert into Cargo
values('b10','caixa',2560)
Insert into Cargo
values('c10','gerente',6000)

Insert into Funcionario
values(10,'a10','Ana')
Insert into Funcionario
values(20,'a10','Jair')
Insert into Funcionario
values(30,'b10','Vania')
Insert into Funcionario
values(40,null,'Gerson')

Select c.cd_cargo, nome_cargo, nome_fun From Cargo c inner join Funcionario f on c.cd_cargo = f.cd_cargo
Select c.cd_cargo, nome_cargo, nome_fun From Cargo c right join Funcionario f on c.cd_cargo = f.cd_cargo
Select c.cd_cargo, nome_cargo, nome_fun From Cargo c left join Funcionario f on c.cd_cargo = f.cd_cargo
Select c.cd_cargo, nome_cargo, nome_fun From Cargo c full join Funcionario f on c.cd_cargo = f.cd_cargo
