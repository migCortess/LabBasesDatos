use supermarket

/*AGREGAR Y ACTUALIZAR INFORMACION TABLAS*/

 /*AGREGAR PAISES*/
	INSERT INTO dbo.pais(descripcion)
		VALUES('MEXICO')
	INSERT INTO dbo.pais(descripcion)
		VALUES('ESTADOS UNIDOS')

 /**AGREGAR ESTADOS*/
	INSERT INTO dbo.estado(cve_pais,descripcion)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1','NUEVO LEON')
	INSERT INTO dbo.estado(cve_pais,descripcion)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1','TAMAULIPAS')

 /*AGREGAR MUNICIPIOS*/
	INSERT INTO dbo.municipio(cve_estado,descripcion)
		VALUES('B462EBF3-540A-419F-B10B-F3A6D954D469','MONTERREY')

	INSERT INTO dbo.municipio(cve_estado,descripcion)
		VALUES('B462EBF3-540A-419F-B10B-F3A6D954D469','SAN NICOLAS')

	INSERT INTO dbo.municipio(cve_estado,descripcion)
		VALUES('B462EBF3-540A-419F-B10B-F3A6D954D469','APODACA')

	INSERT INTO dbo.municipio(cve_estado,descripcion)
		VALUES('B462EBF3-540A-419F-B10B-F3A6D954D469','ESCOBEDO')

	INSERT INTO dbo.municipio(cve_estado,descripcion)
		VALUES('B462EBF3-540A-419F-B10B-F3A6D954D469','GUADALUPE')

/*AGREGAR COLONIAS*/
	INSERT INTO dbo.colonia(cve_municipio,descripcion,codigo_postal)
		VALUES('BB0A1E3B-1363-46B9-815C-4FF7CC01DC56','MORENITA MIA','64000')

	INSERT INTO dbo.colonia(cve_municipio,descripcion,codigo_postal)
		VALUES('BB0A1E3B-1363-46B9-815C-4FF7CC01DC56','ANAHUAC','66450')

	INSERT INTO dbo.colonia(cve_municipio,descripcion,codigo_postal)
		VALUES('BB0A1E3B-1363-46B9-815C-4FF7CC01DC56','CASA BELLA','66428')

	INSERT INTO dbo.colonia(cve_municipio,descripcion,codigo_postal)
		VALUES('03828503-E5E4-4400-A755-15C8A3DAE34C','CENTRO','64000')

	INSERT INTO dbo.colonia(cve_municipio,descripcion,codigo_postal)
		VALUES('BB0A1E3B-1363-46B9-815C-4FF7CC01DC56','BOSQUES DE LINDA VISTA','65365')

	INSERT INTO dbo.colonia(cve_municipio,descripcion,codigo_postal)
		VALUES('A596649C-9101-4257-9E64-10FD66582A0B','NUEVO REPUEBLO','64675')

	INSERT INTO dbo.colonia(cve_municipio,descripcion,codigo_postal)
		VALUES('10AB41B5-623B-4488-A602-551D1401F473','GIRASOLES','66987')

/*ACTUALIZAR COLONIAS*/
	update dbo.colonia SET descripcion='ROBLE' WHERE cve_colonia = 'F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF'

/*AGREGAR CALLES*/
	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF','MORENITA MIA')

	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF','ESTRELLITA')

	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF','NOCHE DE RONDA')

	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF','LAS GOLONDRINAS')

	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('ADC952F1-06DE-48B3-8426-6745EDF51921','PADRE MIER')

	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('6EE4A184-4CB7-4862-AA57-A25D3D98EA62','BARBECHO')

	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('D9158FCD-3474-43B2-A9A2-75B25FF457C1','CASA DE CORTES')

	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('BBA2BCE7-2A41-428C-BA7C-E233D7EF4300','LAS LOMAS')

	INSERT INTO dbo.calle(cve_colonia,descripcion)
		VALUES('BBA2BCE7-2A41-428C-BA7C-E233D7EF4300','VIA MONTERREY-TORREON')

