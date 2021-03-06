USE [supermarket]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 11/09/2017 12:53:19 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ventas]') AND type in (N'U'))
DROP TABLE [dbo].[ventas]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 11/09/2017 12:53:19 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proveedores]') AND type in (N'U'))
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[productosAlmacen]    Script Date: 11/09/2017 12:53:19 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[productosAlmacen]') AND type in (N'U'))
DROP TABLE [dbo].[productosAlmacen]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 11/09/2017 12:53:19 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[productos]') AND type in (N'U'))
DROP TABLE [dbo].[productos]
GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 11/09/2017 12:53:19 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalleVenta]') AND type in (N'U'))
DROP TABLE [dbo].[detalleVenta]
GO
/****** Object:  Table [dbo].[cajero]    Script Date: 11/09/2017 12:53:19 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cajero]') AND type in (N'U'))
DROP TABLE [dbo].[cajero]
GO
/****** Object:  Table [dbo].[caja]    Script Date: 11/09/2017 12:53:19 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[caja]') AND type in (N'U'))
DROP TABLE [dbo].[caja]
GO
/****** Object:  Table [dbo].[almacenes]    Script Date: 11/09/2017 12:53:19 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[almacenes]') AND type in (N'U'))
DROP TABLE [dbo].[almacenes]
GO
/****** Object:  Table [dbo].[almacenes]    Script Date: 11/09/2017 12:53:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[almacenes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[almacenes](
	[idAlmacen] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](1) NOT NULL,
	[idUbicacion] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_almacenes] PRIMARY KEY CLUSTERED 
(
	[idAlmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[caja]    Script Date: 11/09/2017 12:53:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[caja]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[caja](
	[idcaja] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](1) NOT NULL,
	[ubicacion] [varchar](1) NOT NULL,
 CONSTRAINT [pk_caja] PRIMARY KEY CLUSTERED 
(
	[idcaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cajero]    Script Date: 11/09/2017 12:53:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cajero]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cajero](
	[idcajero] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](1) NOT NULL,
	[apellidopaterno] [varchar](1) NOT NULL,
	[apellidomaterno] [varchar](1) NULL,
	[ingreso] [date] NOT NULL,
	[antiguedad]  AS (datediff(year,[ingreso],getdate())),
	[idcaja] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_cajero] PRIMARY KEY CLUSTERED 
(
	[idcajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 11/09/2017 12:53:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalleVenta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detalleVenta](
	[idDetalle] [int] NOT NULL,
	[idProducto] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](1) NOT NULL,
	[precioProducto] [decimal](18, 0) NOT NULL,
	[cantidadProducto] [int] NOT NULL,
	[montoTotal]  AS ([precioProducto]*[cantidadProducto]),
 CONSTRAINT [pk_ventasDet] PRIMARY KEY CLUSTERED 
(
	[idDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productos]    Script Date: 11/09/2017 12:53:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[productos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[productos](
	[idProducto] [int] NOT NULL,
	[descripcion] [varchar](1) NOT NULL,
	[unidadMedida] [varchar](1) NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[IVA] [bit] NOT NULL,
	[precioProducto]  AS (case when [IVA]=(1) then [precio]*(1.16) else [precio] end),
 CONSTRAINT [pk_productos] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productosAlmacen]    Script Date: 11/09/2017 12:53:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[productosAlmacen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[productosAlmacen](
	[idInventario] [uniqueidentifier] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idAlmacen] [uniqueidentifier] NOT NULL,
	[cantidadProductoEntrante] [int] NOT NULL,
	[cantidadProductoEntregado] [int] NOT NULL,
	[productoExistencia]  AS ([cantidadProductoEntrante]-[cantidadProductoEntregado]),
 CONSTRAINT [pk_productosAlmacen] PRIMARY KEY CLUSTERED 
(
	[idInventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 11/09/2017 12:53:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proveedores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[proveedores](
	[idProveedor] [uniqueidentifier] NOT NULL,
	[RFC] [varchar](1) NOT NULL,
	[nombre] [varchar](1) NOT NULL,
	[apellido] [varchar](1) NOT NULL,
	[nombre_completo]  AS (concat([nombre],' ',[apellido])),
	[giro] [varchar](1) NOT NULL,
 CONSTRAINT [pk_proveedores] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 11/09/2017 12:53:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ventas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ventas](
	[idVenta] [int] NOT NULL,
	[idDetalle] [int] NOT NULL,
	[idCajero] [uniqueidentifier] NOT NULL,
	[idCaja] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_ventas] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
