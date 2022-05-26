declare @caminho varchar(100)
set @caminho =  'backup database compre to disk=''D:\Bancos\Backup\BKP_VAREJO_'
+ltrim(rtrim(Convert(varchar(2),(day(getdate())))))
+'_'+ltrim(rtrim(Convert(varchar(2),(month(getdate())))))
+'_'+Convert(varchar(4),(year(getdate())))
+'.bak'''
exec(@caminho)

backup database Databasetest to disk= 'D:\Banco de Dados\backup_teste_comando.bak'