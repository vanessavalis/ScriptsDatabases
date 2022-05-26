select * from Clientes 
inner join Pedvenda
on Clientes.Codigo=Pedvenda.codcliente

where  codcliente=15056

select * from Clientes, Pedvenda where Clientes.Codigo=Pedvenda.codcliente and codcliente=15056


select * from Clientes 
right join Pedvenda
on Clientes.Codigo=Pedvenda.codcliente


--select * from Pedvenda

--3123
--16299

select * from Clientes


select * from PARAMETROS
select * from CadEmpresa,PARAMETROS

select * from PARAMETROS,CadEmpresa

--13225
-- 2579

-- 15608
select CNPJ, RAZSOCIAL from Clientes where RAZSOCIAL<>''
union all
select CNPJ, RAZSOCIAL from Fornecedores where RAZSOCIAL<>''