/*AGREGAR DIRECCIONES*/
	INSERT INTO dbo.direccion(pais,estado,municipio,colonia,calle,numero)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1',
				'B462EBF3-540A-419F-B10B-F3A6D954D469',
				'BB0A1E3B-1363-46B9-815C-4FF7CC01DC56',
				'F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF',
				'6D6B1A8C-9999-4C84-B5AD-AE3F2FD1FD47',
				'107')
	INSERT INTO dbo.direccion(pais,estado,municipio,colonia,calle,numero)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1',
				'B462EBF3-540A-419F-B10B-F3A6D954D469',
				'03828503-E5E4-4400-A755-15C8A3DAE34C',
				'ADC952F1-06DE-48B3-8426-6745EDF51921',
				'A4C9FA97-2AB0-4601-9170-D4787F38440A',
				'354')
/**/
	INSERT INTO dbo.direccion(pais,estado,municipio,colonia,calle,numero)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1',
				'B462EBF3-540A-419F-B10B-F3A6D954D469',
				'BB0A1E3B-1363-46B9-815C-4FF7CC01DC56',
				'6EE4A184-4CB7-4862-AA57-A25D3D98EA62',
				'5A73C981-9251-4FA7-8123-CDE6E7633611',
				'1243')


	INSERT INTO dbo.direccion(pais,estado,municipio,colonia,calle,numero)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1',
				'B462EBF3-540A-419F-B10B-F3A6D954D469',
				'BB0A1E3B-1363-46B9-815C-4FF7CC01DC56',
				'F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF',
				'174788C3-B93B-412C-9146-D74B0CA96D96',
				'109')


	INSERT INTO dbo.direccion(pais,estado,municipio,colonia,calle,numero)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1',
				'B462EBF3-540A-419F-B10B-F3A6D954D469',
				'10AB41B5-623B-4488-A602-551D1401F473',
				'BBA2BCE7-2A41-428C-BA7C-E233D7EF4300',
				'A0CDD62B-4757-40C0-AE31-45F7B01809E8',
				'678')

	INSERT INTO dbo.direccion(pais,estado,municipio,colonia,calle,numero)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1',
				'B462EBF3-540A-419F-B10B-F3A6D954D469',
				'BB0A1E3B-1363-46B9-815C-4FF7CC01DC56',
				'D9158FCD-3474-43B2-A9A2-75B25FF457C1',
				'58DF0A11-D914-48A1-A12F-55A9291D8B8D',
				'900')

	INSERT INTO dbo.direccion(pais,estado,municipio,colonia,calle,numero)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1',
				'B462EBF3-540A-419F-B10B-F3A6D954D469',
				'BB0A1E3B-1363-46B9-815C-4FF7CC01DC56',
				'F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF',
				'3805608A-9897-4EBF-A53D-8AFE77383638',
				'439')

	INSERT INTO dbo.direccion(pais,estado,municipio,colonia,calle,numero)
		VALUES('6AD56A61-F3CA-41B8-8915-91A5BB5917F1',
				'B462EBF3-540A-419F-B10B-F3A6D954D469',
				'BB0A1E3B-1363-46B9-815C-4FF7CC01DC56',
				'F47B8F0E-2A0E-41EE-8AF3-AA4A48B6EDAF',
				'15A40E96-0E9B-4189-93CB-9087E321C4C4',
				'1000')


/*AGREGAR GIROS*/
	INSERT dbo.giros(descripcion)
		values('ALIMENTOS')

/*AGREGAR PROVEEDORES*/
	INSERT dbo.proveedores(descripcion,rfc,giro,direccion)
		VALUES('ALIMENTOS Y SERVICIOS S.A DE C.V','ASA781224CX4','108D936B-AEDE-4BED-A28A-8A5F94912FFC','C03CC747-AD1D-4A21-ABE9-748C94068DEE')

