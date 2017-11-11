USE supermarket
/*funcion para sacar el iva*/
CREATE function dbo.FnIva(@importe float)
returns FLOAT
AS
begin
	RETURN @importe * 1.16
END

SELECT articulos.descripcion, articulos.precio, dbo.FnIva(articulos.precio) as 'Precio con IVA'
from articulos

/*procedimientos almacenados de las vistas creadas*/
/*reporte 1*/
CREATE procedure dbo.ReporteEmpleados(@nombre nvarchar(50) = NULL, @apellido nvarchar(50) = null)
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
	
end

EXEC ReporteEmpleados 'miguel'
EXEC ReporteEmpleados null,'cortes'
EXEC ReporteEmpleados 'ruby','ramirez'
EXEC ReporteEmpleados 





/*reporte 2*/

create procedure dbo.ReporteCajasCajero @caja varchar(50)
as
begin
	select * from dbo.vw_cajas_cajeros
	where Caja = @caja
	
end

exec ReporteCajasCajero '02'

/*reporte 3*/

create procedure dbo.ReporteCajasCuentasBancarias @caja varchar(50)
as
begin
	select * from dbo.vw_tpvs_cajas
	where Caja = @caja
	
end

exec ReporteCajasCuentasBancarias '02'

/*reporte 4*/

create procedure dbo.ReporteCajerosVenta @cajero varchar(50)
as
begin
	select * from dbo.vw_cajeros_ventas
	where cajero = @cajero
	
end

exec ReporteCajerosVenta 'MAURICIO'

/*reporte 5*/

select * from vw_ventas_mes
create procedure dbo.ReporteVentasMes @cajero varchar(50)
as
begin
	select * from dbo.vw_ventas_mes
	where cajero = @cajero
	
end

exec ReporteVentasMes 'MAURICIO'

/*triggers*/

/*trigger 1*/
/*alerta al querer eliminar registro de tabla detalle_venta no lo permite*/
CREATE TRIGGER TR_borrar_detalle_ventas
on dbo.detalle_venta
instead of delete
as
print 'NO ES POSIBLE ELIMINAR REGISTROS DE VENTAS SI SE REQUIERE CANCELE LA VENTA'

/*probando TR_actualizar_detalle_ventas*/

delete from detalle_venta
where cve_detalle= '46E47B13-AEA0-4A5E-9627-67875AD6C229'

select * from detalle_venta


/*trigger 2*/
/*se realiza la suma de los artiulos comprados y se actualiza el total de la venta*/

create trigger TR_total_venta
on dbo.detalle_venta
after insert
as
update dbo.ventas set ventas.total_venta = ventas.total_venta + inserted.total
from ventas inner join inserted on inserted.cve_venta = dbo.ventas.cve_venta
print 'se realizo la venta exitosamente'

/*prueda de TR_total_venta*/

/*creando venta 2*/
insert ventas (cve_tienda,cve_cajero,cve_factura,fecha,total_venta,estatus_venta)
values ('41530666-AB45-4FCD-8C4F-5F854D3F266F','5276CEBB-813F-4F15-80A2-B705D5C53095','B8E5D0CC-6046-4884-A088-4FB37AF9FACA',getdate(),0,'4A9A2367-224A-430A-9625-B1B9835D9F2B')

/*detalle venta*/
insert detalle_venta(cve_venta,cve_articulo,cantidad,cve_pago,total)
values ('5AC4541F-0D67-4FB9-892B-97AAE474BA8A','1029022F-CD35-4E8C-99D5-1BF2880328F9',1,'B2DC8582-DC30-40FA-84E2-0134B987EE97',23.20)

insert detalle_venta(cve_venta,cve_articulo,cantidad,cve_pago,total)
values ('5AC4541F-0D67-4FB9-892B-97AAE474BA8A','0B7BF353-84E1-4556-AFCC-394C0C472A15',1,'B2DC8582-DC30-40FA-84E2-0134B987EE97',18.56)

/*trigger 2*/
/*se actualiza el precio del articulo con IVA al darse de alta */
create trigger TR_alta_articulos
on dbo.articulos
after insert
as
select * from inserted
update dbo.articulos set dbo.articulos.precio = dbo.FnIva(dbo.articulos.precio)
from articulos 
inner join inserted
 on inserted.cve_articulo = articulos.cve_articulo
print 'se dio de alta el articulo nuevo satisfactoriamente agregando el IVA correspondiente al precio'

/*prueba de TR_alta_articulos*/

insert articulos (descripcion, precio, proveedor, marca, UM)
values ('tostadas',20,'E2AF998E-A0CE-48AD-8013-141016228C7F','Mission','paquete')
