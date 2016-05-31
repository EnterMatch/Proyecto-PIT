USE db_incidencias;


-- ------- CREATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_INSERT_TABLE_CREATE;
DELIMITER //
CREATE PROCEDURE USP_INSERT_TABLE_CREATE (OUT id INT, **********)
BEGIN
	***********

	SELECT LAST_INSERT_ID() INTO id;
END //
DELIMITER ;



-- ------- READ PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_INSERT_TABLE_READ;
DELIMITER //
CREATE PROCEDURE USP_INSERT_TABLE_READ ()
BEGIN
	SELECT * FROM INSERT_TABLE;
END //
DELIMITER ;


-- ------- UPDATE PROCEDURE ----------
DROP PROCEDURE IF EXISTS USP_INSERT_TABLE_UPDATE;
DELIMITER //
CREATE PROCEDURE USP_INSERT_TABLE_UPDATE(***********)
BEGIN
	UPDATE INSERT_TABLE SET *********	
	WHERE *********;
END
// DELIMITER ;


-- ------- DELETE PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_INSERT_TABLE_DELETE;
DELIMITER //
CREATE PROCEDURE USP_INSERT_TABLE_DELETE(id INT)
BEGIN
	DELETE FROM INSERT_TABLE WHERE *********;
END
// DELIMITER ;


-- -------- OBTAIN PROCEDURE -----------
DROP PROCEDURE IF EXISTS USP_INSERT_TABLE_OBTAIN;
DELIMITER //
CREATE PROCEDURE USP_INSERT_TABLE_OBTAIN (id INT)
BEGIN
	SELECT * FROM INSERT_TABLE
    WHERE *********;
END //
DELIMITER ;