/*AGREGAR ARTICULOS*/
	INSERT dbo.articulos(descripcion,precio,proveedor)
		VALUES('TORTILLA DE HARINA 20PZ',14.50,'E2AF998E-A0CE-48AD-8013-141016228C7F')
	INSERT dbo.articulos(descripcion,precio,proveedor)
		VALUES('LECHE ENTERA ',16.00,'E2AF998E-A0CE-48AD-8013-141016228C7F')

/*AGREGANDO 2 CAMPOS MAS A ARTICULOS*/

	ALTER TABLE articulos
	 add marca varchar(20)

	ALTER TABLE articulos
	add UM varchar(20)

/*actualizando articulos*/
	update dbo.articulos SET marca='TIA ROSA' WHERE cve_articulo = '01D25FF2-FF7F-4256-9CF5-43A22F5441FE'
	update dbo.articulos SET UM='PAQUETE' WHERE cve_articulo = '01D25FF2-FF7F-4256-9CF5-43A22F5441FE'

	update dbo.articulos SET marca='LALA' WHERE cve_articulo = '0B7BF353-84E1-4556-AFCC-394C0C472A15'
	update dbo.articulos SET UM='LITRO' WHERE cve_articulo = '0B7BF353-84E1-4556-AFCC-394C0C472A15'

/*AGREGANDO ESTATUS*/
	INSERT dbo.estatus(descripcion)
		VALUES('ACTIVO')
	INSERT dbo.estatus(descripcion)
		VALUES('INACTIVO')

/*AGREGANDO EMPLEADOS*/
	INSERT dbo.empleados(nombre,apellido_paterno,apellido_materno,fecha_ingreso,fecha_nacimiento,cve_direccion,cve_estatus)
		VALUES('HECTOR','CORTES','RAMOS','2000/12/10','1990/01/13','6AA9D7A4-3930-4AB4-ACEF-944C8EC937B5','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0')
	INSERT dbo.empleados(nombre,apellido_paterno,apellido_materno,fecha_ingreso,fecha_nacimiento,cve_direccion,cve_estatus)
		VALUES('MIGUEL','CORTES','RAMOS','1993/05/24','1970/11/17','26A1D860-0B47-49AF-85FE-5935BBADE1FC','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0')
	INSERT dbo.empleados(nombre,apellido_paterno,apellido_materno,fecha_ingreso,fecha_nacimiento,cve_direccion,cve_estatus)
		VALUES('GABRIELA','CORTES','RAMIREZ','2012/10/10','1992/09/28','43F904E3-7328-4F4F-9794-62F1242FD082','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0')
	INSERT dbo.empleados(nombre,apellido_paterno,apellido_materno,fecha_ingreso,fecha_nacimiento,cve_direccion,cve_estatus)
		VALUES('RUBY','RAMIREZ','CASTILLO','2007/01/10','1988/02/02','24D23B9B-0EA2-4B25-A552-91A6E22CA1AF','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0')
	INSERT dbo.empleados(nombre,apellido_paterno,apellido_materno,fecha_ingreso,fecha_nacimiento,cve_direccion,cve_estatus)
		VALUES('MAURICIO','CARDENAS','PEREZ','2016/03/07','1979/06/15','28A93BCB-B767-4032-B3D5-B28CC98E8F29','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0')
	INSERT dbo.empleados(nombre,apellido_paterno,apellido_materno,fecha_ingreso,fecha_nacimiento,cve_direccion,cve_estatus)
		VALUES('PABLO','REYES','LERMA','2013/08/30','1960/08/13','6ACA100C-6140-41E2-8713-D54530AEAC60','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0')

/*ACTUALIZAR INFORMACION EMPLEADOS*/
	update dbo.empleados SET fecha_ingreso='2005/12/10' WHERE cve_empleado = '99CEED39-1FD3-4020-BC1F-18385C789113'


/*AGREGAR SUPERVISORES*/

	INSERT dbo.supervisor(cve_empleado)
		values('65B2ECDC-9264-498C-B1FF-5F10E84363E2')

