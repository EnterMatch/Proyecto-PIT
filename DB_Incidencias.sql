DROP DATABASE IF EXISTS db_incidencias;
CREATE DATABASE db_incidencias;
USE db_incidencias;

CREATE TABLE tb_cliente(
	id_cliente				INTEGER			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente			VARCHAR(30)		NOT NULL,
    email_cliente			VARCHAR(100)	NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE tb_empleado(
	id_empleado				INTEGER			NOT NULL PRIMARY KEY,
    id_rol					INTEGER			NOT NULL,
    id_grupo				INTEGER			NOT NULL
);

CREATE TABLE tb_empresa(
	id_empresa				INTEGER			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    raz_soc_empresa			VARCHAR(50)		NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE tb_empresa_cliente(
	id_empresa				INTEGER			NOT NULL,
    id_cliente				INTEGER			NOT NULL
);

CREATE TABLE tb_estado(
	id_estado				INTEGER			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descrip_estado			VARCHAR(50)		NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE tb_grupo(
	id_grupo				INTEGER			NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_grupo			VARCHAR(50)		NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE tb_incidencia(
	id_incidencia			INTEGER			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descrip_incidencia		VARCHAR(200)	NOT NULL,
    fec_ing_incidencia		DATETIME		NOT NULL,
    resumen_incidencia		VARCHAR(500)	NOT NULL,
    solucion_incidencia		VARCHAR(1000)	NOT NULL,
    id_cliente				INTEGER			NOT NULL,
    id_grupo				INTEGER			NOT NULL,
    id_operador				INTEGER			NOT NULL,
    id_empleado				INTEGER			NOT NULL,
    id_estado				INTEGER			NOT NULL,
    id_prioridad			INTEGER			NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE tb_operador(
	id_operador				INTEGER			NOT NULL PRIMARY KEY
);

CREATE TABLE tb_persona(
	id_persona				INTEGER			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_persona			VARCHAR(50)		NOT NULL,
    ape_pat_persona			VARCHAR(50)		NOT NULL,
    ape_mat_persona			VARCHAR(50)		NOT NULL,
    email_persona			VARCHAR(70)		NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE tb_prioridad(
	id_prioridad			INTEGER			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descrip_prioridad		VARCHAR(50)		NOT NULL
)AUTO_INCREMENT = 1;


CREATE TABLE tb_rol(
	id_rol					INTEGER			NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descrip_rol				VARCHAR(50)		NOT NULL
)AUTO_INCREMENT = 1;

CREATE TABLE tb_usuario(
	id_usuario				INTEGER			NOT NULL PRIMARY KEY,
    nombre_usuario			VARCHAR(50)		NOT NULL UNIQUE,
    clave_usuario			VARCHAR(50)		NOT NULL
);

-- FOREIGN KEYS--

ALTER TABLE TB_EMPLEADO ADD FOREIGN KEY(id_empleado) REFERENCES tb_persona(id_persona),
						ADD FOREIGN KEY(id_rol) REFERENCES tb_rol(id_rol),
						ADD FOREIGN KEY(id_grupo) REFERENCES tb_grupo(id_grupo);

ALTER TABLE TB_EMPRESA_CLIENTE 	ADD FOREIGN KEY (id_empresa) REFERENCES tb_empresa (id_empresa),
								ADD FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente);

ALTER TABLE TB_INCIDENCIA 	ADD FOREIGN KEY (id_cliente) REFERENCES tb_cliente(id_cliente),
							ADD FOREIGN KEY (id_grupo) REFERENCES tb_grupo(id_grupo),
							ADD FOREIGN KEY (id_operador) REFERENCES tb_operador(id_operador),
							ADD FOREIGN KEY (id_empleado) REFERENCES tb_empleado(id_empleado),
							ADD FOREIGN KEY (id_estado) REFERENCES tb_estado(id_estado),
							ADD FOREIGN KEY (id_prioridad) REFERENCES tb_prioridad(id_prioridad);

ALTER TABLE TB_OPERADOR ADD FOREIGN KEY(id_operador) REFERENCES tb_persona(id_persona);

ALTER TABLE TB_USUARIO ADD FOREIGN KEY (id_usuario) REFERENCES tb_persona(id_persona);