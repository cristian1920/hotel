create database final
use final

create table ingreso(
codigoIng int primary key not null,
Nombreues varchar(20) not null,
Apellido varchar(20) not null,
Edad int not null,
Sexo varchar(2) not null,
FechaIngreso varchar(20),
FechaSalida varchar(20),
HoraRegistro varchar(20),
Equipaje varchar(3) not null,
NumNiños int  not null,
NumAdultos int not null
);
go
/*
por si presiona boton no en la pagina
*/
INSERT INTO ingreso VALUES
(0,'NO','NO',0,'NO','NO','NO','NO','NO',0,0);
GO

create table habitaciones(
CodigoHab int primary key,
Descripcion varchar(32),
Tipo varchar(10) ,
Estado varchar(20) ,
idhuesped int foreign key(idhuesped) references ingreso (codigoIng) on delete cascade on update cascade ,
);
go


/*
esto por si el cliente no es huesped
*/
INSERT INTO habitaciones VALUES
(0,'NO','NO','NO',0);
GO

create table inventarioHab(
codigoArti int primary key ,
NomArticulo varchar(20) ,
DescripcionArt varchar(50) ,
cantidad int ,
idhab int foreign key(idhab) references habitaciones(CodigoHab) on delete cascade on update cascade
);
go


create table reserva(
NumReserva int primary key,
FechaReserva varchar(20),
FechaIngreso varchar(20),
FechaSalida varchar(20),
Estado varchar(15) ,
NombrePer varchar(15) ,
ApellidoPer varchar(15) ,
Cedula varchar(20) ,
Telefono decimal(10,0),
NombreFun varchar(15) ,
ApellidoFun varchar(15) ,
);
go

create table salida(
idfactura int identity primary key ,
descripcionConsu varchar(50),
valorcancelar decimal(10,0),
detellecobro varchar(50) ,
valorcobro decimal(10,0),
totalcancelar decimal(10,0)
);
go

create table servicios(
idservicio int identity primary key not null,
Nomservicio varchar(20) not null,
ValorServicio decimal(10,0) not null,
);
go

create table empleados(
idempleado int primary key not null,
Nomempleado varchar(15) not null,
ApeEmpleado varchar(15) not null,
cargo varchar(15) not null,
);
go

select * from ingreso
select * from habitaciones
select * from inventarioHab
select * from reserva
select * from salida
select * from servicios