/*AGREGAR UBICACIONES*/
	INSERT DBO.ubicaciones(descripcion,cve_direccion)
		VALUES('MATRIZ','A626E41A-65F7-4057-BF35-245C7241FFC0')

/*AGREGAR TIENDA*/
	INSERT dbo.tienda(descripcion,ubicacion,rfc)
		values('SUPER CORTES','F3726BFB-F8DD-4A3D-BA6D-37C07332E9CE','HMC500818DL4')

/*agregar cajas*/

	INSERT dbo.caja(descripcion,cve_tienda)
		values('01','41530666-AB45-4FCD-8C4F-5F854D3F266F')
	INSERT dbo.caja(descripcion,cve_tienda)
		values('02','41530666-AB45-4FCD-8C4F-5F854D3F266F')
	INSERT dbo.caja(descripcion,cve_tienda)
		values('03','41530666-AB45-4FCD-8C4F-5F854D3F266F')
	INSERT dbo.caja(descripcion,cve_tienda)
		values('04','41530666-AB45-4FCD-8C4F-5F854D3F266F')
	INSERT dbo.caja(descripcion,cve_tienda)
		values('05','41530666-AB45-4FCD-8C4F-5F854D3F266F')
	INSERT dbo.caja(descripcion,cve_tienda)
		values('06','41530666-AB45-4FCD-8C4F-5F854D3F266F')

/*AGREGAR CAJEROS*/

	INSERT dbo.cajeros(cve_empleado,cve_caja,cve_supervisor)
		VALUES('99CEED39-1FD3-4020-BC1F-18385C789113','2668B618-2A56-42BA-98AF-B5B65D8E95DB','95B7F5E5-402B-4050-9C5A-99399DED630F')
	INSERT dbo.cajeros(cve_empleado,cve_caja,cve_supervisor)
		VALUES('5E8765EB-8944-4085-8971-227CCFE20C06','BC67F5AE-5600-4980-BC9D-0B076324489C','95B7F5E5-402B-4050-9C5A-99399DED630F')
	INSERT dbo.cajeros(cve_empleado,cve_caja,cve_supervisor)
		VALUES('77576FCD-EC35-4FC5-B538-22A6C266D45A','F3E67615-FF18-47E6-9AC9-EE460D0B2774','95B7F5E5-402B-4050-9C5A-99399DED630F')
	INSERT dbo.cajeros(cve_empleado,cve_caja,cve_supervisor)
		VALUES('34423608-228C-4418-ABBB-5096CACE0447','CC95CBA3-B57C-4A96-9097-6A02FFC41343','95B7F5E5-402B-4050-9C5A-99399DED630F')
	INSERT dbo.cajeros(cve_empleado,cve_caja,cve_supervisor)
		VALUES('979B770D-F23C-4EF3-815E-BCB2CB4AF9E1','B73D4BAF-588B-498E-B49A-9BAE2AE38FEB','95B7F5E5-402B-4050-9C5A-99399DED630F')

/*AGREGANDO BANCOS*/

	INSERT dbo.bancos(nombre)
		VALUES('BANORTE')
	INSERT dbo.bancos(nombre)
		VALUES('BANAMEX')
	INSERT dbo.bancos(nombre)
		VALUES('AFIRME')
	INSERT dbo.bancos(nombre)
		VALUES('BAJIO')

/*AGREANDO CUENTAS-BANCARIAS*/
	INSERT dbo.cuentas_bancarias(cve_banco,descripcion)
		VALUES('66B9BA27-4C4F-4B86-A2FB-1D6CD2D67C67','12345678900')
	INSERT dbo.cuentas_bancarias(cve_banco,descripcion)
		VALUES('66B9BA27-4C4F-4B86-A2FB-1D6CD2D67C67','099887765466')
	INSERT dbo.cuentas_bancarias(cve_banco,descripcion)
		VALUES('26871CBE-A765-4BFA-878F-2C20A93DC302','5565678878778')
	INSERT dbo.cuentas_bancarias(cve_banco,descripcion)
		VALUES('BA72CA26-0B07-4DCD-AD73-2DA5F5AA4FB8','1122456787878')
	INSERT dbo.cuentas_bancarias(cve_banco,descripcion)
		VALUES('BA72CA26-0B07-4DCD-AD73-2DA5F5AA4FB8','009987664455533')
	INSERT dbo.cuentas_bancarias(cve_banco,descripcion)
		VALUES('9E020B1A-F31A-4282-B260-BC3E79DB9564','099778545322456')

