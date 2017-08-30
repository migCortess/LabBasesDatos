Create Database [supermercado]
GO

USE [supermercado]
GO
/****** Object:  Table [dbo].[articulos]    Script Date: 28/08/2017 09:40:21 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[articulos]') AND type in (N'U'))
DROP TABLE [dbo].[articulos]
GO
/****** Object:  Table [dbo].[articulos]    Script Date: 28/08/2017 09:40:21 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[articulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[articulos](
	[descripcion] [nchar](10) NULL
) ON [PRIMARY]
END
GO
