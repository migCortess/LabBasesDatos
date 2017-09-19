/*PRACTICA 3 
HMCR
1477355
migcortes@gmail.com*/
use PUNTOVENTA
	CREATE TABLE Empleados(
		Id uniqueidentifier not null,
		NumeroEmpleado int not null,
		Nombre varchar not null,
		ApellidoPaterno varchar not null,
		FechaNacimiento date not null,
		Edad as datediff(year,FechaNacimiento,getdate()),
		FechaIngreso date not null,
		DiasAntiguedad as datediff(day,FechaIngreso,getdate()),

		constraint pk_Empleados primary key (id)
	)
	CREATE TABLE DetalleVentaIAP(
		Id uniqueidentifier not null,
		IdVenta uniqueidentifier not null,
		IdIAP uniqueidentifier not null,
		Cantidad int not null,
		PrecioUnitario decimal not null,
		Subtotal decimal not null,

		constraint pk_DetalleVentaIAP primary key (Id)
	)
	CREATE TABLE Ventas(
		Id uniqueidentifier not null,
		IdEmpleadoVenta uniqueidentifier not null,
		IdEstatus uniqueidentifier not null,
		Folio int not null,
		Subtotal decimal not null,
		IVA decimal not null,
		Total decimal not null,
		FechaVenta as getdate(),

		constraint pk_Ventas primary key (Id)
	)
	CREATE TABLE EstatusVenta(
		Id uniqueidentifier not null,
		Nombre varchar not null,

		constraint pk_EstatusVenta primary key (Id)
	)
	CREATE TABLE Productos(
		Id uniqueidentifier not null,
		CodigoBarras varchar not null,
		Nombre varchar not null,
		PrecioBase int not null,

		constraint pk_Productos primary key (Id)
	)
	CREATE TABLE InventarioAlmacenProductos(
		Id uniqueidentifier not null,
		IdAlmacen uniqueIdentifier not null,
		IdProducto uniqueidentifier not null,
		Cantidad int not null,

		constraint pk_IAP primary key (Id)
	)
	CREATE TABLE Almacenes(
		Id uniqueidentifier not null,
		Nombre varchar not null,

		constraint pk_Almacenes primary key (id)
	)




/*
creacion de relaciones 
*/

use PUNTOVENTA
	
	/*ventas-empleados*/
	alter table Ventas
	with check add constraint
	fk_Ventas_Empleados
	foreign key (IdEmpleadoVenta)
	references Empleados (Id)

	/*ventas-estatus*/
	alter table Ventas
	with check add constraint
	fk_Ventas_Estatus
	foreign key (IdEstatus)
	references EstatusVenta (Id)

	/*DetalleVenta-Ventas*/
	alter table DetalleVentaIAP
	with check add constraint
	fk_DetalleVentaIAP_Ventas
	foreign key (IdVenta)
	references Ventas (Id)

	/*DetalleVenta-IAP*/
	alter table DetalleVentaIAP
	with check add constraint
	fk_DetalleVentaIAP_IAP
	foreign key (IdIAP)
	references InventarioAlmacenProductos (Id)

	/*IAP-productos*/
	alter table InventarioAlmacenProductos
	with check add constraint
	fk_IAP_Productos
	foreign key (IdProducto)
	references Productos (Id)
	
	/*IAP-Almacenes*/
	alter table InventarioAlmacenProductos
	with check add constraint
	fk_IAP_Almacenes
	foreign key (IdAlmacen)
	references Almacenes (Id)