/*AGREGANDO TPVS*/
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('2668B618-2A56-42BA-98AF-B5B65D8E95DB','34EB8C95-6704-4244-BE56-07FE6065B5C8','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000001')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('2668B618-2A56-42BA-98AF-B5B65D8E95DB','1D671FF0-499C-43A1-AE95-0D99864FCF42','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000002')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('BC67F5AE-5600-4980-BC9D-0B076324489C','34EB8C95-6704-4244-BE56-07FE6065B5C8','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000003')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('BC67F5AE-5600-4980-BC9D-0B076324489C','1D671FF0-499C-43A1-AE95-0D99864FCF42','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000004')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('F3E67615-FF18-47E6-9AC9-EE460D0B2774','4F5AAF58-910E-4C71-90A2-BEE62791FD0C','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000005')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('F3E67615-FF18-47E6-9AC9-EE460D0B2774','20E8572D-C85D-414E-8872-59A89EB0ED2E','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000006')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('CC95CBA3-B57C-4A96-9097-6A02FFC41343','4F5AAF58-910E-4C71-90A2-BEE62791FD0C','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000007')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('B73D4BAF-588B-498E-B49A-9BAE2AE38FEB','20E8572D-C85D-414E-8872-59A89EB0ED2E','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000008')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('45EA391F-47A2-424F-B608-34C15AB8608B','077974AA-926F-42C4-A0F2-51A9E7EE7077','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000009')
	INSERT dbo.TPVS(cve_caja,cve_cuenta_bancaria,estatus,numero_terminal)
		VALUES('45EA391F-47A2-424F-B608-34C15AB8608B','330EF22A-1E28-480B-BDCE-5802358442FC','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0','000010')

/*AGREGANDO ESTATUS VENTA*/

	INSERT dbo.estatus_venta(descripcion)
		VALUES('REALIZADA')
	INSERT dbo.estatus_venta(descripcion)
		VALUES('CANCELADA')


/*AGREGANDO FORMAS DE PAGO*/
	INSERT dbo.formas_pago(descripcion,cve_estatus)
		VALUES('EFECTIVO','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0')
	INSERT dbo.formas_pago(descripcion,cve_estatus)
		VALUES('TARJETA','807D8296-47EE-4BEE-AB70-81B3AA3DFAE0')
	INSERT dbo.formas_pago(descripcion,cve_estatus)
		VALUES('VALES','1637B906-29FF-4139-8159-416C8D34343B')
	INSERT dbo.formas_pago(descripcion,cve_estatus)
		VALUES('CUPONES','1637B906-29FF-4139-8159-416C8D34343B')

/*ELIMINAR INFORMACION A TABLAS*/

DELETE dbo.pais where cve_pais = '7E12F503-61B8-4E4F-B1EF-3A4946E2517C'
DELETE dbo.estado where cve_estado = '2F707E16-EF8C-4E08-A2CD-FEF9509F8FA6'
DELETE dbo.municipio where cve_municipio = '4A09782E-73AB-493E-92CF-9B0AED6C8C6F'
DELETE dbo.TPVS where cve_caja = '45EA391F-47A2-424F-B608-34C15AB8608B'
DELETE dbo.caja where cve_caja = '45EA391F-47A2-424F-B608-34C15AB8608B'
DELETE dbo.formas_pago where cve_pago = '9B994046-2BB6-47D8-A561-EDA8E1264CBE'