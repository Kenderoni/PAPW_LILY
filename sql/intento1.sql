use point;

drop table sigue;

-- CREAR TABLA PAIS
create table pais(

	id_pais int not null auto_increment,
    nombre_pais varchar(15),
    
    primary key (id_pais)
);


-- CREAR TABLA PREGUNTA DE SEGURIDAD
create table pregunta(

	id_pregunta int not null auto_increment,
    descripcion enum ('1','2','3','4','5'),
    
    primary key (id_pregunta)
);

-- CREAR TABLA USUARIO
create table usuario(

	id_usuario int not null auto_increment,
    nombre_usuario varchar(10) not null,
    contrasenia varcharacter(8) not null,
	foto_perfil blob,
    foto_portada blob,
    genero enum ('H','M','S'),
    direccion varchar(50),
    email varchar(25),
    telefono int(10), not null
    fecha_nacimiento date not null,
    respuesta varchar (30),
    
    id_pais int not null,
    id_pregunta int not null,
    
    
    primary key (id_usuario),
    foreign key (id_pais) references pais(id_pais),
    foreign key (id_pregunta) references pregunta(id_pregunta)
);

create table usuario(
	id_usuario int not null auto_increment,
    nombre_usuario varchar(10) not null,
    contrasenia varcharacter(8) not null,
	email varchar(25),
    telefono int(10), not null,
    fecha_nacimiento date not null
)

-- CREAR TABLA ADMINISTRADOR
create table administrador(

	id_administrador int not null auto_increment,
    nombre_usuario varchar(10) not null,
    contrasenia varcharacter(8) not null,
	foto_perfil blob,
    foto_portada blob,
    genero enum ('H','M','S'),
    direccion varchar(50),
    email varchar(25),
    telefono int(10),
    fecha_nacimiento date not null,
    respuesta varchar (30),
    
    id_pais int not null,
    
    
    primary key (id_administrador),
    foreign key (id_pais) references pais(id_pais)
);


-- CREAR TABLA RAZONES
create table razon(

	id_razon int not null auto_increment,
    descripcion set ('1','2','3','4','5','6','7','8','9','10'),
    
    primary key (id_razon)
);


-- CREAR TABLA SECCION/CATEGORIA
create table seccion(

	id_seccion int not null auto_increment,
    nombre_seccion varchar(15),
    
    primary key (id_seccion)
);


-- CREAR TABLA VIDEO
create table video(

	id_video int not null auto_increment,
    nombre_video varchar(15),
    duracion timestamp,
    archivo blob,
    path varchar(50),
    
    id_seccion int not null,
    
    primary key (id_video),
    foreign key (id_seccion) references seccion(id_seccion)
);

-- NUEVA TABLA USUARIO SIGUE A USUARIO
create table sigue(

	id_sigue int not null auto_increment,
	id_usuario int not null,
    id_usuario2 int not null,

    
    primary key (id_sigue),
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_usuario2) references usuario(id_usuario)
);

-- NUEVA TABLA BLOQUEO DE USUARIO, ADMINISTRADOR Y RAZON
create table bloqueo(

	id_bloqueo int not null auto_increment,
	id_usuario int not null,
    id_administrador int not null,
    id_razon int not null,
    tiempo datetime,
    
    primary key (id_bloqueo),
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_administrador) references administrador(id_administrador),
    foreign key (id_razon) references razon(id_razon)
);

-- NUEVA TABLA RESPORTE DE USUARIO A VIDEO POR RAZON
create table reporte(

	id_reporte int not null auto_increment,
	id_usuario int not null,
    id_video int not null,
    id_razon int not null,
    
    primary key (id_reporte),
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_video) references video(id_video),
    foreign key (id_razon) references razon(id_razon)
);

-- NUEVA TABLA COMENTARIO DE USUARIO A VIDEO
create table comentario(

	id_comentario int not null auto_increment,
	id_usuario int not null,
    id_video int not null,
    descripcion varchar(200),
    fecha date,
    hora time,
    
    primary key (id_comentario),
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_video) references video(id_video)
);

-- NUEVA TABLA ME GUSTA DE USUARIO A VIDEO
create table gusta(

	id_gusta int not null auto_increment,
	id_usuario int not null,
    id_video int not null,
    
    primary key (id_gusta),
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_video) references video(id_video)
);

-- NUEVA TABLA FAVORITO DE USUARIO A VIDEO
create table favorito(

	id_favorito int not null auto_increment,
	id_usuario int not null,
    id_video int not null,
    
    primary key (id_favorito),
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_video) references video(id_video)
);

-- NUEVA TABLA USUARIO SUBE VIDEO
create table sube(

	id_sube int not null auto_increment,
	id_usuario int not null,
    id_video int not null,
    fecha timestamp,
    
    primary key (id_sube),
    foreign key (id_usuario) references usuario(id_usuario),
    foreign key (id_video) references video(id_video)
);