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