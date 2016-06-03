USE db_incidencias;


-- ------- CREATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_USUARIO_CREATE;
DELIMITER //
CREATE PROCEDURE USP_TB_USUARIO_CREATE (id INT, nombre VARCHAR(50), clave VARCHAR(50))
BEGIN
	INSERT INTO `db_incidencias`.`tb_usuario`
				(`id_usuario`,
				`nombre_usuario`,
				`clave_usuario`)
	VALUES
				(id,
				nombre,
				clave);


END //
DELIMITER ;



-- ------- READ PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_USUARIO_READ;
DELIMITER //
CREATE PROCEDURE USP_TB_USUARIO_READ ()
BEGIN
	SELECT * FROM TB_USUARIO;
END //
DELIMITER ;


-- ------- UPDATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_TB_USUARIO_UPDATE;
DELIMITER //
CREATE PROCEDURE USP_TB_USUARIO_UPDATE(id INT, nombre VARCHAR(50), clave VARCHAR(50))
BEGIN
	UPDATE `db_incidencias`.`tb_usuario`
	SET
			`nombre_usuario` = nombre,
			`clave_usuario` = clave
	WHERE `id_usuario` = id;

END
// DELIMITER ;


-- ------- DELETE PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_USUARIO_DELETE;
DELIMITER //
CREATE PROCEDURE USP_TB_USUARIO_DELETE(id INT)
BEGIN
	DELETE FROM TB_USUARIO WHERE id_usuario = id;
END
// DELIMITER ;


-- -------- OBTAIN PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_TB_USUARIO_OBTAIN;
DELIMITER //
CREATE PROCEDURE USP_TB_USUARIO_OBTAIN (id INT)
BEGIN
	SELECT * FROM TB_USUARIO
    WHERE id_usuario = id;
END //
DELIMITER ;

-- ------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------
-- --------------------------------------------FIN DEL CRUD----------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------



-- ---------BUSCAR USUARIO POR NOMBRE Y CLAVE-----------
DROP PROCEDURE IF EXISTS USP_TB_USUARIO_BUSCAR_POR_NOMBRE_Y_CLAVE;
DELIMITER //
CREATE PROCEDURE USP_TB_USUARIO_BUSCAR_POR_NOMBRE_Y_CLAVE(nombre VARCHAR(50), clave VARCHAR(50))
BEGIN
	SELECT * FROM TB_USUARIO WHERE nombre_usuario = nombre AND clave_usuario = clave;
END
// DELIMITER ;