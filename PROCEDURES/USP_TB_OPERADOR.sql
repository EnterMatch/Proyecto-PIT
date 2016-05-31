USE db_incidencias;


-- ------- CREATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_OPERADOR_CREATE;
DELIMITER //
CREATE PROCEDURE USP_TB_OPERADOR_CREATE (OUT id INT, nombre VARCHAR(50), ape_pat VARCHAR(50), ape_mat VARCHAR(50), email VARCHAR(70))
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
	
    INSERT INTO `db_incidencias`.`tb_operador`
				(`id_operador`)
	VALUES
				(LAST_INSERT_ID());

	SELECT LAST_INSERT_ID() INTO id;
END //
DELIMITER ;



-- ------- READ PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_OPERADOR_READ;
DELIMITER //
CREATE PROCEDURE USP_TB_OPERADOR_READ ()
BEGIN
	SELECT * FROM TB_OPERADOR O JOIN TB_PERSONA P ON O.id_operador = P.id_persona;
END //
DELIMITER ;


-- ------- UPDATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_OPERADOR_UPDATE;
DELIMITER //
CREATE PROCEDURE USP_TB_OPERADOR_UPDATE(id INT, nombre VARCHAR(50), ape_pat VARCHAR(50), ape_mat VARCHAR(50), email VARCHAR(70))
BEGIN
	UPDATE TB_PERSONA SET 	nombre_persona	= nombre,
							ape_pat_persona = ape_pat,
							ape_mat_persona = ape_mat,
                            email_persona = email
	WHERE id_persona = id;

END
// DELIMITER ;


-- ------- DELETE PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_OPERADOR_DELETE;
DELIMITER //
CREATE PROCEDURE USP_TB_OPERADOR_DELETE(id INT)
BEGIN
	DELETE FROM TB_OPERADOR WHERE id_operador = id;
	DELETE FROM TB_PERSONA WHERE id_persona = id;
END
// DELIMITER ;


-- -------- OBTAIN PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_OPERADOR_OBTAIN;
DELIMITER //
CREATE PROCEDURE USP_TB_OPERADOR_OBTAIN (id INT)
BEGIN
	SELECT * FROM TB_OPERADOR O JOIN TB_PERSONA P ON O.id_operador = P.id_persona
    WHERE O.id_operador = id;
END //
DELIMITER ;