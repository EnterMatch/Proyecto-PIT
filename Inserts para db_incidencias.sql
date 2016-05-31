insert into tb_rol (descrip_rol) values
/* 1 */('Jefe de equipo'),
/* 2 */('Técnico'),
/* 3 */('Especialista');

insert into tb_grupo(nombre_grupo) values
/* 1 */('Administracion'),
/* 2 */('Base de datos'),
/* 3 */('Redes'),
/* 4 */('Programacion');

insert into tb_persona (nombre_persona, ape_pat_persona, ape_mat_persona, email_persona) values
-- Empleados Administración
/* 1 */('Carlos', 'Sanchez', 'Gimenez', 'csanchez@gmail.com'), # Jef
/* 2 */('Alan', 'Brito', 'Delgado', 'abrito@live.com'),  #Tec
/* 3 */('Maria', 'Arriola', 'Ruiz', 'marriola@hotmail.com'), #Esp
-- Empleados Base de Datos
/* 4 */('Diyei', 'Estereo', 'Rodriguez', 'destereo@gmail.com'), # Jef
/* 5 */('Roberto', 'Ramirez', 'Villalobos', 'rramirez@gmail.com'), #Tec
/* 6 */('Jose', 'Matinez', 'Gimenez', 'jmartinez@gmail.com'), #Esp
-- Empleados Redes
/* 7 */('Alexander', 'De la flor', 'Delgado', 'adelaflor@live.com'), # Jef
/* 8 */('Andres', 'Cacimiro', 'Caceres', 'acacimiro@hotmail.com'), #Tec
/* 9 */('Pedro', 'Drago', 'Rodriguez', 'ddrago@gmail.com'), #Esp
-- Empleados Programación
/* 10 */('Raul', 'Damaso', 'Lopez', 'rdamaso@gmail.com'), # Jef
/* 11 */('Luis', 'Atuncar', 'Gimenez', 'latuncar@gmail.com'), #Tec
/* 12 */('Julio', 'De la flor', 'Flores', 'jdelaflor@live.com'), #Esp
-- Operadores
/* 13 */('Machin', 'Alberto', 'Lopez', 'malberto@gmail.com'), # Jef
/* 14 */('Cesar', 'Pozo', 'Gimenez', 'cpozo@gmail.com'), #Tec
/* 15 */('Luis', 'Gamarra', 'Mina', 'lgamarra@live`PRIMARY`.com'), #Esp

# Extra para testing
/* 16 */('Nombre', 'ApePat', 'ApeMat', 'na@gmail.com`.com');

insert into tb_empleado (id_empleado, id_rol, id_grupo) values
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 1, 3),
(8, 2, 3),
(9, 3, 3),
(10, 1, 4),
(11, 2, 4),
(12, 3, 4);

insert into tb_operador (id_operador) values
(13),
(14),
(15);

insert into tb_usuario (id_usuario, nombre_usuario, clave_usuario) values
-- Empleados
(1, 'csanchez', 'admin123'),
(2, 'abrito', 'admin123'),
(3, 'marriola', 'admin123'),
(4, 'destereo', 'admin123'),
(5, 'rramirez', 'admin123'),
(6, 'jmartinez', 'admin123'),
(7, 'adelaflor', 'admin123'),
(8, 'acacimiro', 'admin123'),
(9, 'pdrago', 'admin123'),
(10, 'rdamaso', 'admin123'),
(11, 'latuncar', 'admin123'),
(12, 'jdelaflor', 'admin123'),
-- Operadores
(13, 'malberto', 'admin123'),
(14, 'cpozo', 'admin123'),
(15, 'lgamarra', 'admin123');

insert into tb_cliente (nombre_cliente, email_cliente) values
/* 1 */('Lucía', 'latoche@gmail.com'),
/* 2 */('Luisa', 'ljanampa@gmail.com'),
/* 3 */('Pedro', 'ppastor@live.com');

insert into tb_empresa (raz_soc_empresa) values
/* 1 */('Banco Interbank'),
/* 2 */('Instituto Cibertec'),
/* 3 */('Municipalidad de Lima');

insert into tb_empresa_cliente (id_empresa, id_cliente) values
(1, 1),
(2, 2),
(3, 3);

insert into tb_estado (descrip_estado) values 
/* 1 */('Registrado'),
/* 2 */('En espera'),
/* 3 */('Asignado'),
/* 4 */('Reasignado'),
/* 5 */('Resuelto'),
/* 6 */('Notificado');

insert into tb_prioridad (descrip_prioridad) values
/* 1 */('Alta'),
/* 2 */('Media'),
/* 3 */('Baja');

insert into tb_incidencia 
(descrip_incidencia, 
fec_ing_incidencia, 
resumen_incidencia, 
solucion_incidencia, 
id_cliente, 
id_grupo, 
id_operador, 
id_empleado, 
id_estado, 
id_prioridad) values 
('No puedo conectar a la base de datos al moneto de entrar a la intranet', '2016-05-22', 'No conecta a la BD', 'Se tuvo que reasignar
 con los permisos necesarios para poder entrar a la intranet, ya que no tenia los suficientes permisos', 1, 2, 13, 6, 6, 2),
('No entra mi facebook', '2016-05-24', 'No entra su FB', 'La empresa bloque los permisos para ciertas páginas, para que sus empleados
 no se distraigan, asi que no puede ni podrá entrar al FACEBOOK', 2, 3, 14, 8, 6, 3),
('Cuando entro a la intranet me notifica que no existe el usuario', '2016-05-26', 'No existe usuario', '', 3, 3, 15, 7, 2, 1);
