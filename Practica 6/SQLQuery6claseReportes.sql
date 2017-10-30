/*
HECTOR MIGUEL CORTES RAMOS
1477355
migcortess@gmail.com
*/

use supermarket
/*1.-informacion de empleados*/
create view vw_informacion_empleados 
as
SELECT empleados.nombre,empleados.apellido_paterno,concat(calle.descripcion,
				' ',direccion.numero,
				' ',colonia.descripcion,
				' ',colonia.codigo_postal,
				' ',municipio.descripcion,
				' ',estado.descripcion,
				' ',pais.descripcion) 
		as direccionCompleta,
		empleados.fecha_ingreso,empleados.fecha_nacimiento
 FROM empleados
 inner join direccion on empleados.cve_direccion = direccion.cve_direccion 
 inner join pais on direccion.pais = pais.cve_pais
 inner join estado on direccion.estado = estado.cve_estado
 inner join municipio on direccion.municipio = municipio.cve_municipio
 inner join colonia on direccion.colonia = colonia.cve_colonia
 inner join calle on direccion.calle = calle.cve_calle;
 /*2.-reporte de cajas-cajeros*/
 create view vw_cajas_cajeros
 as
 select caja.descripcion as Caja,
		concat(empleados.nombre,
			   ' ',empleados.apellido_paterno,
			   ' ',empleados.apellido_materno) 
			    as Nombre_Cajero,
				supervisor.cve_supervisor from caja 
 inner join cajeros on caja.cve_caja = cajeros.cve_caja
 inner join empleados on cajeros.cve_empleado = empleados.cve_empleado
 inner join supervisor on cajeros.cve_supervisor = supervisor.cve_supervisor

 /*3.-reporte de tpvs-caja*/
 create view vw_tpvs_cajas
 as
 select caja.descripcion as CAJA,
		cuentas_bancarias.descripcion as CUENTA_BANCARIA,
		bancos.nombre as BANCO 
		from caja
 left join TPVS on caja.cve_caja = TPVS.cve_caja
 left join cuentas_bancarias on TPVS.cve_cuenta_bancaria = cuentas_bancarias.cve_cuenta
 left join bancos on cuentas_bancarias.cve_banco = bancos.cve_banco

 /*4.-reporte de cajeros-ventas*/
 create view vw_cajeros_ventas
 as
 select empleados.nombre as 'cajero',
		ventas.cve_venta,
		ventas.fecha,
		estatus_venta.descripcion as 'estatus',
		ventas.total_venta as 'importe'
		 from cajeros 
left join empleados on empleados.cve_empleado = cajeros.cve_empleado
left join ventas on cajeros.cve_cajero = ventas.cve_cajero
left join estatus_venta on ventas.estatus_venta = estatus_venta.cve_estatus
 

 /*5.-reporte de promedio de ventas por mes*/
 create view vw_ventas_mes
 as
 select empleados.nombre as 'cajero',
		AVG(ventas.total_venta) as 'promedio_ventas_mes'
		from cajeros
left join empleados on empleados.cve_empleado = cajeros.cve_empleado
left join ventas on cajeros.cve_cajero = ventas.cve_cajero
where  month(ventas.fecha) = month(getdate()) 
group by empleados.nombre

/*mostrar vistas creadas*/
select * from vw_cajas_cajeros
select * from vw_cajeros_ventas
select * from vw_informacion_empleados
select * from vw_tpvs_cajas
select * from vw_ventas_mes

/*SUBCONSULTAS*/
/*empleados que son cajeros*/
SELECT empleados.nombre,empleados.apellido_paterno from
		empleados
		where empleados.cve_empleado in
		(select cajeros.cve_empleado from cajeros)

/*empleados activos e inactivos*/
WITH NC AS (
	select empleados.cve_estatus as 'estatus',count(cve_empleado) as 'total_empleados' from empleados group by empleados.cve_estatus
)
SELECT * from
		NC

/*tabla temporal*/

 select empleados.nombre,caja.descripcion AS 'CAJA',ventas.fecha,
		count(ventas.total_venta) as 'VENTAS_TOTALES',
		avg(ventas.total_venta) as 'PROMEDIO_VENTA' 
		into #TM_promedio
from cajeros
 INNER join empleados on cajeros.cve_empleado = empleados.cve_empleado
 INNER join caja on cajeros.cve_caja = caja.cve_caja
 INNER join ventas on cajeros.cve_cajero = ventas.cve_cajero
 group by empleados.nombre,caja.descripcion,ventas.fecha
 having ventas.fecha = getdate()
 order by caja.descripcion DESC

 /*mostrar tabla temporal*/
 select * from #TM_promedio