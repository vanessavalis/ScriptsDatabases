USE Databasetest;

CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](120) NULL,
	[email] [varchar](120) NULL
) ON [PRIMARY]
GO