SELECT * FROM CLIENTES2 WHERE CodEmpCliente=0 and  razsocial like 'PAULO HENRIQUE%'

SELECT * FROM CLIENTES2 WHERE CodEmpCliente=1 AND RAZSOCIAL LIKE 'TESTE'

SELECT * FROM CLIENTES2 WHERE CodEmpCliente=1 AND RAZSOCIAL LIKE '5555'

-- verifica dados em cache
select * from sys.dm_os_buffer_descriptors where database_id=db_id()

-- limpa os dados em chache
CHECKPOINT 
GO
dbcc dropcleanbuffers
go

select * from sys.dm_os_buffer_descriptors where database_id=db_id()
go

dbcc dropcleanbuffers
go
select * from Clientes2
go

-- alocacao em memória
select b.page_type as cTipoPagina,
count (b.page_id) as nQtdPaginas,
count(*) /128.0 as nMemoryMB,
sum(case when is_modified=1 then 1 else 0 end) nQtdPaginasAlteradas
from sys.dm_os_buffer_descriptors b
join sys.allocation_units a
on b.allocation_unit_id=a.allocation_unit_id
join sys.partitions p
on a.container_id=p.partition_id
where b.page_type in ('DATA_PAGE', 'INDEX_PAGE')
AND B.database_id = DB_ID()
and  p.object_id = object_id('clientes2')
GROUP BY B.page_type

select * from Clientes
SELECT * FROM Produtos


select * from LogSistema
