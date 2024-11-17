create database administacion_ventas
go 
use administacion_ventas
go 
create table sector_venta(
id_sector_venta varchar(50) primary key,
canal_1 varchar(50),
canal_2 varchar(50),
cod_zona varchar(50),
zona varchar(50)
)
go
create table lugar_compra(
id_lugar_compra varchar(50) primary key,
n_region varchar(50),
region varchar(50),
provincia varchar(50),
comuna varchar(50),
ciudad varchar(50)
)
go
create table vendedor(
id_vendedor varchar(50) primary key,
cod_vendedor varchar(50),
cod_persona varchar(50),
vendedor varchar(50),
supervisor varchar(50),
jefe_rional varchar(50),
subgerente varchar(50)
)
go
create table producto (
id_proctucto varchar(50) primary key,
invtid varchar(50),
tru_codigo varchar(50),
descr_producto varchar(50),
cod_marca varchar(50),
desr_marca varchar(50),
categoria varchar(50),
cod_seccion varchar(50),
descr_seccion varchar(50),
weight varchar(50), 
volume varchar(50)
)
go
create table fecha(
id_fecha varchar(50) primary key,
año varchar(50),
mes_nombre varchar(50),
mes varchar(50),
semestre varchar(50),
trismetre varchar(50),
semana varchar(50),
dia_nombre varchar(50),
dia varchar(50),
fecha_completa varchar(50)
)
go
create table venta(
num_nota_venta varchar(50),
not_cod_cd varchar(50),
MontoVenta varchar(50),
MontoCosto varchar(50),
Ganancia varchar(50),
Unidades varchar(50),
Volumen varchar(50),
Kilos varchar(50),
id_producto varchar(50) foreign key references producto(id_proctucto),
id_lugar_compra varchar(50) foreign key references lugar_compra(id_lugar_compra), 
id_sector_venta varchar(50) foreign key references sector_venta(id_sector_venta),
id_vendedor varchar(50) foreign key references vendedor(id_vendedor),
id_fecha varchar(50) foreign key references fecha(id_fecha)
)

