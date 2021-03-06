USE [supermarket]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas] DROP CONSTRAINT [fk_tienda_ventas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_factura_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas] DROP CONSTRAINT [fk_factura_ventas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas] DROP CONSTRAINT [fk_estatus_ventas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cajero_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas] DROP CONSTRAINT [fk_cajero_ventas]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_ubicaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[ubicaciones]'))
ALTER TABLE [dbo].[ubicaciones] DROP CONSTRAINT [fk_direccion_ubicaciones]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS] DROP CONSTRAINT [fk_estatus_TPVS]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cuentas_bancarias_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS] DROP CONSTRAINT [fk_cuentas_bancarias_TPVS]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cajas_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS] DROP CONSTRAINT [fk_cajas_TPVS]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ubicaciones_tienda]') AND parent_object_id = OBJECT_ID(N'[dbo].[tienda]'))
ALTER TABLE [dbo].[tienda] DROP CONSTRAINT [fk_ubicaciones_tienda]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_empleado_supervisor]') AND parent_object_id = OBJECT_ID(N'[dbo].[supervisor]'))
ALTER TABLE [dbo].[supervisor] DROP CONSTRAINT [fk_empleado_supervisor]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_giros_proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[proveedores]'))
ALTER TABLE [dbo].[proveedores] DROP CONSTRAINT [fk_giros_proveedores]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estado_municipio]') AND parent_object_id = OBJECT_ID(N'[dbo].[municipio]'))
ALTER TABLE [dbo].[municipio] DROP CONSTRAINT [fk_estado_municipio]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[inventario]'))
ALTER TABLE [dbo].[inventario] DROP CONSTRAINT [fk_tienda_inventario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_formas_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[formas_pago]'))
ALTER TABLE [dbo].[formas_pago] DROP CONSTRAINT [fk_estatus_formas_pago]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_clientes_factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura] DROP CONSTRAINT [fk_clientes_factura]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_pais_estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[estado]'))
ALTER TABLE [dbo].[estado] DROP CONSTRAINT [fk_pais_estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleados]'))
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [fk_estatus_empleados]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleados]'))
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [fk_direccion_empleados]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_pais_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] DROP CONSTRAINT [fk_pais_direccion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_municipio_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] DROP CONSTRAINT [fk_municipio_direccion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estado_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] DROP CONSTRAINT [fk_estado_direccion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_colonia_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] DROP CONSTRAINT [fk_colonia_direccion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_calle_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] DROP CONSTRAINT [fk_calle_direccion]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ventas_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [fk_ventas_detalle_venta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_formas_pago_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [fk_formas_pago_detalle_venta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_articulos_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [fk_articulos_detalle_venta]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_inventario_detalle_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_inventario]'))
ALTER TABLE [dbo].[detalle_inventario] DROP CONSTRAINT [fk_inventario_detalle_inventario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_articulos_detalle_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_inventario]'))
ALTER TABLE [dbo].[detalle_inventario] DROP CONSTRAINT [fk_articulos_detalle_inventario]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_bancos_cuentas_bancarias]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuentas_bancarias]'))
ALTER TABLE [dbo].[cuentas_bancarias] DROP CONSTRAINT [fk_bancos_cuentas_bancarias]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_municipio_colonia]') AND parent_object_id = OBJECT_ID(N'[dbo].[colonia]'))
ALTER TABLE [dbo].[colonia] DROP CONSTRAINT [fk_municipio_colonia]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[clientes]'))
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [fk_direccion_clientes]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_colonia_calle]') AND parent_object_id = OBJECT_ID(N'[dbo].[calle]'))
ALTER TABLE [dbo].[calle] DROP CONSTRAINT [fk_colonia_calle]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_supervisor_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros] DROP CONSTRAINT [fk_supervisor_cajeros]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_empleado_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros] DROP CONSTRAINT [fk_empleado_cajeros]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_caja_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros] DROP CONSTRAINT [fk_caja_cajeros]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_caja]') AND parent_object_id = OBJECT_ID(N'[dbo].[caja]'))
ALTER TABLE [dbo].[caja] DROP CONSTRAINT [fk_tienda_caja]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_proveedores_articulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[articulos]'))
ALTER TABLE [dbo].[articulos] DROP CONSTRAINT [fk_proveedores_articulos]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ventas__cve_vent__3E52440B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ventas] DROP CONSTRAINT [DF__ventas__cve_vent__3E52440B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ubicacion__cve_u__1920BF5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ubicaciones] DROP CONSTRAINT [DF__ubicacion__cve_u__1920BF5C]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__TPVS__cve_tpv__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TPVS] DROP CONSTRAINT [DF__TPVS__cve_tpv__164452B1]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tienda__cve_tien__46E78A0C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tienda] DROP CONSTRAINT [DF__tienda__cve_tien__46E78A0C]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__superviso__cve_s__32E0915F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[supervisor] DROP CONSTRAINT [DF__superviso__cve_s__32E0915F]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__proveedor__cve_p__4F7CD00D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[proveedores] DROP CONSTRAINT [DF__proveedor__cve_p__4F7CD00D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__pais__cve_pais__1ED998B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pais] DROP CONSTRAINT [DF__pais__cve_pais__1ED998B2]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__municipio__cve_m__24927208]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[municipio] DROP CONSTRAINT [DF__municipio__cve_m__24927208]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__inventari__cve_i__52593CB8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inventario] DROP CONSTRAINT [DF__inventari__cve_i__52593CB8]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__giros__cve_giro__7D439ABD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[giros] DROP CONSTRAINT [DF__giros__cve_giro__7D439ABD]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__formas_pa__cve_p__3B75D760]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[formas_pago] DROP CONSTRAINT [DF__formas_pa__cve_p__3B75D760]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__factura__cve_fac__5812160E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[factura] DROP CONSTRAINT [DF__factura__cve_fac__5812160E]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__estatus_v__cve_e__412EB0B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[estatus_venta] DROP CONSTRAINT [DF__estatus_v__cve_e__412EB0B6]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__estatus__cve_est__38996AB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[estatus] DROP CONSTRAINT [DF__estatus__cve_est__38996AB5]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__estado__cve_esta__21B6055D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[estado] DROP CONSTRAINT [DF__estado__cve_esta__21B6055D]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__empleados__cve_e__35BCFE0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [DF__empleados__cve_e__35BCFE0A]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__direccion__cve_d__1BFD2C07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[direccion] DROP CONSTRAINT [DF__direccion__cve_d__1BFD2C07]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__detalle_v__cve_d__49C3F6B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detalle_venta] DROP CONSTRAINT [DF__detalle_v__cve_d__49C3F6B7]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__detalle_i__cve_d__5535A963]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detalle_inventario] DROP CONSTRAINT [DF__detalle_i__cve_d__5535A963]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__cuentas_b__cve_c__1367E606]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cuentas_bancarias] DROP CONSTRAINT [DF__cuentas_b__cve_c__1367E606]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__colonia__cve_col__276EDEB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[colonia] DROP CONSTRAINT [DF__colonia__cve_col__276EDEB3]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__clientes__cve_cl__440B1D61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [DF__clientes__cve_cl__440B1D61]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__calle__cve_calle__2A4B4B5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[calle] DROP CONSTRAINT [DF__calle__cve_calle__2A4B4B5E]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__cajeros__cve_caj__300424B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cajeros] DROP CONSTRAINT [DF__cajeros__cve_caj__300424B4]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__caja__cve_caja__2D27B809]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[caja] DROP CONSTRAINT [DF__caja__cve_caja__2D27B809]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__bancos__cve_banc__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bancos] DROP CONSTRAINT [DF__bancos__cve_banc__108B795B]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__articulos__cve_a__4CA06362]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[articulos] DROP CONSTRAINT [DF__articulos__cve_a__4CA06362]
END

