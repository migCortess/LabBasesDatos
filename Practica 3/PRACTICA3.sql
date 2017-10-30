/*PRACTICA 
HMCR
1477355
migcortes@gmail.com*/

create database supermarket
/*drop database supermarket*/
use supermarket

	CREATE TABLE bancos(
		cve_banco uniqueidentifier DEFAULT NEWID() not null,
		nombre varchar(30) not null,
		
		constraint pk_bancos primary key (cve_banco)
		)
	CREATE TABLE cuentas_bancarias(
		cve_cuenta uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(30) not null,
		cve_banco uniqueidentifier not null,

		constraint pk_cuentas_bancarias primary key (cve_cuenta)
		)

	CREATE TABLE TPVS(
		cve_tpv uniqueidentifier  DEFAULT NEWID() not null,
		numero_terminal varchar(30) not null,
		estatus uniqueidentifier not null,
		cve_cuenta_bancaria uniqueidentifier not null,
		cve_caja uniqueidentifier not null,

		constraint pk_TPVS primary key (cve_tpv)
		)

	CREATE TABLE ubicaciones(
		cve_ubicaciones uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,
		cve_direccion uniqueidentifier not null,

		constraint pk_ubicaciones primary key (cve_ubicaciones)
	)

	CREATE TABLE direccion(
		cve_direccion uniqueidentifier DEFAULT NEWID() not null,
		pais uniqueidentifier not null,
		estado uniqueidentifier not null,
		municipio uniqueidentifier not null,
		colonia uniqueidentifier not null,
		calle uniqueidentifier not null,
		numero varchar(10) not null,

		constraint pk_direccion primary key (cve_direccion)
	)

	CREATE TABLE pais(
		cve_pais uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,

		constraint pk_pais primary key (cve_pais)
	)

	CREATE TABLE estado(
		cve_estado uniqueidentifier  DEFAULT NEWID() not null,
		cve_pais uniqueidentifier not null,
		descripcion varchar(50) not null,

		constraint pk_estado primary key (cve_estado)
	)

	CREATE TABLE municipio(
		cve_municipio uniqueidentifier DEFAULT NEWID() not null,
		cve_estado uniqueidentifier not null,
		descripcion varchar(50) not null,

		constraint pk_municipio primary key (cve_municipio)
	)

	CREATE TABLE colonia(
		cve_colonia uniqueidentifier DEFAULT NEWID() not null,
		cve_municipio uniqueidentifier not null,
		descripcion varchar(50) not null,
		codigo_postal varchar(6),

		constraint pk_colonia primary key (cve_colonia)
	)

	CREATE TABLE calle(
		cve_calle uniqueidentifier DEFAULT NEWID() not null,
		cve_colonia uniqueidentifier not null,
		descripcion varchar(50) not null,

		constraint pk_calle primary key (cve_calle)
	)

	CREATE TABLE caja(
		cve_caja uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,
		cve_tienda uniqueidentifier not null,

		constraint pk_caja primary key (cve_caja)
	)

	CREATE TABLE cajeros(
		cve_cajero uniqueidentifier  DEFAULT NEWID() not null,
		cve_empleado uniqueidentifier not null,
		cve_caja uniqueidentifier not null,
		cve_supervisor uniqueidentifier not null,

		constraint pk_cajeros primary key (cve_cajero)
	)

	CREATE TABLE supervisor(
		cve_supervisor uniqueidentifier DEFAULT NEWID() not null,
		cve_empleado uniqueidentifier not null,

		constraint pk_supervisor primary key (cve_supervisor)
	)

	CREATE TABLE empleados(
		cve_empleado uniqueidentifier DEFAULT NEWID() not null,
		nombre varchar(50) not null,
		apellido_paterno varchar(50) not null,
		apellido_materno varchar(50) not null,
		fecha_ingreso date not null,
		dias_antiguedad as datediff(day,fecha_ingreso,getdate()),
		fecha_nacimiento date not null,
		edad as datediff(year,fecha_nacimiento,getdate()),
		cve_direccion uniqueidentifier not null,
		cve_estatus uniqueidentifier not null,

		constraint pk_empleados primary key (cve_empleado)
	)

	CREATE TABLE estatus(
		cve_estatus uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(30) not null,

		constraint pk_estatus primary key (cve_estatus)
	)

	CREATE TABLE formas_pago(
		cve_pago uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,
		cve_estatus uniqueidentifier not null,

		constraint pk_formas_pago primary key (cve_pago)
	)

	CREATE TABLE ventas(
		cve_venta uniqueidentifier DEFAULT NEWID() not null,
		cve_tienda uniqueidentifier not null,
		cve_cajero uniqueidentifier not null,
		cve_factura uniqueidentifier not null,
		fecha date not null,
		total_venta float,
		estatus_venta uniqueidentifier not null,

		constraint pk_ventas primary key (cve_venta)
	)

	CREATE TABLE estatus_venta(
		cve_estatus uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,

		constraint pk_estatus_venta primary key (cve_estatus)
	)

	CREATE TABLE clientes(
		cve_clientes uniqueidentifier DEFAULT NEWID() not null,
		nombre varchar(50) not null,
		apellido_paterno varchar(50) not null,
		apellido_materno varchar(50) not null,
		direccion uniqueidentifier not null,
		rfc varchar(12) not null,

		constraint pk_clientes primary key (cve_clientes)
	)

	CREATE TABLE tienda(
		cve_tienda uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,
		ubicacion uniqueidentifier not null,
		rfc varchar(12) not null,

		constraint pk_tienda primary key (cve_tienda)
	)

	CREATE TABLE detalle_venta(
		cve_detalle uniqueidentifier DEFAULT NEWID() not null,
		cve_venta uniqueidentifier not null,
		cve_articulo uniqueidentifier not null,
		cantidad float not null,
		cve_pago uniqueidentifier not null,
		total float not null,

		constraint pk_detalle_venta primary key (cve_detalle)
	)

	CREATE TABLE articulos(
		cve_articulo uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,
		precio float not null,
		proveedor uniqueidentifier not null,

		constraint pk_aticulos primary key (cve_articulo)
	)

	CREATE TABLE proveedores (
		cve_proveedor uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,
		rfc varchar(12) not null,
		giro uniqueidentifier not null,
		direccion uniqueidentifier not null,

		constraint pk_proveedores primary key (cve_proveedor)
	)

	CREATE TABLE giros(
		cve_giro uniqueidentifier DEFAULT NEWID() not null,
		descripcion VARCHAR(50) not null,

		constraint pk_giros primary key (cve_giro)
	)

	CREATE TABLE inventario (
		cve_inventario uniqueidentifier DEFAULT NEWID() not null,
		descripcion varchar(50) not null,
		fecha date not null,
		cve_tienda uniqueidentifier not null,

		constraint pk_inventario primary key (cve_inventario)
	)

	CREATE TABLE detalle_inventario(
		cve_detalle uniqueidentifier DEFAULT NEWID() not null,
		cve_inventario uniqueidentifier not null,
		cve_articulo uniqueidentifier not null,
		existencia int not null,

		constraint pk_detalle_inventario primary key (cve_detalle)
	)

	CREATE TABLE factura(
	cve_factura uniqueidentifier DEFAULT NEWID() not null,
	cve_cliente uniqueidentifier not null,
	fecha date not null,
	cve_tienda uniqueidentifier not null,

	constraint pk_factuura primary key (cve_factura)
)


