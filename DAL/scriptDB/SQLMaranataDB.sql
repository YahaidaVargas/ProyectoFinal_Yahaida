

create table dbo.Empleados(
IdEmpleado int primary key identity (1,1) not null,
Nombre varchar(40) null,
Apellido varchar(40),
Direccion varchar(100) null,
Telefono varchar(12) null,
Celular varchar(12),
Cedula varchar (13),
Fecha varchar null,
)
go

create table dbo.Usuarios(
IdUsuario int primary key identity (1,1) not null,
IdEmpleado int constraint fk_Empleados_Usuarios foreign key  references Empleados(IdEmpleado)on delete cascade on update cascade,
Usuario varchar (30),
Email varchar (30),
Clave varchar(30),
Nivel varchar(30),
Creando datetime default getdate() null
)
go

create table dbo.Parientes(
IdParientes int primary key identity (1,1) not null,
IdEstudiantes int null,
Parentesco varchar(30) null,
Nombres varchar (50) null,
Prefesion varchar (50) null,
Direccion varchar (50) null,
Telefono varchar (12) null,
Cedula varchar (13) null,
Pasatiempo varchar (50) null,
Responsable bit null,
)
go

create table dbo.Inscripcion(
IdInscripcion int primary Key identity(1,1) not null,
Fecha varchar(30) null,
IdEstudiantes int null,
IdParientes int null,
IdDatosSalud int null,
IdDatosAcademicos int null,
IdCursos int null,
IdDocumentosRecibidos int null,
)
go

create table dbo.Estudiantes(
IdEstudiantes int primary key identity (1,1) not null,
IdCursos int null,
Fecha varchar(30) null,
Matricula varchar(40) null,
Nombre varchar (50) null,
Apellido varchar(50),
FechaNacimento date null,
Religion varchar(50) null,
LugarNacimiento varchar(60) null,
DeporteOpasatiempo varchar (50) null,
Foto varchar (50) null,

)
go

create table dbo.DocumentosRecibidos(
IdDocumentosRecibidos int primary key identity (1,1) not null,
IdEstudiantes int null,
ActaNacimiento bit null,
CartonNotas bit null,
CertificadoGrados bit null,
CerficadoOctavo bit null,
CerticadoMedico bit null,
CartaBuenaConducta bit null,
CopiaTarjetaVacuna bit null,
)
go

create table dbo.DatosSalud(
IdDatosSalud int primary key identity (1,1) not null,
IdEstudiantes int null,
Enfermedades varchar (50) null,
Alergias varchar (50) null,
TratamientosMedicos varchar(50) null,
)
go

create table dbo.DatosAcademicos(
IdDatosAcademicos int primary key identity (1,1) not null,
IdEstudiante int null, 
GradoActual varchar(30) null,
GradoAnterior varchar(30) null,
EscuelaAnterior varchar(30) null,
)
go

create table dbo.Cursos(
IdCursos int primary key identity (1,1) not null,
Grados varchar (40) null,
Nivel varchar (40) null,
Cupo int null,
)
go

create table dbo.Cobros(
IdCobros int primary key identity(1,1) not null,
IdInscripcion int null,
Fecha date null,
Monto int null,
Descuento int null,
FormaDePago varchar(50) null,
Total int null,
)
go



create table dbo.Materias(
IdMaterias int primary key identity (1,1) not null,
IdEmpleado int not null,
Materias varchar(30)null,
)
go



create table dbo.CobrosDetalle(
IdCobrosDetalle int primary key identity(1,1) not null,
IdCobros int not null,
FechaMens date not null,
Monto int null,
Descripcion varchar(50) null,
DescuentoCobrosDetalle int null,
FormaPago varchar(30) null,
Total int null, 
)
go

create table dbo.Empleados_Curso (
IdEmpleadoCurso int primary key identity(1,1) not null,
IdEmpleado int not null,
IdCursos int not null
)
go

create table dbo.ResponsableCuenta(
IdResponsable int primary key identity (1,1) not null,
IdEstudiantes int not null,
Nombres varchar(50) not null,
Cedula varchar(13) not null,
Telefonos varchar (12)null,
Direccion varchar(40) null,
Email varchar(40) null,
)
go