GO
/****** Object:  View [dbo].[vw_ventas_mes]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ventas_mes]'))
DROP VIEW [dbo].[vw_ventas_mes]
GO
/****** Object:  View [dbo].[vw_tpvs_cajas]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_tpvs_cajas]'))
DROP VIEW [dbo].[vw_tpvs_cajas]
GO
/****** Object:  View [dbo].[vw_informacion_empleados]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_informacion_empleados]'))
DROP VIEW [dbo].[vw_informacion_empleados]
GO
/****** Object:  View [dbo].[vw_cajeros_ventas]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_cajeros_ventas]'))
DROP VIEW [dbo].[vw_cajeros_ventas]
GO
/****** Object:  View [dbo].[vw_cajas_cajeros]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_cajas_cajeros]'))
DROP VIEW [dbo].[vw_cajas_cajeros]
GO
/****** Object:  View [dbo].[direccion_view]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[direccion_view]'))
DROP VIEW [dbo].[direccion_view]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ventas]') AND type in (N'U'))
DROP TABLE [dbo].[ventas]
GO
/****** Object:  Table [dbo].[ubicaciones]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ubicaciones]') AND type in (N'U'))
DROP TABLE [dbo].[ubicaciones]
GO
/****** Object:  Table [dbo].[TPVS]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPVS]') AND type in (N'U'))
DROP TABLE [dbo].[TPVS]
GO
/****** Object:  Table [dbo].[tienda]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tienda]') AND type in (N'U'))
DROP TABLE [dbo].[tienda]
GO
/****** Object:  Table [dbo].[supervisor]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[supervisor]') AND type in (N'U'))
DROP TABLE [dbo].[supervisor]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proveedores]') AND type in (N'U'))
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[pais]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pais]') AND type in (N'U'))
DROP TABLE [dbo].[pais]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[municipio]') AND type in (N'U'))
DROP TABLE [dbo].[municipio]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inventario]') AND type in (N'U'))
DROP TABLE [dbo].[inventario]
GO
/****** Object:  Table [dbo].[giros]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[giros]') AND type in (N'U'))
DROP TABLE [dbo].[giros]
GO
/****** Object:  Table [dbo].[formas_pago]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[formas_pago]') AND type in (N'U'))
DROP TABLE [dbo].[formas_pago]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[factura]') AND type in (N'U'))
DROP TABLE [dbo].[factura]
GO
/****** Object:  Table [dbo].[estatus_venta]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[estatus_venta]') AND type in (N'U'))
DROP TABLE [dbo].[estatus_venta]
GO
/****** Object:  Table [dbo].[estatus]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[estatus]') AND type in (N'U'))
DROP TABLE [dbo].[estatus]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[estado]') AND type in (N'U'))
DROP TABLE [dbo].[estado]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[empleados]') AND type in (N'U'))
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[direccion]') AND type in (N'U'))
DROP TABLE [dbo].[direccion]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_venta]') AND type in (N'U'))
DROP TABLE [dbo].[detalle_venta]
GO
/****** Object:  Table [dbo].[detalle_inventario]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_inventario]') AND type in (N'U'))
DROP TABLE [dbo].[detalle_inventario]
GO
/****** Object:  Table [dbo].[cuentas_bancarias]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cuentas_bancarias]') AND type in (N'U'))
DROP TABLE [dbo].[cuentas_bancarias]
GO
/****** Object:  Table [dbo].[colonia]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[colonia]') AND type in (N'U'))
DROP TABLE [dbo].[colonia]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clientes]') AND type in (N'U'))
DROP TABLE [dbo].[clientes]
GO
/****** Object:  Table [dbo].[calle]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[calle]') AND type in (N'U'))
DROP TABLE [dbo].[calle]
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cajeros]') AND type in (N'U'))
DROP TABLE [dbo].[cajeros]
GO
/****** Object:  Table [dbo].[caja]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[caja]') AND type in (N'U'))
DROP TABLE [dbo].[caja]
GO
/****** Object:  Table [dbo].[bancos]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bancos]') AND type in (N'U'))
DROP TABLE [dbo].[bancos]
GO
/****** Object:  Table [dbo].[articulos]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[articulos]') AND type in (N'U'))
DROP TABLE [dbo].[articulos]
GO
/****** Object:  UserDefinedFunction [dbo].[fnSuma]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnSuma]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fnSuma]
GO
/****** Object:  UserDefinedFunction [dbo].[FnIva]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FnIva]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[FnIva]
GO
/****** Object:  StoredProcedure [dbo].[ReporteVentasMes]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteVentasMes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteVentasMes]
GO
/****** Object:  StoredProcedure [dbo].[ReporteEmpleados]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteEmpleados]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteEmpleados]
GO
/****** Object:  StoredProcedure [dbo].[ReporteCajerosVenta]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteCajerosVenta]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteCajerosVenta]
GO
/****** Object:  StoredProcedure [dbo].[ReporteCajasCuentasBancarias]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteCajasCuentasBancarias]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteCajasCuentasBancarias]
GO
/****** Object:  StoredProcedure [dbo].[ReporteCajasCajero]    Script Date: 11/11/2017 05:43:56 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteCajasCajero]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ReporteCajasCajero]
GO
/****** Object:  StoredProcedure [dbo].[ReporteCajasCajero]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteCajasCajero]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ReporteCajasCajero] @caja varchar(50)
as
begin
	select * from dbo.vw_cajas_cajeros
	where Caja = @caja
	
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[ReporteCajasCuentasBancarias]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteCajasCuentasBancarias]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ReporteCajasCuentasBancarias] @caja varchar(50)
as
begin
	select * from dbo.vw_tpvs_cajas
	where Caja = @caja
	
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[ReporteCajerosVenta]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteCajerosVenta]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ReporteCajerosVenta] @cajero varchar(50)
as
begin
	select * from dbo.vw_cajeros_ventas
	where cajero = @cajero
	
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[ReporteEmpleados]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteEmpleados]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*store procedure*/
CREATE procedure [dbo].[ReporteEmpleados](@nombre nvarchar(50) = NULL, @apellido nvarchar(50) = null)
as
begin
	if @nombre is NULL or @apellido is NULL

		if @nombre is null and @apellido is not null

			select * from dbo.vw_informacion_empleados
			where dbo.vw_informacion_empleados.apellido_paterno = @apellido

		else
			if @nombre is not null and @apellido is null
				select * from dbo.vw_informacion_empleados
				where dbo.vw_informacion_empleados.nombre = @nombre 
			else
				select * from dbo.vw_informacion_empleados
	
	else
	
	select * from dbo.vw_informacion_empleados
	where dbo.vw_informacion_empleados.nombre = @nombre and dbo.vw_informacion_empleados.apellido_paterno = @apellido
	
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[ReporteVentasMes]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReporteVentasMes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[ReporteVentasMes] @cajero varchar(50)
as
begin
	select * from dbo.vw_ventas_mes
	where cajero = @cajero
	
end' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[FnIva]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FnIva]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[FnIva](@importe float)
returns FLOAT
AS
begin
	RETURN @importe * 1.16
END' 
END

