

CREATE TABLE TipoDeClientes (
ID smallint not null PRIMARY KEY IDENTITY (1,1),
TIPO varchar(30) not null unique , 
)
GO

CREATE TABLE Clientes(
ID SMALLINT not null PRIMARY KEY IDENTITY (1,1),
Razon_Social varchar(60) not null,
CUIT bigint not null unique,
TipoDeCliente smallint not null foreign key references TipoDeClientes(ID),
Mail varchar (30) null,
Telefono bigint null,
Celular bigint null,
)
GO

CREATE TABLE Proyectos(
IDproyecto SMALLINT not null PRIMARY KEY IDENTITY (1,1),
Nombre varchar (30) not null,
Descripcion varchar (521) null,
IDcliente SMALLINT not null foreign key references Clientes (ID),
Fecha_Inicio date not null,
Fecha_Fin date null,
CostoProyecto money not null check (CostoProyecto >=0),
Estado bit not null default (1),
)