/*
creacion de relaciones 
*/
	
	/*bancos-cuenta_bancaria*/
	alter table cuentas_bancarias
	with check add constraint
	fk_bancos_cuentas_bancarias
	foreign key (cve_banco)
	references bancos (cve_banco)

	/*cuenta_bancaria-TPVS*/
	alter table TPVS
	with check add constraint
	fk_cuentas_bancarias_TPVS
	foreign key (cve_cuenta_bancaria)
	references cuentas_bancarias (cve_cuenta)

	/*caja-TPVS*/
	alter table TPVS
	with check add constraint
	fk_cajas_TPVS
	foreign key (cve_caja)
	references caja (cve_caja)

	/*estatus-TPVS*/
	alter table TPVS
	with check add constraint
	fk_estatus_TPVS
	foreign key (estatus)
	references estatus (cve_estatus)

	/*tienda-caja*/
	alter table caja
	with check add constraint
	fk_tienda_caja
	foreign key (cve_tienda)
	references tienda (cve_tienda)

	/*colonia-calle*/
	alter table calle
	with check add constraint
	fk_colonia_calle
	foreign key (cve_colonia)
	references colonia (cve_colonia)
	
	/*municipio-colonia*/
	alter table colonia
	with check add constraint
	fk_municipio_colonia
	foreign key (cve_municipio)
	references municipio (cve_municipio)

	/*estado-municipio*/
	alter table municipio
	with check add constraint
	fk_estado_municipio
	foreign key (cve_estado)
	references estado (cve_estado)

	/*pais-estado*/
	alter table estado
	with check add constraint
	fk_pais_estado
	foreign key (cve_pais)
	references pais (cve_pais)

	/*pais-direccion*/
	alter table direccion
	with check add constraint
	fk_pais_direccion
	foreign key (pais)
	references pais (cve_pais)

	/*estado-direccion*/
	alter table direccion
	with check add constraint
	fk_estado_direccion
	foreign key (estado)
	references estado (cve_estado)

	/*municipio-direccion*/
	alter table direccion
	with check add constraint
	fk_municipio_direccion
	foreign key (municipio)
	references municipio (cve_municipio)
	
	/*colonia-direccion*/
	alter table direccion
	with check add constraint
	fk_colonia_direccion
	foreign key (colonia)
	references colonia (cve_colonia)

	/*calle-direccion*/
	alter table direccion
	with check add constraint
	fk_calle_direccion
	foreign key (calle)
	references calle (cve_calle)

	/*direccion-ubicacion*/
	alter table ubicaciones
	with check add constraint
	fk_direccion_ubicaciones
	foreign key (cve_direccion)
	references direccion (cve_direccion)

	/*direccion-empleados*/
	alter table empleados
	with check add constraint
	fk_direccion_empleados
	foreign key (cve_direccion)
	references direccion (cve_direccion)

	/*estatus-empleados*/
	alter table empleados
	with check add constraint
	fk_estatus_empleados
	foreign key (cve_estatus)
	references estatus (cve_estatus)

	/*empleado-cajeros*/
	alter table cajeros
	with check add constraint
	fk_empleado_cajeros
	foreign key (cve_empleado)
	references empleados (cve_empleado)

	/*empleado-supervisor*/
	alter table supervisor
	with check add constraint
	fk_empleado_supervisor
	foreign key (cve_empleado)
	references empleados (cve_empleado)

	/*supervisor-cajeros*/
	alter table cajeros
	with check add constraint
	fk_supervisor_cajeros
	foreign key (cve_supervisor)
	references supervisor (cve_supervisor)

	/*caja-cajeros*/
	alter table cajeros
	with check add constraint
	fk_caja_cajeros
	foreign key (cve_caja)
	references caja (cve_caja)

	/*estatus-formas_pago*/
	alter table formas_pago
	with check add constraint
	fk_estatus_formas_pago
	foreign key (cve_estatus)
	references estatus (cve_estatus)

	/*ubicaciones-tienda*/
	alter table tienda
	with check add constraint
	fk_ubicaciones_tienda
	foreign key (ubicacion)
	references ubicaciones (cve_ubicaciones)

	/*tienda-ventas*/
	alter table ventas
	with check add constraint
	fk_tienda_ventas
	foreign key (cve_tienda)
	references tienda (cve_tienda)

	/*cajero-ventas*/
	alter table ventas
	with check add constraint
	fk_cajero_ventas
	foreign key (cve_cajero)
	references cajeros (cve_cajero)

	/*factura-ventas*/
	alter table ventas
	with check add constraint
	fk_factura_ventas
	foreign key (cve_factura)
	references factura (cve_factura)

	/*estatus-ventas*/
	alter table ventas
	with check add constraint
	fk_estatus_ventas
	foreign key (estatus_venta)
	references estatus_venta (cve_estatus)

	/*clientes-factura*/
	alter table factura
	with check add constraint
	fk_clientes_factura
	foreign key (cve_cliente)
	references clientes (cve_clientes)

	/*tienda-factura*/
	alter table factura
	with check add constraint
	fk_tienda_factura
	foreign key (cve_tienda)
	references tienda (cve_tienda)

	/*venta-detalle_venta*/
	alter table detalle_venta
	with check add constraint
	fk_ventas_detalle_venta
	foreign key (cve_venta)
	references ventas (cve_venta)

	/*articulos-detalle_venta*/
	alter table detalle_venta
	with check add constraint
	fk_articulos_detalle_venta
	foreign key (cve_articulo)
	references articulos (cve_articulo)

	/*formas_pago-detalle_venta*/
	alter table detalle_venta
	with check add constraint
	fk_formas_pago_detalle_venta
	foreign key (cve_pago)
	references formas_pago (cve_pago)

	/*tienda-inventario*/
	alter table inventario
	with check add constraint
	fk_tienda_inventario
	foreign key (cve_tienda)
	references tienda (cve_tienda)

	/*inventario-detalle_inventario*/
	alter table detalle_inventario
	with check add constraint
	fk_inventario_detalle_inventario
	foreign key (cve_inventario)
	references inventario (cve_inventario)

	/*articulos-detalle_inventario*/
	alter table detalle_inventario
	with check add constraint
	fk_articulos_detalle_inventario
	foreign key (cve_articulo)
	references articulos (cve_articulo)

	/*proveedores-articulos*/
	alter table articulos
	with check add constraint
	fk_proveedores_articulos
	foreign key (proveedor)
	references proveedores (cve_proveedor)

	/*giros-proveedores*/
	alter table proveedores
	with check add constraint
	fk_giros_proveedores
	foreign key (giro)
	references giros (cve_giro)

	/*direccion-clientes*/
	alter table clientes
	with check add constraint
	fk_direccion_clientes
	foreign key (direccion)
	references direccion (cve_direccion)


	