GO
/****** Object:  UserDefinedFunction [dbo].[fnSuma]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnSuma]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
create function [dbo].[fnSuma](@v1 int, @v2 int)
returns int
AS
begin
	RETURN @v1 + @v2
END' 
END

GO
/****** Object:  Table [dbo].[articulos]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[articulos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[articulos](
	[cve_articulo] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[precio] [float] NOT NULL,
	[proveedor] [uniqueidentifier] NOT NULL,
	[marca] [varchar](20) NULL,
	[UM] [varchar](20) NULL,
 CONSTRAINT [pk_aticulos] PRIMARY KEY CLUSTERED 
(
	[cve_articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bancos]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bancos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[bancos](
	[cve_banco] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
 CONSTRAINT [pk_bancos] PRIMARY KEY CLUSTERED 
(
	[cve_banco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[caja]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[caja]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[caja](
	[cve_caja] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[cve_tienda] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_caja] PRIMARY KEY CLUSTERED 
(
	[cve_caja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cajeros]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cajeros]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cajeros](
	[cve_cajero] [uniqueidentifier] NOT NULL,
	[cve_empleado] [uniqueidentifier] NOT NULL,
	[cve_caja] [uniqueidentifier] NOT NULL,
	[cve_supervisor] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_cajeros] PRIMARY KEY CLUSTERED 
(
	[cve_cajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[calle]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[calle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[calle](
	[cve_calle] [uniqueidentifier] NOT NULL,
	[cve_colonia] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_calle] PRIMARY KEY CLUSTERED 
(
	[cve_calle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[clientes](
	[cve_clientes] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido_paterno] [varchar](50) NOT NULL,
	[apellido_materno] [varchar](50) NOT NULL,
	[direccion] [uniqueidentifier] NOT NULL,
	[rfc] [varchar](12) NOT NULL,
 CONSTRAINT [pk_clientes] PRIMARY KEY CLUSTERED 
(
	[cve_clientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[colonia]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[colonia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[colonia](
	[cve_colonia] [uniqueidentifier] NOT NULL,
	[cve_municipio] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[codigo_postal] [varchar](6) NULL,
 CONSTRAINT [pk_colonia] PRIMARY KEY CLUSTERED 
(
	[cve_colonia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cuentas_bancarias]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cuentas_bancarias]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cuentas_bancarias](
	[cve_cuenta] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
	[cve_banco] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_cuentas_bancarias] PRIMARY KEY CLUSTERED 
(
	[cve_cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle_inventario]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_inventario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detalle_inventario](
	[cve_detalle] [uniqueidentifier] NOT NULL,
	[cve_inventario] [uniqueidentifier] NOT NULL,
	[cve_articulo] [uniqueidentifier] NOT NULL,
	[existencia] [int] NOT NULL,
 CONSTRAINT [pk_detalle_inventario] PRIMARY KEY CLUSTERED 
(
	[cve_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[detalle_venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[detalle_venta](
	[cve_detalle] [uniqueidentifier] NOT NULL,
	[cve_venta] [uniqueidentifier] NOT NULL,
	[cve_articulo] [uniqueidentifier] NOT NULL,
	[cantidad] [float] NOT NULL,
	[cve_pago] [uniqueidentifier] NOT NULL,
	[total] [float] NOT NULL,
 CONSTRAINT [pk_detalle_venta] PRIMARY KEY CLUSTERED 
(
	[cve_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[direccion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[direccion](
	[cve_direccion] [uniqueidentifier] NOT NULL,
	[pais] [uniqueidentifier] NOT NULL,
	[estado] [uniqueidentifier] NOT NULL,
	[municipio] [uniqueidentifier] NOT NULL,
	[colonia] [uniqueidentifier] NOT NULL,
	[calle] [uniqueidentifier] NOT NULL,
	[numero] [varchar](10) NOT NULL,
 CONSTRAINT [pk_direccion] PRIMARY KEY CLUSTERED 
(
	[cve_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[empleados]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[empleados](
	[cve_empleado] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido_paterno] [varchar](50) NOT NULL,
	[apellido_materno] [varchar](50) NOT NULL,
	[fecha_ingreso] [date] NOT NULL,
	[dias_antiguedad]  AS (datediff(day,[fecha_ingreso],getdate())),
	[fecha_nacimiento] [date] NOT NULL,
	[edad]  AS (datediff(year,[fecha_nacimiento],getdate())),
	[cve_direccion] [uniqueidentifier] NOT NULL,
	[cve_estatus] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_empleados] PRIMARY KEY CLUSTERED 
(
	[cve_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estado]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[estado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[estado](
	[cve_estado] [uniqueidentifier] NOT NULL,
	[cve_pais] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_estado] PRIMARY KEY CLUSTERED 
(
	[cve_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estatus]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[estatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[estatus](
	[cve_estatus] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [pk_estatus] PRIMARY KEY CLUSTERED 
(
	[cve_estatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estatus_venta]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[estatus_venta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[estatus_venta](
	[cve_estatus] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_estatus_venta] PRIMARY KEY CLUSTERED 
(
	[cve_estatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[factura]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[factura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[factura](
	[cve_factura] [uniqueidentifier] NOT NULL,
	[cve_cliente] [uniqueidentifier] NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [pk_factuura] PRIMARY KEY CLUSTERED 
(
	[cve_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[formas_pago]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[formas_pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[formas_pago](
	[cve_pago] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[cve_estatus] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_formas_pago] PRIMARY KEY CLUSTERED 
(
	[cve_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[giros]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[giros]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[giros](
	[cve_giro] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_giros] PRIMARY KEY CLUSTERED 
(
	[cve_giro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inventario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[inventario](
	[cve_inventario] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[fecha] [date] NOT NULL,
	[cve_tienda] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_inventario] PRIMARY KEY CLUSTERED 
(
	[cve_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[municipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[municipio](
	[cve_municipio] [uniqueidentifier] NOT NULL,
	[cve_estado] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_municipio] PRIMARY KEY CLUSTERED 
(
	[cve_municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pais]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pais]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pais](
	[cve_pais] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_pais] PRIMARY KEY CLUSTERED 
(
	[cve_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[proveedores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[proveedores](
	[cve_proveedor] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[rfc] [varchar](12) NOT NULL,
	[giro] [uniqueidentifier] NOT NULL,
	[direccion] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_proveedores] PRIMARY KEY CLUSTERED 
(
	[cve_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supervisor]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[supervisor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[supervisor](
	[cve_supervisor] [uniqueidentifier] NOT NULL,
	[cve_empleado] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_supervisor] PRIMARY KEY CLUSTERED 
(
	[cve_supervisor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tienda]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tienda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tienda](
	[cve_tienda] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[ubicacion] [uniqueidentifier] NOT NULL,
	[rfc] [varchar](12) NOT NULL,
 CONSTRAINT [pk_tienda] PRIMARY KEY CLUSTERED 
(
	[cve_tienda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPVS]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TPVS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TPVS](
	[cve_tpv] [uniqueidentifier] NOT NULL,
	[numero_terminal] [varchar](30) NOT NULL,
	[estatus] [uniqueidentifier] NOT NULL,
	[cve_cuenta_bancaria] [uniqueidentifier] NOT NULL,
	[cve_caja] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_TPVS] PRIMARY KEY CLUSTERED 
(
	[cve_tpv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ubicaciones]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ubicaciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ubicaciones](
	[cve_ubicaciones] [uniqueidentifier] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[cve_direccion] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_ubicaciones] PRIMARY KEY CLUSTERED 
(
	[cve_ubicaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ventas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ventas](
	[cve_venta] [uniqueidentifier] NOT NULL,
	[cve_tienda] [uniqueidentifier] NOT NULL,
	[cve_cajero] [uniqueidentifier] NOT NULL,
	[cve_factura] [uniqueidentifier] NOT NULL,
	[fecha] [date] NOT NULL,
	[total_venta] [float] NULL,
	[estatus_venta] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_ventas] PRIMARY KEY CLUSTERED 
(
	[cve_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[direccion_view]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[direccion_view]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [dbo].[direccion_view] as
SELECT calle.descripcion AS ''CALLE'',
				direccion.numero ''NUMERO'',
				colonia.descripcion AS ''COLONIA'',
				colonia.codigo_postal AS ''CODIGO_POSTAL'',
				municipio.descripcion AS ''MUNICIPIO'',
				estado.descripcion AS ''ESTADO'',
				pais.descripcion AS ''PAIS''
 FROM direccion 
 inner join pais on direccion.pais = pais.cve_pais
 inner join estado on direccion.estado = estado.cve_estado
 inner join municipio on direccion.municipio = municipio.cve_municipio
 inner join colonia on direccion.colonia = colonia.cve_colonia
 inner join calle on direccion.calle = calle.cve_calle' 
GO
/****** Object:  View [dbo].[vw_cajas_cajeros]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_cajas_cajeros]'))
EXEC dbo.sp_executesql @statement = N' create view [dbo].[vw_cajas_cajeros]
 as
 select caja.descripcion as Caja,
		concat(empleados.nombre,
			   '' '',empleados.apellido_paterno,
			   '' '',empleados.apellido_materno) 
			    as Nombre_Cajero,
				supervisor.cve_supervisor from caja 
 inner join cajeros on caja.cve_caja = cajeros.cve_caja
 inner join empleados on cajeros.cve_empleado = empleados.cve_empleado
 inner join supervisor on cajeros.cve_supervisor = supervisor.cve_supervisor
' 
GO
/****** Object:  View [dbo].[vw_cajeros_ventas]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_cajeros_ventas]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[vw_cajeros_ventas]
 as
 select empleados.nombre as ''cajero'',
		ventas.cve_venta,
		ventas.fecha,
		estatus_venta.descripcion as ''estatus'',
		ventas.total_venta as ''importe''
		 from cajeros 
left join empleados on empleados.cve_empleado = cajeros.cve_empleado
left join ventas on cajeros.cve_cajero = ventas.cve_cajero
left join estatus_venta on ventas.estatus_venta = estatus_venta.cve_estatus
 ' 
GO
/****** Object:  View [dbo].[vw_informacion_empleados]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_informacion_empleados]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[vw_informacion_empleados] 
as
SELECT empleados.nombre,empleados.apellido_paterno,concat(calle.descripcion,
				'' '',direccion.numero,
				'' '',colonia.descripcion,
				'' '',colonia.codigo_postal,
				'' '',municipio.descripcion,
				'' '',estado.descripcion,
				'' '',pais.descripcion) 
		as direccionCompleta,
		empleados.fecha_ingreso,empleados.fecha_nacimiento
 FROM empleados
 inner join direccion on empleados.cve_direccion = direccion.cve_direccion 
 inner join pais on direccion.pais = pais.cve_pais
 inner join estado on direccion.estado = estado.cve_estado
 inner join municipio on direccion.municipio = municipio.cve_municipio
 inner join colonia on direccion.colonia = colonia.cve_colonia
 inner join calle on direccion.calle = calle.cve_calle;
' 
GO
/****** Object:  View [dbo].[vw_tpvs_cajas]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_tpvs_cajas]'))
EXEC dbo.sp_executesql @statement = N' create view [dbo].[vw_tpvs_cajas]
 as
 select caja.descripcion as CAJA,
		cuentas_bancarias.descripcion as CUENTA_BANCARIA,
		bancos.nombre as BANCO 
		from caja
 left join TPVS on caja.cve_caja = TPVS.cve_caja
 left join cuentas_bancarias on TPVS.cve_cuenta_bancaria = cuentas_bancarias.cve_cuenta
 left join bancos on cuentas_bancarias.cve_banco = bancos.cve_banco
' 
GO
/****** Object:  View [dbo].[vw_ventas_mes]    Script Date: 11/11/2017 05:43:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ventas_mes]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[vw_ventas_mes]
 as
 select empleados.nombre as ''cajero'',
		AVG(ventas.total_venta) as ''promedio_ventas_mes''
		from cajeros
left join empleados on empleados.cve_empleado = cajeros.cve_empleado
left join ventas on cajeros.cve_cajero = ventas.cve_cajero
where  month(ventas.fecha) = month(getdate()) 
group by empleados.nombre
' 
GO
INSERT [dbo].[articulos] ([cve_articulo], [descripcion], [precio], [proveedor], [marca], [UM]) VALUES (N'1029022f-cd35-4e8c-99d5-1bf2880328f9', N'tostadas', 23.2, N'e2af998e-a0ce-48ad-8013-141016228c7f', N'Mission', N'paquete')
GO
INSERT [dbo].[articulos] ([cve_articulo], [descripcion], [precio], [proveedor], [marca], [UM]) VALUES (N'0b7bf353-84e1-4556-afcc-394c0c472a15', N'LECHE ENTERA ', 18.56, N'e2af998e-a0ce-48ad-8013-141016228c7f', N'LALA', N'LITRO')
GO
INSERT [dbo].[articulos] ([cve_articulo], [descripcion], [precio], [proveedor], [marca], [UM]) VALUES (N'01d25ff2-ff7f-4256-9cf5-43a22f5441fe', N'TORTILLA DE HARINA 20PZ', 16.82, N'e2af998e-a0ce-48ad-8013-141016228c7f', N'TIA ROSA', N'PAQUETE')
GO
INSERT [dbo].[bancos] ([cve_banco], [nombre]) VALUES (N'66b9ba27-4c4f-4b86-a2fb-1d6cd2d67c67', N'BANORTE')
GO
INSERT [dbo].[bancos] ([cve_banco], [nombre]) VALUES (N'26871cbe-a765-4bfa-878f-2c20a93dc302', N'AFIRME')
GO
INSERT [dbo].[bancos] ([cve_banco], [nombre]) VALUES (N'ba72ca26-0b07-4dcd-ad73-2da5f5aa4fb8', N'BANAMEX')
GO
INSERT [dbo].[bancos] ([cve_banco], [nombre]) VALUES (N'9e020b1a-f31a-4282-b260-bc3e79db9564', N'BAJIO')
GO
INSERT [dbo].[caja] ([cve_caja], [descripcion], [cve_tienda]) VALUES (N'bc67f5ae-5600-4980-bc9d-0b076324489c', N'02', N'41530666-ab45-4fcd-8c4f-5f854d3f266f')
GO
INSERT [dbo].[caja] ([cve_caja], [descripcion], [cve_tienda]) VALUES (N'cc95cba3-b57c-4a96-9097-6a02ffc41343', N'04', N'41530666-ab45-4fcd-8c4f-5f854d3f266f')
GO
INSERT [dbo].[caja] ([cve_caja], [descripcion], [cve_tienda]) VALUES (N'b73d4baf-588b-498e-b49a-9bae2ae38feb', N'05', N'41530666-ab45-4fcd-8c4f-5f854d3f266f')
GO
INSERT [dbo].[caja] ([cve_caja], [descripcion], [cve_tienda]) VALUES (N'2668b618-2a56-42ba-98af-b5b65d8e95db', N'01', N'41530666-ab45-4fcd-8c4f-5f854d3f266f')
GO
INSERT [dbo].[caja] ([cve_caja], [descripcion], [cve_tienda]) VALUES (N'f3e67615-ff18-47e6-9ac9-ee460d0b2774', N'03', N'41530666-ab45-4fcd-8c4f-5f854d3f266f')
GO
INSERT [dbo].[cajeros] ([cve_cajero], [cve_empleado], [cve_caja], [cve_supervisor]) VALUES (N'f240c9d4-228b-4e1b-bc0a-5d85ec1271d8', N'77576fcd-ec35-4fc5-b538-22a6c266d45a', N'f3e67615-ff18-47e6-9ac9-ee460d0b2774', N'95b7f5e5-402b-4050-9c5a-99399ded630f')
GO
INSERT [dbo].[cajeros] ([cve_cajero], [cve_empleado], [cve_caja], [cve_supervisor]) VALUES (N'5dd7069b-b347-4327-8e58-6eb4d790cf32', N'5e8765eb-8944-4085-8971-227ccfe20c06', N'bc67f5ae-5600-4980-bc9d-0b076324489c', N'95b7f5e5-402b-4050-9c5a-99399ded630f')
GO
INSERT [dbo].[cajeros] ([cve_cajero], [cve_empleado], [cve_caja], [cve_supervisor]) VALUES (N'5276cebb-813f-4f15-80a2-b705d5c53095', N'979b770d-f23c-4ef3-815e-bcb2cb4af9e1', N'b73d4baf-588b-498e-b49a-9bae2ae38feb', N'95b7f5e5-402b-4050-9c5a-99399ded630f')
GO
INSERT [dbo].[cajeros] ([cve_cajero], [cve_empleado], [cve_caja], [cve_supervisor]) VALUES (N'c2e75bc1-4456-471e-b4b4-baa21949aa82', N'99ceed39-1fd3-4020-bc1f-18385c789113', N'2668b618-2a56-42ba-98af-b5b65d8e95db', N'95b7f5e5-402b-4050-9c5a-99399ded630f')
GO
INSERT [dbo].[cajeros] ([cve_cajero], [cve_empleado], [cve_caja], [cve_supervisor]) VALUES (N'd2a0df97-be55-4032-b4a6-fa5918cc4cef', N'34423608-228c-4418-abbb-5096cace0447', N'cc95cba3-b57c-4a96-9097-6a02ffc41343', N'95b7f5e5-402b-4050-9c5a-99399ded630f')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'834c6067-bf59-4128-a842-10985ce443e4', N'bba2bce7-2a41-428c-ba7c-e233d7ef4300', N'VIA MONTERREY-TORREON')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'a0cdd62b-4757-40c0-ae31-45f7b01809e8', N'bba2bce7-2a41-428c-ba7c-e233d7ef4300', N'LAS LOMAS')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'58df0a11-d914-48a1-a12f-55a9291d8b8d', N'd9158fcd-3474-43b2-a9a2-75b25ff457c1', N'CASA DE CORTES')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'3805608a-9897-4ebf-a53d-8afe77383638', N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'LAS GOLONDRINAS')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'15a40e96-0e9b-4189-93cb-9087e321c4c4', N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'MORENITA MIA')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'78a50a87-f766-4872-ba68-a8bfec67cad7', N'aa008a66-5f59-4388-90c5-a1ad14c7ee9f', N'NO ESPECIFICADO')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'6d6b1a8c-9999-4c84-b5ad-ae3f2fd1fd47', N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'ESTRELLITA')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'5a73c981-9251-4fa7-8123-cde6e7633611', N'6ee4a184-4cb7-4862-aa57-a25d3d98ea62', N'BARBECHO')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'a4c9fa97-2ab0-4601-9170-d4787f38440a', N'adc952f1-06de-48b3-8426-6745edf51921', N'PADRE MIER')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'174788c3-b93b-412c-9146-d74b0ca96d96', N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'NOCHE DE RONDA')
GO
INSERT [dbo].[calle] ([cve_calle], [cve_colonia], [descripcion]) VALUES (N'6fb5acfa-c6e3-4dbd-bfb3-eb288c3fe32e', N'94002a4e-e2de-4c3b-9a7d-c0aa986b6df0', N'FRESNO')
GO
INSERT [dbo].[clientes] ([cve_clientes], [nombre], [apellido_paterno], [apellido_materno], [direccion], [rfc]) VALUES (N'cc5c7ff0-7e17-4cbb-8c83-895da9b50712', N'ERNESTO', N'CABRERA', N'SERNA', N'f42a7293-907e-480a-8406-758c17343a6f', N'ECS980323QG5')
GO
INSERT [dbo].[clientes] ([cve_clientes], [nombre], [apellido_paterno], [apellido_materno], [direccion], [rfc]) VALUES (N'ec91ced3-3382-495d-bc04-cc92d8680260', N'SUPER CORTES', N' ', N' ', N'9839659f-5976-45ca-add7-96d598fef059', N'XXXXXXXXXXXX')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'74aa45f1-8a83-4255-93bd-220db0feb02f', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'ANAHUAC', N'66450')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'adc952f1-06de-48b3-8426-6745edf51921', N'03828503-e5e4-4400-a755-15c8a3dae34c', N'CENTRO', N'64000')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'd9158fcd-3474-43b2-a9a2-75b25ff457c1', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'CASA BELLA', N'66428')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'e6c510ce-334c-4a3b-89d2-911c9218e6c2', N'a596649c-9101-4257-9e64-10fd66582a0b', N'NUEVO REPUEBLO', N'64675')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'aa008a66-5f59-4388-90c5-a1ad14c7ee9f', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'NO ESPECIFICADO', N'00000')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'6ee4a184-4cb7-4862-aa57-a25d3d98ea62', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'BOSQUES DE LINDA VISTA', N'65365')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'ROBLE', N'64000')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'94002a4e-e2de-4c3b-9a7d-c0aa986b6df0', N'a596649c-9101-4257-9e64-10fd66582a0b', N'LAS PALMAS', N'63546')
GO
INSERT [dbo].[colonia] ([cve_colonia], [cve_municipio], [descripcion], [codigo_postal]) VALUES (N'bba2bce7-2a41-428c-ba7c-e233d7ef4300', N'10ab41b5-623b-4488-a602-551d1401f473', N'GIRASOLES', N'66987')
GO
INSERT [dbo].[cuentas_bancarias] ([cve_cuenta], [descripcion], [cve_banco]) VALUES (N'34eb8c95-6704-4244-be56-07fe6065b5c8', N'5565678878778', N'26871cbe-a765-4bfa-878f-2c20a93dc302')
GO
INSERT [dbo].[cuentas_bancarias] ([cve_cuenta], [descripcion], [cve_banco]) VALUES (N'1d671ff0-499c-43a1-ae95-0d99864fcf42', N'12345678900', N'66b9ba27-4c4f-4b86-a2fb-1d6cd2d67c67')
GO
INSERT [dbo].[cuentas_bancarias] ([cve_cuenta], [descripcion], [cve_banco]) VALUES (N'077974aa-926f-42c4-a0f2-51a9e7ee7077', N'099778545322456', N'9e020b1a-f31a-4282-b260-bc3e79db9564')
GO
INSERT [dbo].[cuentas_bancarias] ([cve_cuenta], [descripcion], [cve_banco]) VALUES (N'330ef22a-1e28-480b-bdce-5802358442fc', N'1122456787878', N'ba72ca26-0b07-4dcd-ad73-2da5f5aa4fb8')
GO
INSERT [dbo].[cuentas_bancarias] ([cve_cuenta], [descripcion], [cve_banco]) VALUES (N'20e8572d-c85d-414e-8872-59a89eb0ed2e', N'009987664455533', N'ba72ca26-0b07-4dcd-ad73-2da5f5aa4fb8')
GO
INSERT [dbo].[cuentas_bancarias] ([cve_cuenta], [descripcion], [cve_banco]) VALUES (N'4f5aaf58-910e-4c71-90a2-bee62791fd0c', N'099887765466', N'66b9ba27-4c4f-4b86-a2fb-1d6cd2d67c67')
GO
INSERT [dbo].[detalle_venta] ([cve_detalle], [cve_venta], [cve_articulo], [cantidad], [cve_pago], [total]) VALUES (N'46e47b13-aea0-4a5e-9627-67875ad6c229', N'69db900b-fe43-4040-ada8-09e571c4401b', N'0b7bf353-84e1-4556-afcc-394c0c472a15', 2, N'ffdd305a-8226-4afb-a8e4-560da196e83f', 32)
GO
INSERT [dbo].[detalle_venta] ([cve_detalle], [cve_venta], [cve_articulo], [cantidad], [cve_pago], [total]) VALUES (N'2c0d3cb0-7f84-467f-9b3f-d6437c68228c', N'5ac4541f-0d67-4fb9-892b-97aae474ba8a', N'1029022f-cd35-4e8c-99d5-1bf2880328f9', 1, N'b2dc8582-dc30-40fa-84e2-0134b987ee97', 23.2)
GO
INSERT [dbo].[detalle_venta] ([cve_detalle], [cve_venta], [cve_articulo], [cantidad], [cve_pago], [total]) VALUES (N'7bd2b00a-0cb6-4b87-a8eb-e1105bcd837a', N'5ac4541f-0d67-4fb9-892b-97aae474ba8a', N'0b7bf353-84e1-4556-afcc-394c0c472a15', 1, N'b2dc8582-dc30-40fa-84e2-0134b987ee97', 18.56)
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'a626e41a-65f7-4057-bf35-245c7241ffc0', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'15a40e96-0e9b-4189-93cb-9087e321c4c4', N'1000')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'26a1d860-0b47-49af-85fe-5935bbade1fc', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'174788c3-b93b-412c-9146-d74b0ca96d96', N'109')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'43f904e3-7328-4f4f-9794-62f1242fd082', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'd9158fcd-3474-43b2-a9a2-75b25ff457c1', N'58df0a11-d914-48a1-a12f-55a9291d8b8d', N'900')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'c03cc747-ad1d-4a21-abe9-748c94068dee', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'03828503-e5e4-4400-a755-15c8a3dae34c', N'adc952f1-06de-48b3-8426-6745edf51921', N'a4c9fa97-2ab0-4601-9170-d4787f38440a', N'354')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'f42a7293-907e-480a-8406-758c17343a6f', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'a596649c-9101-4257-9e64-10fd66582a0b', N'94002a4e-e2de-4c3b-9a7d-c0aa986b6df0', N'6fb5acfa-c6e3-4dbd-bfb3-eb288c3fe32e', N'712')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'24d23b9b-0ea2-4b25-a552-91a6e22ca1af', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'6ee4a184-4cb7-4862-aa57-a25d3d98ea62', N'5a73c981-9251-4fa7-8123-cde6e7633611', N'1243')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'6aa9d7a4-3930-4ab4-acef-944c8ec937b5', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'6d6b1a8c-9999-4c84-b5ad-ae3f2fd1fd47', N'107')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'9839659f-5976-45ca-add7-96d598fef059', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'aa008a66-5f59-4388-90c5-a1ad14c7ee9f', N'78a50a87-f766-4872-ba68-a8bfec67cad7', N'0')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'28a93bcb-b767-4032-b3d5-b28cc98e8f29', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'10ab41b5-623b-4488-a602-551d1401f473', N'bba2bce7-2a41-428c-ba7c-e233d7ef4300', N'a0cdd62b-4757-40c0-ae31-45f7b01809e8', N'678')
GO
INSERT [dbo].[direccion] ([cve_direccion], [pais], [estado], [municipio], [colonia], [calle], [numero]) VALUES (N'6aca100c-6140-41e2-8713-d54530aeac60', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'f47b8f0e-2a0e-41ee-8af3-aa4a48b6edaf', N'3805608a-9897-4ebf-a53d-8afe77383638', N'439')
GO
INSERT [dbo].[empleados] ([cve_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso], [fecha_nacimiento], [cve_direccion], [cve_estatus]) VALUES (N'99ceed39-1fd3-4020-bc1f-18385c789113', N'HECTOR', N'CORTES', N'RAMOS', CAST(0x812C0B00 AS Date), CAST(0xCF150B00 AS Date), N'6aa9d7a4-3930-4ab4-acef-944c8ec937b5', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0')
GO
INSERT [dbo].[empleados] ([cve_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso], [fecha_nacimiento], [cve_direccion], [cve_estatus]) VALUES (N'5e8765eb-8944-4085-8971-227ccfe20c06', N'RUBY', N'RAMIREZ', N'CASTILLO', CAST(0x0D2E0B00 AS Date), CAST(0x08130B00 AS Date), N'24d23b9b-0ea2-4b25-a552-91a6e22ca1af', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0')
GO
INSERT [dbo].[empleados] ([cve_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso], [fecha_nacimiento], [cve_direccion], [cve_estatus]) VALUES (N'77576fcd-ec35-4fc5-b538-22a6c266d45a', N'PABLO', N'REYES', N'LERMA', CAST(0x85370B00 AS Date), CAST(0xD6EB0A00 AS Date), N'6aca100c-6140-41e2-8713-d54530aeac60', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0')
GO
INSERT [dbo].[empleados] ([cve_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso], [fecha_nacimiento], [cve_direccion], [cve_estatus]) VALUES (N'34423608-228c-4418-abbb-5096cace0447', N'GABRIELA', N'CORTES', N'RAMIREZ', CAST(0x41360B00 AS Date), CAST(0xAC190B00 AS Date), N'43f904e3-7328-4f4f-9794-62f1242fd082', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0')
GO
INSERT [dbo].[empleados] ([cve_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso], [fecha_nacimiento], [cve_direccion], [cve_estatus]) VALUES (N'65b2ecdc-9264-498c-b1ff-5f10e84363e2', N'MIGUEL', N'CORTES', N'RAMOS', CAST(0x9A1A0B00 AS Date), CAST(0x7AFA0A00 AS Date), N'26a1d860-0b47-49af-85fe-5935bbade1fc', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0')
GO
INSERT [dbo].[empleados] ([cve_empleado], [nombre], [apellido_paterno], [apellido_materno], [fecha_ingreso], [fecha_nacimiento], [cve_direccion], [cve_estatus]) VALUES (N'979b770d-f23c-4ef3-815e-bcb2cb4af9e1', N'MAURICIO', N'CARDENAS', N'PEREZ', CAST(0x1D3B0B00 AS Date), CAST(0xB6060B00 AS Date), N'28a93bcb-b767-4032-b3d5-b28cc98e8f29', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0')
GO
INSERT [dbo].[estado] ([cve_estado], [cve_pais], [descripcion]) VALUES (N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'NUEVO LEON')
GO
INSERT [dbo].[estatus] ([cve_estatus], [descripcion]) VALUES (N'1637b906-29ff-4139-8159-416c8d34343b', N'INACTIVO')
GO
INSERT [dbo].[estatus] ([cve_estatus], [descripcion]) VALUES (N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'ACTIVO')
GO
INSERT [dbo].[estatus_venta] ([cve_estatus], [descripcion]) VALUES (N'4a9a2367-224a-430a-9625-b1b9835d9f2b', N'REALIZADA')
GO
INSERT [dbo].[estatus_venta] ([cve_estatus], [descripcion]) VALUES (N'888e0ede-eed7-40fd-952b-ca21cd8814c4', N'CANCELADA')
GO
INSERT [dbo].[factura] ([cve_factura], [cve_cliente], [fecha]) VALUES (N'b8e5d0cc-6046-4884-a088-4fb37af9faca', N'ec91ced3-3382-495d-bc04-cc92d8680260', CAST(0x713D0B00 AS Date))
GO
INSERT [dbo].[formas_pago] ([cve_pago], [descripcion], [cve_estatus]) VALUES (N'b2dc8582-dc30-40fa-84e2-0134b987ee97', N'TARJETA', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0')
GO
INSERT [dbo].[formas_pago] ([cve_pago], [descripcion], [cve_estatus]) VALUES (N'ffdd305a-8226-4afb-a8e4-560da196e83f', N'EFECTIVO', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0')
GO
INSERT [dbo].[formas_pago] ([cve_pago], [descripcion], [cve_estatus]) VALUES (N'fa01cd11-b080-45db-b6d3-c1238a464ec8', N'CUPONES', N'1637b906-29ff-4139-8159-416c8d34343b')
GO
INSERT [dbo].[giros] ([cve_giro], [descripcion]) VALUES (N'108d936b-aede-4bed-a28a-8a5f94912ffc', N'ALIMENTOS')
GO
INSERT [dbo].[municipio] ([cve_municipio], [cve_estado], [descripcion]) VALUES (N'a596649c-9101-4257-9e64-10fd66582a0b', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'APODACA')
GO
INSERT [dbo].[municipio] ([cve_municipio], [cve_estado], [descripcion]) VALUES (N'03828503-e5e4-4400-a755-15c8a3dae34c', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'MONTERREY')
GO
INSERT [dbo].[municipio] ([cve_municipio], [cve_estado], [descripcion]) VALUES (N'bb0a1e3b-1363-46b9-815c-4ff7cc01dc56', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'SAN NICOLAS')
GO
INSERT [dbo].[municipio] ([cve_municipio], [cve_estado], [descripcion]) VALUES (N'10ab41b5-623b-4488-a602-551d1401f473', N'b462ebf3-540a-419f-b10b-f3a6d954d469', N'ESCOBEDO')
GO
INSERT [dbo].[pais] ([cve_pais], [descripcion]) VALUES (N'6ad56a61-f3ca-41b8-8915-91a5bb5917f1', N'MEXICO')
GO
INSERT [dbo].[proveedores] ([cve_proveedor], [descripcion], [rfc], [giro], [direccion]) VALUES (N'e2af998e-a0ce-48ad-8013-141016228c7f', N'ALIMENTOS Y SERVICIOS S.A DE C.V', N'ASA781224CX4', N'108d936b-aede-4bed-a28a-8a5f94912ffc', N'c03cc747-ad1d-4a21-abe9-748c94068dee')
GO
INSERT [dbo].[supervisor] ([cve_supervisor], [cve_empleado]) VALUES (N'95b7f5e5-402b-4050-9c5a-99399ded630f', N'65b2ecdc-9264-498c-b1ff-5f10e84363e2')
GO
INSERT [dbo].[tienda] ([cve_tienda], [descripcion], [ubicacion], [rfc]) VALUES (N'41530666-ab45-4fcd-8c4f-5f854d3f266f', N'SUPER CORTES', N'f3726bfb-f8dd-4a3d-ba6d-37c07332e9ce', N'HMC500818DL4')
GO
INSERT [dbo].[TPVS] ([cve_tpv], [numero_terminal], [estatus], [cve_cuenta_bancaria], [cve_caja]) VALUES (N'b8169c37-7bfc-44a2-8511-0906cadfa0b3', N'000006', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'20e8572d-c85d-414e-8872-59a89eb0ed2e', N'f3e67615-ff18-47e6-9ac9-ee460d0b2774')
GO
INSERT [dbo].[TPVS] ([cve_tpv], [numero_terminal], [estatus], [cve_cuenta_bancaria], [cve_caja]) VALUES (N'9fabdeef-a0aa-418d-8c2e-0e40ab9fd5c9', N'000007', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'4f5aaf58-910e-4c71-90a2-bee62791fd0c', N'cc95cba3-b57c-4a96-9097-6a02ffc41343')
GO
INSERT [dbo].[TPVS] ([cve_tpv], [numero_terminal], [estatus], [cve_cuenta_bancaria], [cve_caja]) VALUES (N'cc24a341-520f-4d2b-a956-0ed7fd91718b', N'000008', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'20e8572d-c85d-414e-8872-59a89eb0ed2e', N'b73d4baf-588b-498e-b49a-9bae2ae38feb')
GO
INSERT [dbo].[TPVS] ([cve_tpv], [numero_terminal], [estatus], [cve_cuenta_bancaria], [cve_caja]) VALUES (N'0b8c135c-8377-4993-9135-13c917169012', N'000001', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'34eb8c95-6704-4244-be56-07fe6065b5c8', N'2668b618-2a56-42ba-98af-b5b65d8e95db')
GO
INSERT [dbo].[TPVS] ([cve_tpv], [numero_terminal], [estatus], [cve_cuenta_bancaria], [cve_caja]) VALUES (N'b053664f-7c76-4d26-bb59-4955a27c1466', N'000003', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'34eb8c95-6704-4244-be56-07fe6065b5c8', N'bc67f5ae-5600-4980-bc9d-0b076324489c')
GO
INSERT [dbo].[TPVS] ([cve_tpv], [numero_terminal], [estatus], [cve_cuenta_bancaria], [cve_caja]) VALUES (N'b5b5e88d-d38d-46f6-92ab-62df1e1eaf28', N'000005', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'4f5aaf58-910e-4c71-90a2-bee62791fd0c', N'f3e67615-ff18-47e6-9ac9-ee460d0b2774')
GO
INSERT [dbo].[TPVS] ([cve_tpv], [numero_terminal], [estatus], [cve_cuenta_bancaria], [cve_caja]) VALUES (N'd5b24a4a-ec92-4816-bf61-766fc612363e', N'000002', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'1d671ff0-499c-43a1-ae95-0d99864fcf42', N'2668b618-2a56-42ba-98af-b5b65d8e95db')
GO
INSERT [dbo].[TPVS] ([cve_tpv], [numero_terminal], [estatus], [cve_cuenta_bancaria], [cve_caja]) VALUES (N'fea717c4-6675-4e06-97c3-c02f64ede89f', N'000004', N'807d8296-47ee-4bee-ab70-81b3aa3dfae0', N'1d671ff0-499c-43a1-ae95-0d99864fcf42', N'bc67f5ae-5600-4980-bc9d-0b076324489c')
GO
INSERT [dbo].[ubicaciones] ([cve_ubicaciones], [descripcion], [cve_direccion]) VALUES (N'f3726bfb-f8dd-4a3d-ba6d-37c07332e9ce', N'MATRIZ', N'a626e41a-65f7-4057-bf35-245c7241ffc0')
GO
INSERT [dbo].[ventas] ([cve_venta], [cve_tienda], [cve_cajero], [cve_factura], [fecha], [total_venta], [estatus_venta]) VALUES (N'69db900b-fe43-4040-ada8-09e571c4401b', N'41530666-ab45-4fcd-8c4f-5f854d3f266f', N'f240c9d4-228b-4e1b-bc0a-5d85ec1271d8', N'b8e5d0cc-6046-4884-a088-4fb37af9faca', CAST(0x713D0B00 AS Date), 32, N'4a9a2367-224a-430a-9625-b1b9835d9f2b')
GO
INSERT [dbo].[ventas] ([cve_venta], [cve_tienda], [cve_cajero], [cve_factura], [fecha], [total_venta], [estatus_venta]) VALUES (N'5ac4541f-0d67-4fb9-892b-97aae474ba8a', N'41530666-ab45-4fcd-8c4f-5f854d3f266f', N'5276cebb-813f-4f15-80a2-b705d5c53095', N'b8e5d0cc-6046-4884-a088-4fb37af9faca', CAST(0x833D0B00 AS Date), 41.76, N'4a9a2367-224a-430a-9625-b1b9835d9f2b')
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__articulos__cve_a__4CA06362]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[articulos] ADD  CONSTRAINT [DF__articulos__cve_a__4CA06362]  DEFAULT (newid()) FOR [cve_articulo]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__bancos__cve_banc__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[bancos] ADD  CONSTRAINT [DF__bancos__cve_banc__108B795B]  DEFAULT (newid()) FOR [cve_banco]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__caja__cve_caja__2D27B809]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[caja] ADD  CONSTRAINT [DF__caja__cve_caja__2D27B809]  DEFAULT (newid()) FOR [cve_caja]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__cajeros__cve_caj__300424B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cajeros] ADD  CONSTRAINT [DF__cajeros__cve_caj__300424B4]  DEFAULT (newid()) FOR [cve_cajero]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__calle__cve_calle__2A4B4B5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[calle] ADD  CONSTRAINT [DF__calle__cve_calle__2A4B4B5E]  DEFAULT (newid()) FOR [cve_calle]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__clientes__cve_cl__440B1D61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clientes] ADD  CONSTRAINT [DF__clientes__cve_cl__440B1D61]  DEFAULT (newid()) FOR [cve_clientes]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__colonia__cve_col__276EDEB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[colonia] ADD  CONSTRAINT [DF__colonia__cve_col__276EDEB3]  DEFAULT (newid()) FOR [cve_colonia]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__cuentas_b__cve_c__1367E606]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cuentas_bancarias] ADD  CONSTRAINT [DF__cuentas_b__cve_c__1367E606]  DEFAULT (newid()) FOR [cve_cuenta]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__detalle_i__cve_d__5535A963]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detalle_inventario] ADD  CONSTRAINT [DF__detalle_i__cve_d__5535A963]  DEFAULT (newid()) FOR [cve_detalle]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__detalle_v__cve_d__49C3F6B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[detalle_venta] ADD  CONSTRAINT [DF__detalle_v__cve_d__49C3F6B7]  DEFAULT (newid()) FOR [cve_detalle]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__direccion__cve_d__1BFD2C07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[direccion] ADD  CONSTRAINT [DF__direccion__cve_d__1BFD2C07]  DEFAULT (newid()) FOR [cve_direccion]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__empleados__cve_e__35BCFE0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [DF__empleados__cve_e__35BCFE0A]  DEFAULT (newid()) FOR [cve_empleado]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__estado__cve_esta__21B6055D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[estado] ADD  CONSTRAINT [DF__estado__cve_esta__21B6055D]  DEFAULT (newid()) FOR [cve_estado]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__estatus__cve_est__38996AB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[estatus] ADD  CONSTRAINT [DF__estatus__cve_est__38996AB5]  DEFAULT (newid()) FOR [cve_estatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__estatus_v__cve_e__412EB0B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[estatus_venta] ADD  CONSTRAINT [DF__estatus_v__cve_e__412EB0B6]  DEFAULT (newid()) FOR [cve_estatus]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__factura__cve_fac__5812160E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[factura] ADD  CONSTRAINT [DF__factura__cve_fac__5812160E]  DEFAULT (newid()) FOR [cve_factura]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__formas_pa__cve_p__3B75D760]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[formas_pago] ADD  CONSTRAINT [DF__formas_pa__cve_p__3B75D760]  DEFAULT (newid()) FOR [cve_pago]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__giros__cve_giro__7D439ABD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[giros] ADD  CONSTRAINT [DF__giros__cve_giro__7D439ABD]  DEFAULT (newid()) FOR [cve_giro]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__inventari__cve_i__52593CB8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[inventario] ADD  CONSTRAINT [DF__inventari__cve_i__52593CB8]  DEFAULT (newid()) FOR [cve_inventario]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__municipio__cve_m__24927208]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[municipio] ADD  CONSTRAINT [DF__municipio__cve_m__24927208]  DEFAULT (newid()) FOR [cve_municipio]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__pais__cve_pais__1ED998B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pais] ADD  CONSTRAINT [DF__pais__cve_pais__1ED998B2]  DEFAULT (newid()) FOR [cve_pais]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__proveedor__cve_p__4F7CD00D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[proveedores] ADD  CONSTRAINT [DF__proveedor__cve_p__4F7CD00D]  DEFAULT (newid()) FOR [cve_proveedor]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__superviso__cve_s__32E0915F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[supervisor] ADD  CONSTRAINT [DF__superviso__cve_s__32E0915F]  DEFAULT (newid()) FOR [cve_supervisor]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__tienda__cve_tien__46E78A0C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tienda] ADD  CONSTRAINT [DF__tienda__cve_tien__46E78A0C]  DEFAULT (newid()) FOR [cve_tienda]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__TPVS__cve_tpv__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TPVS] ADD  CONSTRAINT [DF__TPVS__cve_tpv__164452B1]  DEFAULT (newid()) FOR [cve_tpv]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ubicacion__cve_u__1920BF5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ubicaciones] ADD  CONSTRAINT [DF__ubicacion__cve_u__1920BF5C]  DEFAULT (newid()) FOR [cve_ubicaciones]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF__ventas__cve_vent__3E52440B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ventas] ADD  CONSTRAINT [DF__ventas__cve_vent__3E52440B]  DEFAULT (newid()) FOR [cve_venta]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_proveedores_articulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[articulos]'))
ALTER TABLE [dbo].[articulos]  WITH CHECK ADD  CONSTRAINT [fk_proveedores_articulos] FOREIGN KEY([proveedor])
REFERENCES [dbo].[proveedores] ([cve_proveedor])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_proveedores_articulos]') AND parent_object_id = OBJECT_ID(N'[dbo].[articulos]'))
ALTER TABLE [dbo].[articulos] CHECK CONSTRAINT [fk_proveedores_articulos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_caja]') AND parent_object_id = OBJECT_ID(N'[dbo].[caja]'))
ALTER TABLE [dbo].[caja]  WITH CHECK ADD  CONSTRAINT [fk_tienda_caja] FOREIGN KEY([cve_tienda])
REFERENCES [dbo].[tienda] ([cve_tienda])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_caja]') AND parent_object_id = OBJECT_ID(N'[dbo].[caja]'))
ALTER TABLE [dbo].[caja] CHECK CONSTRAINT [fk_tienda_caja]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_caja_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros]  WITH CHECK ADD  CONSTRAINT [fk_caja_cajeros] FOREIGN KEY([cve_caja])
REFERENCES [dbo].[caja] ([cve_caja])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_caja_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros] CHECK CONSTRAINT [fk_caja_cajeros]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_empleado_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros]  WITH CHECK ADD  CONSTRAINT [fk_empleado_cajeros] FOREIGN KEY([cve_empleado])
REFERENCES [dbo].[empleados] ([cve_empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_empleado_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros] CHECK CONSTRAINT [fk_empleado_cajeros]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_supervisor_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros]  WITH CHECK ADD  CONSTRAINT [fk_supervisor_cajeros] FOREIGN KEY([cve_supervisor])
REFERENCES [dbo].[supervisor] ([cve_supervisor])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_supervisor_cajeros]') AND parent_object_id = OBJECT_ID(N'[dbo].[cajeros]'))
ALTER TABLE [dbo].[cajeros] CHECK CONSTRAINT [fk_supervisor_cajeros]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_colonia_calle]') AND parent_object_id = OBJECT_ID(N'[dbo].[calle]'))
ALTER TABLE [dbo].[calle]  WITH CHECK ADD  CONSTRAINT [fk_colonia_calle] FOREIGN KEY([cve_colonia])
REFERENCES [dbo].[colonia] ([cve_colonia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_colonia_calle]') AND parent_object_id = OBJECT_ID(N'[dbo].[calle]'))
ALTER TABLE [dbo].[calle] CHECK CONSTRAINT [fk_colonia_calle]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[clientes]'))
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [fk_direccion_clientes] FOREIGN KEY([direccion])
REFERENCES [dbo].[direccion] ([cve_direccion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_clientes]') AND parent_object_id = OBJECT_ID(N'[dbo].[clientes]'))
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [fk_direccion_clientes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_municipio_colonia]') AND parent_object_id = OBJECT_ID(N'[dbo].[colonia]'))
ALTER TABLE [dbo].[colonia]  WITH CHECK ADD  CONSTRAINT [fk_municipio_colonia] FOREIGN KEY([cve_municipio])
REFERENCES [dbo].[municipio] ([cve_municipio])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_municipio_colonia]') AND parent_object_id = OBJECT_ID(N'[dbo].[colonia]'))
ALTER TABLE [dbo].[colonia] CHECK CONSTRAINT [fk_municipio_colonia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_bancos_cuentas_bancarias]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuentas_bancarias]'))
ALTER TABLE [dbo].[cuentas_bancarias]  WITH CHECK ADD  CONSTRAINT [fk_bancos_cuentas_bancarias] FOREIGN KEY([cve_banco])
REFERENCES [dbo].[bancos] ([cve_banco])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_bancos_cuentas_bancarias]') AND parent_object_id = OBJECT_ID(N'[dbo].[cuentas_bancarias]'))
ALTER TABLE [dbo].[cuentas_bancarias] CHECK CONSTRAINT [fk_bancos_cuentas_bancarias]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_articulos_detalle_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_inventario]'))
ALTER TABLE [dbo].[detalle_inventario]  WITH CHECK ADD  CONSTRAINT [fk_articulos_detalle_inventario] FOREIGN KEY([cve_articulo])
REFERENCES [dbo].[articulos] ([cve_articulo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_articulos_detalle_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_inventario]'))
ALTER TABLE [dbo].[detalle_inventario] CHECK CONSTRAINT [fk_articulos_detalle_inventario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_inventario_detalle_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_inventario]'))
ALTER TABLE [dbo].[detalle_inventario]  WITH CHECK ADD  CONSTRAINT [fk_inventario_detalle_inventario] FOREIGN KEY([cve_inventario])
REFERENCES [dbo].[inventario] ([cve_inventario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_inventario_detalle_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_inventario]'))
ALTER TABLE [dbo].[detalle_inventario] CHECK CONSTRAINT [fk_inventario_detalle_inventario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_articulos_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [fk_articulos_detalle_venta] FOREIGN KEY([cve_articulo])
REFERENCES [dbo].[articulos] ([cve_articulo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_articulos_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [fk_articulos_detalle_venta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_formas_pago_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [fk_formas_pago_detalle_venta] FOREIGN KEY([cve_pago])
REFERENCES [dbo].[formas_pago] ([cve_pago])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_formas_pago_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [fk_formas_pago_detalle_venta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ventas_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [fk_ventas_detalle_venta] FOREIGN KEY([cve_venta])
REFERENCES [dbo].[ventas] ([cve_venta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ventas_detalle_venta]') AND parent_object_id = OBJECT_ID(N'[dbo].[detalle_venta]'))
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [fk_ventas_detalle_venta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_calle_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion]  WITH CHECK ADD  CONSTRAINT [fk_calle_direccion] FOREIGN KEY([calle])
REFERENCES [dbo].[calle] ([cve_calle])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_calle_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] CHECK CONSTRAINT [fk_calle_direccion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_colonia_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion]  WITH CHECK ADD  CONSTRAINT [fk_colonia_direccion] FOREIGN KEY([colonia])
REFERENCES [dbo].[colonia] ([cve_colonia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_colonia_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] CHECK CONSTRAINT [fk_colonia_direccion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estado_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion]  WITH CHECK ADD  CONSTRAINT [fk_estado_direccion] FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([cve_estado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estado_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] CHECK CONSTRAINT [fk_estado_direccion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_municipio_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion]  WITH CHECK ADD  CONSTRAINT [fk_municipio_direccion] FOREIGN KEY([municipio])
REFERENCES [dbo].[municipio] ([cve_municipio])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_municipio_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] CHECK CONSTRAINT [fk_municipio_direccion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_pais_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion]  WITH CHECK ADD  CONSTRAINT [fk_pais_direccion] FOREIGN KEY([pais])
REFERENCES [dbo].[pais] ([cve_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_pais_direccion]') AND parent_object_id = OBJECT_ID(N'[dbo].[direccion]'))
ALTER TABLE [dbo].[direccion] CHECK CONSTRAINT [fk_pais_direccion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleados]'))
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [fk_direccion_empleados] FOREIGN KEY([cve_direccion])
REFERENCES [dbo].[direccion] ([cve_direccion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleados]'))
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [fk_direccion_empleados]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleados]'))
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [fk_estatus_empleados] FOREIGN KEY([cve_estatus])
REFERENCES [dbo].[estatus] ([cve_estatus])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_empleados]') AND parent_object_id = OBJECT_ID(N'[dbo].[empleados]'))
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [fk_estatus_empleados]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_pais_estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[estado]'))
ALTER TABLE [dbo].[estado]  WITH CHECK ADD  CONSTRAINT [fk_pais_estado] FOREIGN KEY([cve_pais])
REFERENCES [dbo].[pais] ([cve_pais])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_pais_estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[estado]'))
ALTER TABLE [dbo].[estado] CHECK CONSTRAINT [fk_pais_estado]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_clientes_factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [fk_clientes_factura] FOREIGN KEY([cve_cliente])
REFERENCES [dbo].[clientes] ([cve_clientes])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_clientes_factura]') AND parent_object_id = OBJECT_ID(N'[dbo].[factura]'))
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [fk_clientes_factura]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_formas_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[formas_pago]'))
ALTER TABLE [dbo].[formas_pago]  WITH CHECK ADD  CONSTRAINT [fk_estatus_formas_pago] FOREIGN KEY([cve_estatus])
REFERENCES [dbo].[estatus] ([cve_estatus])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_formas_pago]') AND parent_object_id = OBJECT_ID(N'[dbo].[formas_pago]'))
ALTER TABLE [dbo].[formas_pago] CHECK CONSTRAINT [fk_estatus_formas_pago]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[inventario]'))
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD  CONSTRAINT [fk_tienda_inventario] FOREIGN KEY([cve_tienda])
REFERENCES [dbo].[tienda] ([cve_tienda])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_inventario]') AND parent_object_id = OBJECT_ID(N'[dbo].[inventario]'))
ALTER TABLE [dbo].[inventario] CHECK CONSTRAINT [fk_tienda_inventario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estado_municipio]') AND parent_object_id = OBJECT_ID(N'[dbo].[municipio]'))
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD  CONSTRAINT [fk_estado_municipio] FOREIGN KEY([cve_estado])
REFERENCES [dbo].[estado] ([cve_estado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estado_municipio]') AND parent_object_id = OBJECT_ID(N'[dbo].[municipio]'))
ALTER TABLE [dbo].[municipio] CHECK CONSTRAINT [fk_estado_municipio]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_giros_proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[proveedores]'))
ALTER TABLE [dbo].[proveedores]  WITH CHECK ADD  CONSTRAINT [fk_giros_proveedores] FOREIGN KEY([giro])
REFERENCES [dbo].[giros] ([cve_giro])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_giros_proveedores]') AND parent_object_id = OBJECT_ID(N'[dbo].[proveedores]'))
ALTER TABLE [dbo].[proveedores] CHECK CONSTRAINT [fk_giros_proveedores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_empleado_supervisor]') AND parent_object_id = OBJECT_ID(N'[dbo].[supervisor]'))
ALTER TABLE [dbo].[supervisor]  WITH CHECK ADD  CONSTRAINT [fk_empleado_supervisor] FOREIGN KEY([cve_empleado])
REFERENCES [dbo].[empleados] ([cve_empleado])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_empleado_supervisor]') AND parent_object_id = OBJECT_ID(N'[dbo].[supervisor]'))
ALTER TABLE [dbo].[supervisor] CHECK CONSTRAINT [fk_empleado_supervisor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ubicaciones_tienda]') AND parent_object_id = OBJECT_ID(N'[dbo].[tienda]'))
ALTER TABLE [dbo].[tienda]  WITH CHECK ADD  CONSTRAINT [fk_ubicaciones_tienda] FOREIGN KEY([ubicacion])
REFERENCES [dbo].[ubicaciones] ([cve_ubicaciones])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ubicaciones_tienda]') AND parent_object_id = OBJECT_ID(N'[dbo].[tienda]'))
ALTER TABLE [dbo].[tienda] CHECK CONSTRAINT [fk_ubicaciones_tienda]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cajas_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS]  WITH CHECK ADD  CONSTRAINT [fk_cajas_TPVS] FOREIGN KEY([cve_caja])
REFERENCES [dbo].[caja] ([cve_caja])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cajas_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS] CHECK CONSTRAINT [fk_cajas_TPVS]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cuentas_bancarias_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS]  WITH CHECK ADD  CONSTRAINT [fk_cuentas_bancarias_TPVS] FOREIGN KEY([cve_cuenta_bancaria])
REFERENCES [dbo].[cuentas_bancarias] ([cve_cuenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cuentas_bancarias_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS] CHECK CONSTRAINT [fk_cuentas_bancarias_TPVS]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS]  WITH CHECK ADD  CONSTRAINT [fk_estatus_TPVS] FOREIGN KEY([estatus])
REFERENCES [dbo].[estatus] ([cve_estatus])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_TPVS]') AND parent_object_id = OBJECT_ID(N'[dbo].[TPVS]'))
ALTER TABLE [dbo].[TPVS] CHECK CONSTRAINT [fk_estatus_TPVS]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_ubicaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[ubicaciones]'))
ALTER TABLE [dbo].[ubicaciones]  WITH CHECK ADD  CONSTRAINT [fk_direccion_ubicaciones] FOREIGN KEY([cve_direccion])
REFERENCES [dbo].[direccion] ([cve_direccion])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_direccion_ubicaciones]') AND parent_object_id = OBJECT_ID(N'[dbo].[ubicaciones]'))
ALTER TABLE [dbo].[ubicaciones] CHECK CONSTRAINT [fk_direccion_ubicaciones]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cajero_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [fk_cajero_ventas] FOREIGN KEY([cve_cajero])
REFERENCES [dbo].[cajeros] ([cve_cajero])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_cajero_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [fk_cajero_ventas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [fk_estatus_ventas] FOREIGN KEY([estatus_venta])
REFERENCES [dbo].[estatus_venta] ([cve_estatus])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_estatus_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [fk_estatus_ventas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_factura_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [fk_factura_ventas] FOREIGN KEY([cve_factura])
REFERENCES [dbo].[factura] ([cve_factura])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_factura_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [fk_factura_ventas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [fk_tienda_ventas] FOREIGN KEY([cve_tienda])
REFERENCES [dbo].[tienda] ([cve_tienda])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_tienda_ventas]') AND parent_object_id = OBJECT_ID(N'[dbo].[ventas]'))
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [fk_tienda_ventas]
GO
