/*
HECTOR MIGUEL CORTES RAMOS
1477355
migcortess@gmail.com
*/
/*1.-CUANTAS CALLES POR MUNICIPIO HAY EN EL CATALOGO DE DIRECCIONES*/
 SELECT count(CALLE) AS 'NUMERO DE CALLES',MUNICIPIO.descripcion AS 'MUNICIPIO' from 
 direccion 
 inner join pais on direccion.pais = pais.cve_pais
 inner join estado on direccion.estado = estado.cve_estado
 inner join municipio on direccion.municipio = municipio.cve_municipio
 inner join colonia on direccion.colonia = colonia.cve_colonia
 inner join calle on direccion.calle = calle.cve_calle
  GROUP BY MUNICIPIO.descripcion

 /*2.-MUESTRA POR CAJERO EL TOTAL DE VENTAS, 
  VENTA MAS ALTA Y VENTA MAS BAJA*/
 select empleados.nombre,
		count(ventas.total_venta) as 'VENTAS_TOTALES',
		MAX(ventas.total_venta) as 'VENTA_MAS_ALTA', 
		MIN(ventas.total_venta) as 'VENTA_MAS_BAJA' 
from cajeros
 left join empleados on cajeros.cve_empleado = empleados.cve_empleado
 left join ventas on cajeros.cve_cajero = ventas.cve_cajero
 group by empleados.nombre 
 order by count(ventas.total_venta) DESC

 
 /*3.-MUESTRA POR CAJERO EL TOTAL DE VENTAS, 
  VENTA MAS ALTA Y VENTA MAS BAJA,
   DE LOS EMPLEADOS CON FECHA DE INGRESO DEL 2010 A LA ACTUALIDAD*/ 
  select empleados.nombre,
		count(ventas.total_venta) as 'VENTAS_TOTALES',
		MAX(ventas.total_venta) as 'VENTA_MAS_ALTA', 
		MIN(ventas.total_venta) as 'VENTA_MAS_BAJA' 
from cajeros
 left join empleados on cajeros.cve_empleado = empleados.cve_empleado
 left join ventas on cajeros.cve_cajero = ventas.cve_cajero
 WHERE empleados.fecha_ingreso > '2010/01/01'
 group by empleados.nombre 
 order by count(ventas.total_venta) DESC

  /*4.-MUESTRA POR CAJERO EL TOTAL DE VENTAS, 
  VENTA MAS ALTA Y VENTA MAS BAJA,
   DE LOS EMPLEADOS CON FECHA DE INGRESO DEL 2010 A LA ACTUALIDAD
  Y QUE REALIZARON MAS DE 10 VENTAS*/
 select empleados.nombre,
		count(ventas.total_venta) as 'VENTAS_TOTALES',
		MAX(ventas.total_venta) as 'VENTA_MAS_ALTA', 
		MIN(ventas.total_venta) as 'VENTA_MAS_BAJA' 
from cajeros
 left join empleados on cajeros.cve_empleado = empleados.cve_empleado
 left join ventas on cajeros.cve_cajero = ventas.cve_cajero
 WHERE empleados.fecha_ingreso > '2010/01/01'
 group by empleados.nombre 
 HAVING COUNT(VENTAS.TOTAL_VENTA) > 10
 order by count(ventas.total_venta) DESC

/*5.- MUESTRA LAS 5 VENTAS MAS ALTAS DEL DIA de forma descendente*/

SELECT TOP 5 ventas.fecha,ventas.total_venta 
from ventas
WHERE ventas.fecha = getdate()
order by ventas.total_venta DESC

/*6.-PROMEDIO DE LAS VENTAS DEL DIA DE HOY*/
 select empleados.nombre,caja.descripcion AS 'CAJA',ventas.fecha,
		count(ventas.total_venta) as 'VENTAS_TOTALES',
		avg(ventas.total_venta) as 'PROMEDIO_VENTA' 
from cajeros
 INNER join empleados on cajeros.cve_empleado = empleados.cve_empleado
 INNER join caja on cajeros.cve_caja = caja.cve_caja
 INNER join ventas on cajeros.cve_cajero = ventas.cve_cajero
 group by empleados.nombre,caja.descripcion,ventas.fecha
 having ventas.fecha = getdate()
 order by caja.descripcion DESC
