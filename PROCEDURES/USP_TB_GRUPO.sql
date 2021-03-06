USE db_incidencias;


-- ------- CREATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_GRUPO_CREATE;
DELIMITER //
CREATE PROCEDURE USP_TB_GRUPO_CREATE (OUT id INT, nombre VARCHAR(50))
BEGIN
	INSERT INTO `db_incidencias`.`tb_grupo`
				(`nombre_grupo`)
	VALUES
				(nombre);

	SELECT LAST_INSERT_ID() INTO id;
END //
DELIMITER ;



-- ------- READ PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_GRUPO_READ;
DELIMITER //
CREATE PROCEDURE USP_TB_GRUPO_READ ()
BEGIN
	SELECT * FROM TB_GRUPO;
END //
DELIMITER ;


-- ------- UPDATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_GRUPO_UPDATE;
DELIMITER //
CREATE PROCEDURE USP_TB_GRUPO_UPDATE(id INT, nombre VARCHAR(50))
BEGIN
	UPDATE `db_incidencias`.`tb_grupo`
	SET
			`nombre_grupo` = nombre
	WHERE `id_grupo` = id;

	END
// DELIMITER ;


-- ------- DELETE PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_GRUPO_DELETE;
DELIMITER //
CREATE PROCEDURE USP_TB_GRUPO_DELETE(id INT)
BEGIN
	DELETE FROM TB_GRUPO WHERE id_grupo = id;
END
// DELIMITER ;


-- -------- OBTAIN PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_GRUPO_OBTAIN;
DELIMITER //
CREATE PROCEDURE USP_TB_GRUPO_OBTAIN (id INT)
BEGIN
	SELECT * FROM TB_GRUPO
    WHERE id_grupo = id;
END //
DELIMITER ;