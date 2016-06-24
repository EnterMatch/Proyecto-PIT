USE db_incidencias;


-- ------- CREATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_CREATE;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_CREATE (OUT id INT, descrip VARCHAR(200), fec_ing DATETIME, resumen VARCHAR(500), solucion VARCHAR(1000), id_cliente INT, id_grupo INT, id_operador INT, id_empleado INT, id_estado INT, id_prioridad INT)
BEGIN
	INSERT INTO `db_incidencias`.`tb_incidencia`
				(`descrip_incidencia`,
				`fec_ing_incidencia`,
				`resumen_incidencia`,
				`solucion_incidencia`,
				`id_cliente`,
				`id_grupo`,
				`id_operador`,
				`id_empleado`,
				`id_estado`,
				`id_prioridad`)
	VALUES
				(descrip,
				fec_ing,
				resumen,
				solucion,
				id_cliente,
				id_grupo,
				id_operador,
				id_empleado,
				id_estado,
				id_prioridad);

	SELECT LAST_INSERT_ID() INTO id;
END //
DELIMITER ;



-- ------- READ PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_READ;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_READ ()
BEGIN
	SELECT * FROM TB_INCIDENCIA;
END //
DELIMITER ;


-- ------- UPDATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_UPDATE;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_UPDATE(id INT, descrip VARCHAR(200), fec_ing DATETIME, resumen VARCHAR(500), solucion VARCHAR(1000), id_cliente INT, id_grupo INT, id_operador INT, id_empleado INT, id_estado INT, id_prioridad INT)
BEGIN
	UPDATE `db_incidencias`.`tb_incidencia`
	SET
			`descrip_incidencia` = descrip,
			`fec_ing_incidencia` = fec_ing,
			`resumen_incidencia` = resumen,
			`solucion_incidencia` = solucion,
			`id_cliente` = id_cliente,
			`id_grupo` = id_grupo,
			`id_operador` = id_operador,
			`id_empleado` = id_empleado,
			`id_estado` = id_estado,
			`id_prioridad` = id_prioridad
	WHERE `id_incidencia` = id;

END
// DELIMITER ;


-- ------- DELETE PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_DELETE;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_DELETE(id INT)
BEGIN
	DELETE FROM TB_INCIDENCIA WHERE id_incidencia = id;
END
// DELIMITER ;


-- -------- OBTAIN PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_OBTAIN;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_OBTAIN (id INT)
BEGIN
	SELECT * FROM TB_INCIDENCIA
    WHERE id_incidencia = id;
END //
DELIMITER ;


-- -------- PROCEDURES ADICIONALES -----------


-- -------- OBTENER INCIDENTES PARA LISTADO -----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_LISTADO;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_LISTADO ()
BEGIN
	SELECT I.id_incidencia, I.descrip_incidencia, I.fec_ing_incidencia, I.resumen_incidencia, 
			I.solucion_incidencia, C.nombre_cliente, G.nombre_grupo, PER.nombre_persona AS nombre_operador, 
            PERS.nombre_persona AS nombre_empleado, EST.descrip_estado, P.descrip_prioridad
    FROM TB_INCIDENCIA I 
    JOIN TB_CLIENTE C ON I.ID_CLIENTE = C.ID_CLIENTE
    JOIN TB_GRUPO G ON I.ID_GRUPO = G.ID_GRUPO
    JOIN TB_OPERADOR O ON I.ID_OPERADOR = O.ID_OPERADOR
    JOIN TB_EMPLEADO EMP ON I.ID_EMPLEADO = EMP.ID_EMPLEADO
    JOIN TB_ESTADO EST ON I.ID_ESTADO = EST.ID_ESTADO
    JOIN TB_PRIORIDAD P ON I.ID_PRIORIDAD = P.ID_PRIORIDAD
    JOIN TB_PERSONA PER ON O.ID_OPERADOR = PER.ID_PERSONA
    JOIN TB_PERSONA PERS ON EMP.ID_EMPLEADO = PERS.ID_PERSONA;
END //
DELIMITER ;

CALL USP_TB_INCIDENCIA_LISTADO