create table dbo.Materias(
IdMaterias int primary key identity (1,1) not null,
IdEmpleado int not null,
Materias varchar(30),
)

Create table dbo.Tareas(
IdTareas int primary key identity (1,1) not null,
IdMaterias int not null,
NumeroTarea int not null,
Fecha date null,
FechaEntrega date null,
Tarea varchar(100) null,
Actividades varchar(100) not null,
Activo  bit null,
)
go


alter table
Inscripcion 
add constraint fk_IdEstudiantes
FOREIGN key(IdEstudiantes) references Estudiantes(IdEstudiantes)
on delete cascade 
on update cascade; 
go

alter table
Inscripcion 
add constraint fk_Inscripcion_Parientes
FOREIGN key(IdParientes) references Parientes(IdParientes)
on delete cascade 
on update cascade; 
go

alter table
Inscripcion 
add constraint fk_Inscripcion_DatosSalud
FOREIGN key(IdDatosSalud) references DatosSalud(IdDatosSalud)
on delete cascade 
on update cascade; 
go

alter table 
Inscripcion 
add constraint fk_Inscripcion_DatosAcademicos
foreign key (IdDatosAcademicos) references DatosAcademicos(IdDatosAcademicos)
on delete cascade 
on update cascade;
go

alter table 
Inscripcion 
add constraint fk_Inscripcion_Cursos
foreign key (IdCursos) references Cursos(IdCursos)
on delete cascade
on update cascade;
go 

alter table 
Inscripcion 
add constraint fk_Inscripcion_Documentos
foreign key (IdDocumentosRecibidos) references DocumentosRecibidos(IdDocumentosRecibidos)
on delete cascade
on update cascade;
go 

alter table
Estudiantes 
add constraint fk_Estudiantes_Cursos
foreign key (IdCursos) references Cursos(IdCursos)
on delete no action
on update no action;
go

alter table 
Cobros 
add constraint fk_Cobros_Inscripcion
foreign key (IdInscripcion) references Inscripcion(IdInscripcion)
on delete no action 
on update no action;
go

alter table 
CobrosDetalle
add constraint fk_CobrosDetalle_Cobros
foreign key (IdCobros) references Cobros(IdCobros)
on delete cascade 
on update cascade;
go

alter table 
DatosAcademicos
add constraint fk_DatosAcademicos_Estudiantes
foreign key (IdEstudiante) references Estudiantes(IdEstudiantes)
on delete no action
on update no action;
go

alter table 
DatosSalud
add constraint fk_DatosSalud_Estudiantes
foreign key (IdEstudiantes) references Estudiantes(IdEstudiantes)
on delete no action
on update no action;
go

alter table 
DocumentosRecibidos
add constraint fk_DocumentosRecibidos_Estudiantes
foreign key (IdEstudiantes) references Estudiantes(IdEstudiantes)
on delete no action
on update no action;
go

alter table 
Parientes 
add constraint fk_Parientes_Estudiantes
foreign key (IdEstudiantes) references Estudiantes(IdEstudiantes)
on delete no action
on update no action;
go

alter table 
Empleados_Curso 
add constraint fk_Empleado_Curso
foreign key (IdEmpleado) references Empleados(IdEmpleado)
on delete cascade
on update cascade;
go

alter table 
Empleados_Curso 
add constraint fk_Curso_Empleados
foreign key (IdCursos) references Cursos(IdCursos)
on delete cascade
on update cascade;
go

alter table 
ResponsableCuenta
add constraint fk_ResponsableCuenta_Estudiantes
foreign key (IdEstudiantes) references Estudiantes(IdEstudiantes)
on delete cascade
on update cascade;
go

alter table 
Materias 
add constraint fk_Empleados_Materias
foreign key (IdEmpleado) references Empleados(IdEmpleado)
on delete cascade 
on update cascade;
go

alter table
Tareas 
add constraint fk_Materias_Tareas
FOREIGN key(IdMaterias) references Materias(IdMaterias)
on delete cascade 
on update cascade; 
go
