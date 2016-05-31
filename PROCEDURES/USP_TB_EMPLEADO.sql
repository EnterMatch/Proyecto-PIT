USE db_incidencias;


-- ------- CREATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_EMPLEADO_CREATE;
DELIMITER //
CREATE PROCEDURE USP_TB_EMPLEADO_CREATE (OUT id INT, nombre VARCHAR(50), ape_pat VARCHAR(50), ape_mat VARCHAR(50), email VARCHAR(70), id_rol INT, id_grupo INT)
BEGIN
	INSERT INTO `db_incidencias`.`tb_persona`
				(`nombre_persona`,
				`ape_pat_persona`,
				`ape_mat_persona`,
				`email_persona`)
	VALUES
				(nombre,
				ape_pat,
				ape_mat,
				email);
	
    INSERT INTO `db_incidencias`.`tb_empleado`
				(`id_empleado`,
				`id_rol`,
				`id_grupo`)
	VALUES
				(LAST_INSERT_ID(),
				id_rol,
				id_grupo);

	SELECT LAST_INSERT_ID() INTO id;
END //
DELIMITER ;



-- ------- READ PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_EMPLEADO_READ;
DELIMITER //
CREATE PROCEDURE USP_TB_EMPLEADO_READ ()
BEGIN
	SELECT * FROM TB_EMPLEADO E JOIN TB_PERSONA P ON E.id_empleado = P.id_persona;
END //
DELIMITER ;


-- ------- UPDATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_EMPLEADO_UPDATE;
DELIMITER //
CREATE PROCEDURE USP_TB_EMPLEADO_UPDATE(id INT, nombre VARCHAR(50), ape_pat VARCHAR(50), ape_mat VARCHAR(50), email VARCHAR(70), id_rol INT, id_grupo INT)
BEGIN
	UPDATE TB_PERSONA SET 	nombre_persona	= nombre,
							ape_pat_persona = ape_pat,
							ape_mat_persona = ape_mat,
                            email_persona = email
	WHERE id_persona = id;
    
    UPDATE TB_EMPLEADO SET  id_rol = id_rol,
							id_grupo = id_grupo
	WHERE id_empleado = id;
END
// DELIMITER ;


-- ------- DELETE PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_EMPLEADO_DELETE;
DELIMITER //
CREATE PROCEDURE USP_TB_EMPLEADO_DELETE(id INT)
BEGIN
	DELETE FROM TB_EMPLEADO WHERE id_empleado = id;
	DELETE FROM TB_PERSONA WHERE id_persona = id;
END
// DELIMITER ;


-- -------- OBTAIN PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_EMPLEADO_OBTAIN;
DELIMITER //
CREATE PROCEDURE USP_TB_EMPLEADO_OBTAIN (id INT)
BEGIN
	SELECT * FROM TB_EMPLEADO E JOIN TB_PERSONA P ON E.id_empleado = P.id_persona
    WHERE E.id_empleado = id;
END //
DELIMITER ;