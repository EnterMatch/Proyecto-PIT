-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_incidencias
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `db_incidencias` ;

-- -----------------------------------------------------
-- Schema db_incidencias
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_incidencias` DEFAULT CHARACTER SET latin1 ;
USE `db_incidencias` ;

-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_cliente` (
  `id_cliente` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `nombre_cliente` VARCHAR(30) NOT NULL COMMENT '',
  `email_cliente` VARCHAR(100) NOT NULL COMMENT '',
  PRIMARY KEY (`id_cliente`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_persona` (
  `id_persona` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `nombre_persona` VARCHAR(50) NOT NULL COMMENT '',
  `ape_pat_persona` VARCHAR(50) NOT NULL COMMENT '',
  `ape_mat_persona` VARCHAR(50) NOT NULL COMMENT '',
  `email_persona` VARCHAR(70) NOT NULL COMMENT '',
  PRIMARY KEY (`id_persona`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_rol` (
  `id_rol` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `descrip_rol` VARCHAR(50) NOT NULL COMMENT '',
  PRIMARY KEY (`id_rol`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_grupo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_grupo` (
  `id_grupo` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `nombre_grupo` VARCHAR(50) NOT NULL COMMENT '',
  PRIMARY KEY (`id_grupo`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_empleado` (
  `id_empleado` INT(11) NOT NULL COMMENT '',
  `id_rol` INT(11) NOT NULL COMMENT '',
  `id_grupo` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`id_empleado`)  COMMENT '',
  INDEX `id_rol` (`id_rol` ASC)  COMMENT '',
  INDEX `id_grupo` (`id_grupo` ASC)  COMMENT '',
  CONSTRAINT `tb_empleado_ibfk_1`
    FOREIGN KEY (`id_empleado`)
    REFERENCES `db_incidencias`.`tb_persona` (`id_persona`),
  CONSTRAINT `tb_empleado_ibfk_2`
    FOREIGN KEY (`id_rol`)
    REFERENCES `db_incidencias`.`tb_rol` (`id_rol`),
  CONSTRAINT `tb_empleado_ibfk_3`
    FOREIGN KEY (`id_grupo`)
    REFERENCES `db_incidencias`.`tb_grupo` (`id_grupo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_empresa` (
  `id_empresa` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `raz_soc_empresa` VARCHAR(50) NOT NULL COMMENT '',
  PRIMARY KEY (`id_empresa`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_empresa_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_empresa_cliente` (
  `id_empresa` INT(11) NOT NULL COMMENT '',
  `id_cliente` INT(11) NOT NULL COMMENT '',
  INDEX `id_empresa` (`id_empresa` ASC)  COMMENT '',
  INDEX `id_cliente` (`id_cliente` ASC)  COMMENT '',
  CONSTRAINT `tb_empresa_cliente_ibfk_1`
    FOREIGN KEY (`id_empresa`)
    REFERENCES `db_incidencias`.`tb_empresa` (`id_empresa`),
  CONSTRAINT `tb_empresa_cliente_ibfk_2`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `db_incidencias`.`tb_cliente` (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_estado` (
  `id_estado` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `descrip_estado` VARCHAR(50) NOT NULL COMMENT '',
  PRIMARY KEY (`id_estado`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_operador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_operador` (
  `id_operador` INT(11) NOT NULL COMMENT '',
  `id_rol` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`id_operador`)  COMMENT '',
  CONSTRAINT `tb_operador_ibfk_1`
    FOREIGN KEY (`id_operador`)
    REFERENCES `db_incidencias`.`tb_persona` (`id_persona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_prioridad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_prioridad` (
  `id_prioridad` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `descrip_prioridad` VARCHAR(50) NOT NULL COMMENT '',
  PRIMARY KEY (`id_prioridad`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_incidencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_incidencia` (
  `id_incidencia` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `descrip_incidencia` VARCHAR(200) NOT NULL COMMENT '',
  `fec_ing_incidencia` DATETIME NOT NULL COMMENT '',
  `resumen_incidencia` VARCHAR(500) NOT NULL COMMENT '',
  `solucion_incidencia` VARCHAR(1000) NULL COMMENT '',
  `id_cliente` INT(11) NOT NULL COMMENT '',
  `id_grupo` INT(11) NOT NULL COMMENT '',
  `id_operador` INT(11) NOT NULL COMMENT '',
  `id_empleado` INT(11) NULL COMMENT '',
  `id_estado` INT(11) NOT NULL COMMENT '',
  `id_prioridad` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`id_incidencia`)  COMMENT '',
  INDEX `id_cliente` (`id_cliente` ASC)  COMMENT '',
  INDEX `id_grupo` (`id_grupo` ASC)  COMMENT '',
  INDEX `id_operador` (`id_operador` ASC)  COMMENT '',
  INDEX `id_empleado` (`id_empleado` ASC)  COMMENT '',
  INDEX `id_estado` (`id_estado` ASC)  COMMENT '',
  INDEX `id_prioridad` (`id_prioridad` ASC)  COMMENT '',
  CONSTRAINT `tb_incidencia_ibfk_1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `db_incidencias`.`tb_cliente` (`id_cliente`),
  CONSTRAINT `tb_incidencia_ibfk_2`
    FOREIGN KEY (`id_grupo`)
    REFERENCES `db_incidencias`.`tb_grupo` (`id_grupo`),
  CONSTRAINT `tb_incidencia_ibfk_3`
    FOREIGN KEY (`id_operador`)
    REFERENCES `db_incidencias`.`tb_operador` (`id_operador`),
  CONSTRAINT `tb_incidencia_ibfk_4`
    FOREIGN KEY (`id_empleado`)
    REFERENCES `db_incidencias`.`tb_empleado` (`id_empleado`),
  CONSTRAINT `tb_incidencia_ibfk_5`
    FOREIGN KEY (`id_estado`)
    REFERENCES `db_incidencias`.`tb_estado` (`id_estado`),
  CONSTRAINT `tb_incidencia_ibfk_6`
    FOREIGN KEY (`id_prioridad`)
    REFERENCES `db_incidencias`.`tb_prioridad` (`id_prioridad`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `db_incidencias`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_incidencias`.`tb_usuario` (
  `id_usuario` INT(11) NOT NULL COMMENT '',
  `nombre_usuario` VARCHAR(50) UNIQUE NOT NULL COMMENT '',
  `clave_usuario` VARCHAR(50) NOT NULL COMMENT '',
  PRIMARY KEY (`id_usuario`)  COMMENT '',
  CONSTRAINT `tb_usuario_ibfk_1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `db_incidencias`.`tb_persona` (`id_persona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

USE `db_incidencias` ;

-- -----------------------------------------------------
-- procedure USP_TB_CLIENTE_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_CLIENTE_CREATE`(OUT id INT, nombre VARCHAR(30), email VARCHAR(100))
BEGIN
	INSERT INTO `db_incidencias`.`tb_cliente`
				(`nombre_cliente`,
				`email_cliente`)
	VALUES
				(nombre,
				email);
	SELECT LAST_INSERT_ID() INTO id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_CLIENTE_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_CLIENTE_DELETE`(id INT)
BEGIN
	DELETE FROM TB_CLIENTE WHERE id_cliente = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_CLIENTE_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_CLIENTE_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_CLIENTE
    WHERE id_cliente = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_CLIENTE_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_CLIENTE_READ`()
BEGIN
	SELECT * FROM TB_CLIENTE;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_CLIENTE_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_CLIENTE_UPDATE`(id INT, nombre VARCHAR(30), email VARCHAR(100))
BEGIN
	UPDATE TB_CLIENTE SET 	nombre_cliente = nombre,
							email_cliente = email
	WHERE id_cliente = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPLEADO_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPLEADO_CREATE`(OUT id INT, nombre VARCHAR(50), ape_pat VARCHAR(50), ape_mat VARCHAR(50), email VARCHAR(70), id_rol INT, id_grupo INT)
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
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPLEADO_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPLEADO_DELETE`(id INT)
BEGIN
	DELETE FROM TB_EMPLEADO WHERE id_empleado = id;
	DELETE FROM TB_PERSONA WHERE id_persona = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPLEADO_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPLEADO_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_EMPLEADO E JOIN TB_PERSONA P ON E.id_empleado = P.id_persona
    WHERE E.id_empleado = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPLEADO_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPLEADO_READ`()
BEGIN
	SELECT * FROM TB_EMPLEADO E JOIN TB_PERSONA P ON E.id_empleado = P.id_persona;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPLEADO_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPLEADO_UPDATE`(id INT, nombre VARCHAR(50), ape_pat VARCHAR(50), ape_mat VARCHAR(50), email VARCHAR(70), id_rol INT, id_grupo INT)
BEGIN
	UPDATE TB_PERSONA SET 	nombre_persona	= nombre,
							ape_pat_persona = ape_pat,
							ape_mat_persona = ape_mat,
                            email_persona = email
	WHERE id_persona = id;
    
    UPDATE TB_EMPLEADO SET  id_rol = id_rol,
							id_grupo = id_grupo
	WHERE id_empleado = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_CLIENTE_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_CLIENTE_CREATE`(idEmpresa INT, idCliente INT)
BEGIN
	INSERT INTO `db_incidencias`.`tb_empresa_cliente`
				(`id_empresa`,
				`id_cliente`)
	VALUES
				(idEmpresa,
				idCliente);

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_CLIENTE_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_CLIENTE_DELETE`(idEmpresa INT, idCliente INT)
BEGIN
	DELETE FROM TB_EMPRESA_CLIENTE WHERE id_empresa = idEmpresa AND id_cliente = idCliente;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_CLIENTE_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_CLIENTE_OBTAIN`(idEmpresa INT, idCliente INT)
BEGIN
	SELECT * FROM TB_EMPRESA_CLIENTE
    WHERE id_empresa = idEmpresa AND id_cliente = idCliente;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_CLIENTE_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_CLIENTE_READ`()
BEGIN
	SELECT * FROM TB_EMPRESA_CLIENTE;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_CREATE`(OUT id INT, raz_soc VARCHAR(50))
BEGIN
	INSERT INTO `db_incidencias`.`tb_empresa`
				(`raz_soc_empresa`)
	VALUES
				(ras_soc);

	SELECT LAST_INSERT_ID() INTO id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_DELETE`(id INT)
BEGIN
	DELETE FROM TB_EMPRESA WHERE id_empresa = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_EMPRESA
    WHERE id_empresa = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_READ`()
BEGIN
	SELECT * FROM TB_EMPRESA;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_EMPRESA_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_EMPRESA_UPDATE`(id INT, raz_soc VARCHAR(50))
BEGIN
	UPDATE `db_incidencias`.`tb_empresa`
	SET
			`raz_soc_empresa` = raz_soc
	WHERE `id_empresa` = id;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ESTADO_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ESTADO_CREATE`(OUT id INT, descrip VARCHAR(50))
BEGIN
	INSERT INTO `db_incidencias`.`tb_estado`
				(`descrip_estado`)
	VALUES
				(descrip);

	SELECT LAST_INSERT_ID() INTO id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ESTADO_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ESTADO_DELETE`(id INT)
BEGIN
	DELETE FROM TB_ESTADO WHERE id_estado = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ESTADO_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ESTADO_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_ESTADO
    WHERE id_estado = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ESTADO_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ESTADO_READ`()
BEGIN
	SELECT * FROM TB_ESTADO;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ESTADO_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ESTADO_UPDATE`(id INT, descrip VARCHAR(50))
BEGIN
	UPDATE `db_incidencias`.`tb_estado`
	SET
			`descrip_estado` = descrip
	WHERE `id_estado` = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_GRUPO_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_GRUPO_CREATE`(OUT id INT, nombre VARCHAR(50))
BEGIN
	INSERT INTO `db_incidencias`.`tb_grupo`
				(`nombre_grupo`)
	VALUES
				(nombre);

	SELECT LAST_INSERT_ID() INTO id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_GRUPO_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_GRUPO_DELETE`(id INT)
BEGIN
	DELETE FROM TB_GRUPO WHERE id_grupo = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_GRUPO_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_GRUPO_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_GRUPO
    WHERE id_grupo = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_GRUPO_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_GRUPO_READ`()
BEGIN
	SELECT * FROM TB_GRUPO;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_GRUPO_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_GRUPO_UPDATE`(id INT, nombre VARCHAR(50))
BEGIN
	UPDATE `db_incidencias`.`tb_grupo`
	SET
			`nombre_grupo` = nombre
	WHERE `id_grupo` = id;

	END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_CREATE
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_CREATE;
DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_CREATE`( descrip VARCHAR(200), resumen VARCHAR(500), id_cliente INT, id_grupo INT, id_operador INT, id_estado INT, id_prioridad INT)
BEGIN
	INSERT INTO `db_incidencias`.`tb_incidencia`
				(`descrip_incidencia`,
				`fec_ing_incidencia`,
				`resumen_incidencia`,
				`id_cliente`,
				`id_grupo`,
				`id_operador`,
				`id_estado`,
				`id_prioridad`)
	VALUES
				(descrip,
				now(),
				resumen,
				id_cliente,
				id_grupo,
				id_operador,
				id_estado,
				id_prioridad);
END$$
DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_DELETE`(id INT)
BEGIN
	DELETE FROM TB_INCIDENCIA WHERE id_incidencia = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_INCIDENCIA
    WHERE id_incidencia = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_READ`()
BEGIN
	SELECT * FROM TB_INCIDENCIA;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_UPDATE`(id INT, descrip VARCHAR(200), fec_ing DATETIME, resumen VARCHAR(500), solucion VARCHAR(1000), id_cliente INT, id_grupo INT, id_operador INT, id_empleado INT, id_estado INT, id_prioridad INT)
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

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_OPERADOR_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_OPERADOR_CREATE`(OUT id INT,id_rol INT, nombre VARCHAR(50), ape_pat VARCHAR(50), ape_mat VARCHAR(50), email VARCHAR(70))
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
				(`id_operador`, `id_rol`)
	VALUES
				(LAST_INSERT_ID(), id_rol);

	SELECT LAST_INSERT_ID() INTO id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_OPERADOR_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_OPERADOR_DELETE`(id INT)
BEGIN
	DELETE FROM TB_OPERADOR WHERE id_operador = id;
	DELETE FROM TB_PERSONA WHERE id_persona = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_OPERADOR_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_OPERADOR_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_OPERADOR O JOIN TB_PERSONA P ON O.id_operador = P.id_persona
    WHERE O.id_operador = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_OPERADOR_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_OPERADOR_READ`()
BEGIN
	SELECT * FROM TB_OPERADOR O JOIN TB_PERSONA P ON O.id_operador = P.id_persona;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_OPERADOR_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_OPERADOR_UPDATE`(id INT, nombre VARCHAR(50), ape_pat VARCHAR(50), ape_mat VARCHAR(50), email VARCHAR(70))
BEGIN
	UPDATE TB_PERSONA SET 	nombre_persona	= nombre,
							ape_pat_persona = ape_pat,
							ape_mat_persona = ape_mat,
                            email_persona = email
	WHERE id_persona = id;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_PRIORIDAD_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_PRIORIDAD_CREATE`(OUT id INT, descrip VARCHAR(50))
BEGIN
	INSERT INTO `db_incidencias`.`tb_prioridad`
				(`descrip_prioridad`)
	VALUES
				(descrip);

	SELECT LAST_INSERT_ID() INTO id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_PRIORIDAD_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_PRIORIDAD_DELETE`(id INT)
BEGIN
	DELETE FROM TB_PRIORIDAD WHERE id_prioridad = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_PRIORIDAD_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_PRIORIDAD_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_PRIORIDAD
    WHERE id_prioridad = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_PRIORIDAD_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_PRIORIDAD_READ`()
BEGIN
	SELECT * FROM TB_PRIORIDAD;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_PRIORIDAD_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_PRIORIDAD_UPDATE`(id INT, descrip VARCHAR(50))
BEGIN
	UPDATE `db_incidencias`.`tb_prioridad`
	SET
			`descrip_prioridad` = descrip
	WHERE `id_prioridad` = id;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ROL_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ROL_CREATE`(OUT id INT, descrip VARCHAR(50))
BEGIN
	INSERT INTO `db_incidencias`.`tb_rol`
				(`descrip_rol`)
	VALUES
				(descrip);


	SELECT LAST_INSERT_ID() INTO id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ROL_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ROL_DELETE`(id INT)
BEGIN
	DELETE FROM TB_ROL WHERE id_rol = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ROL_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ROL_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_ROL
    WHERE id_rol = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ROL_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ROL_READ`()
BEGIN
	SELECT * FROM TB_ROL;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_ROL_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_ROL_UPDATE`(id INT, descrip VARCHAR(50))
BEGIN
	UPDATE `db_incidencias`.`tb_rol`
	SET
			`descrip_rol` = descrip
	WHERE `id_rol` = id;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_USUARIO_CREATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_USUARIO_CREATE`(id INT, nombre VARCHAR(50), clave VARCHAR(50))
BEGIN
	INSERT INTO `db_incidencias`.`tb_usuario`
				(`id_usuario`,
				`nombre_usuario`,
				`clave_usuario`)
	VALUES
				(id,
				nombre,
				clave);


END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_USUARIO_DELETE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_USUARIO_DELETE`(id INT)
BEGIN
	DELETE FROM TB_USUARIO WHERE id_usuario = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_USUARIO_OBTAIN
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_USUARIO_OBTAIN`(id INT)
BEGIN
	SELECT * FROM TB_USUARIO
    WHERE id_usuario = id;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_USUARIO_READ
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_USUARIO_READ`()
BEGIN
	SELECT * FROM TB_USUARIO;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_USUARIO_UPDATE
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_USUARIO_UPDATE`(id INT, nombre VARCHAR(50), clave VARCHAR(50))
BEGIN
	UPDATE `db_incidencias`.`tb_usuario`
	SET
			`nombre_usuario` = nombre,
			`clave_usuario` = clave
	WHERE `id_usuario` = id;

END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



-- ---------BUSCAR USUARIO POR NOMBRE Y CLAVE-----------
DROP PROCEDURE IF EXISTS USP_TB_USUARIO_BUSCAR_POR_NOMBRE_Y_CLAVE;
DELIMITER //
CREATE PROCEDURE USP_TB_USUARIO_BUSCAR_POR_NOMBRE_Y_CLAVE(nombre VARCHAR(50), clave VARCHAR(50))
BEGIN
	SELECT * FROM TB_USUARIO WHERE nombre_usuario = nombre AND clave_usuario = clave;
END
// DELIMITER ;


-- ------------------------------------------------------------
-- ---------------------INSERTS -------------------------------
-- ------------------------------------------------------------
insert into tb_rol (descrip_rol) values
/* 1 */('Jefe de equipo'),
/* 2 */('TÃ©cnico'),
/* 3 */('Especialista'),
/* 4 */('Operador');

insert into tb_grupo(nombre_grupo) values
/* 1 */('Administracion'),
/* 2 */('Base de datos'),
/* 3 */('Redes'),
/* 4 */('Programacion');

insert into tb_persona (nombre_persona, ape_pat_persona, ape_mat_persona, email_persona) values
-- Empleados AdministraciÃ³n
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
-- Empleados ProgramaciÃ³n
/* 10 */('Raul', 'Damaso', 'Lopez', 'rdamaso@gmail.com'), # Jef
/* 11 */('Luis', 'Atuncar', 'Gimenez', 'latuncar@gmail.com'), #Tec
/* 12 */('Julio', 'De la flor', 'Flores', 'jdelaflor@live.com'), #Esp
-- Operadores
/* 13 */('Machin', 'Alberto', 'Lopez', 'malberto@gmail.com'), # Jef
/* 14 */('Cesar', 'Pozo', 'Gimenez', 'cpozo@gmail.com'), #Tec
/* 15 */('Luis', 'Gamarra', 'Mina', 'lgamarra@live`PRIMARY`.com'); #Esp

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

insert into tb_operador (id_operador, id_rol) values
(13, 4),
(14, 4),
(15, 4);

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
/* 1 */('LucÃ­a', 'latoche@gmail.com'),
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
('No entra mi facebook', '2016-05-24', 'No entra su FB', 'La empresa bloque los permisos para ciertas pÃ¡ginas, para que sus empleados no se distraigan, 
asi que no puede ni podrÃ¡ entrar al FACEBOOK', 
2, 1, 14, 2, 6, 3),
('No puedo conectar a la base de datos al moneto de entrar a la intranet', '2016-05-22', 
'No conecta a la BD', 'Se tuvo que reasignar con los permisos necesarios para poder entrar a la intranet, ya que no tenia los suficientes permisos',
1, 2, 13, 5, 6, 2),
('No puedo conectar a la base de datos al moneto de entrar a la intranet', '2016-05-22', 
'No conecta a la BD', 'Se tuvo que reasignar con los permisos necesarios para poder entrar a la intranet, ya que no tenia los suficientes permisos',
1, 2, 13, 5, 6, 2),
('No puedo conectar a la base de datos al moneto de entrar a la intranet', '2016-05-22', 
'No conecta a la BD', 'Se tuvo que reasignar con los permisos necesarios para poder entrar a la intranet, ya que no tenia los suficientes permisos',
1, 2, 13, 6, 6, 2),
('No puedo conectar a la base de datos al moneto de entrar a la intranet', '2016-05-22', 
'No conecta a la BD', 'Se tuvo que reasignar con los permisos necesarios para poder entrar a la intranet, ya que no tenia los suficientes permisos',
1, 2, 13, 5, 6, 2),
('No puedp conectarme a internet', '2016-05-26', 'No existe usuario', 'se debe configurar las correctas IPs al router', 
3, 3, 15, 8, 2, 1),
('El query en el sistema no funciona en mi sql', '2016-05-26', 'El query en el sistema no funciona', 'reemplace el query xxxxx', 
3, 4, 15, 12, 2, 1);

-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_READ POR MATEO
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_READ_ID_USUARIO`(id INT)
BEGIN
	SELECT I.* FROM TB_INCIDENCIA I join tb_usuario 
    on id_empleado = id_usuario
    where id_empleado = id;
END$$
DELIMITER ;

-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_UPDATE_SOLUCION
-- -----------------------------------------------------

DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_UPDATE2`(
id INT, descrip VARCHAR(200), resumen VARCHAR(500), solucion VARCHAR(1000),id_grupo INT, id_empleado INT, id_estado INT, id_prioridad INT)
BEGIN
	UPDATE `db_incidencias`.`tb_incidencia`
	SET		`descrip_incidencia` = descrip,
			`resumen_incidencia` = resumen,
			`solucion_incidencia` = solucion,
			`id_grupo` = id_grupo,
			`id_empleado` = id_empleado,
			`id_estado` = id_estado,
            `id_prioridad` = id_prioridad
	WHERE `id_incidencia` = id;

END$$

DELIMITER ;



-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_UPDATE_SOLUCION
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_UPDATE3;
DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_UPDATE3`(
id INT, idEmpleado INT,  solucion VARCHAR(1000))
BEGIN
	UPDATE `db_incidencias`.`tb_incidencia`
	SET		`id_empleado` = idEmpleado,
            `id_estado`	  = 2,
			`solucion_incidencia`= solucion
	WHERE `id_incidencia` = id;
END$$
DELIMITER ;

select * from tb_estado;

-- -----------------------------------------------------
-- procedure USP_TB_INCIDENCIA_UPDATE_SOLUCION
-- -----------------------------------------------------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_SOLUCION;
DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_SOLUCION`(
id INT, solucion VARCHAR(1000))
BEGIN
	UPDATE `db_incidencias`.`tb_incidencia`
	SET		`id_estado`	  = 5,
			`solucion_incidencia`= solucion
	WHERE `id_incidencia` = id;
END$$
DELIMITER ;



DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_UPDATE_ASIGNAR;
DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_UPDATE_ASIGNAR`(
id INT, idEmpleado INT)
BEGIN
	UPDATE `db_incidencias`.`tb_incidencia`
	SET		`id_empleado` = idEmpleado,
			`id_estado`	  = 3
	WHERE `id_incidencia` = id;
END$$
DELIMITER ;



DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_UPDATE_REASIGNAR;
DELIMITER $$
USE `db_incidencias`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `USP_TB_INCIDENCIA_UPDATE_REASIGNAR`(
id INT, idEmpleado INT)
BEGIN
	UPDATE `db_incidencias`.`tb_incidencia`
	SET		`id_empleado` = idEmpleado,
			`id_estado`	  = 4
	WHERE `id_incidencia` = id;
END$$
DELIMITER ;



-- -------- OBTENER INCIDENTES PARA LISTADO -----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_LISTADO;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_LISTADO ()
BEGIN
	SELECT 	I.id_incidencia, 
			I.descrip_incidencia, 
            I.fec_ing_incidencia, 
            I.resumen_incidencia, 
			I.solucion_incidencia,
            empre.raz_soc_empresa, 
            C.nombre_cliente, 
            G.nombre_grupo, 
            PER.nombre_persona AS nombre_operador, 
            PERS.nombre_persona AS nombre_empleado, 
            EST.descrip_estado, 
            P.descrip_prioridad
            
    FROM TB_INCIDENCIA I 
    JOIN TB_CLIENTE C ON I.ID_CLIENTE = C.ID_CLIENTE
    JOIN TB_GRUPO G ON I.ID_GRUPO = G.ID_GRUPO
    JOIN TB_OPERADOR O ON I.ID_OPERADOR = O.ID_OPERADOR
    JOIN TB_EMPLEADO EMP ON I.ID_EMPLEADO = EMP.ID_EMPLEADO
    JOIN tb_empresa_cliente empcli ON empcli.id_cliente = I.ID_CLIENTE
    JOIN tb_empresa empre ON empre.id_empresa = empcli.id_empresa
    JOIN TB_ESTADO EST ON I.ID_ESTADO = EST.ID_ESTADO
    JOIN TB_PRIORIDAD P ON I.ID_PRIORIDAD = P.ID_PRIORIDAD
    JOIN TB_PERSONA PER ON O.ID_OPERADOR = PER.ID_PERSONA
    JOIN TB_PERSONA PERS ON EMP.ID_EMPLEADO = PERS.ID_PERSONA;
END //
DELIMITER ;


-- -------- OBTENER INCIDENTES PARA LISTADO -----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_LISTADO_POR_EMPLEADO;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_LISTADO_POR_EMPLEADO (id_empleado int)
BEGIN
	SELECT 	I.id_incidencia, 
			I.id_empleado,
			I.descrip_incidencia, 
            I.fec_ing_incidencia, 
            I.resumen_incidencia, 
			I.solucion_incidencia,
            empre.raz_soc_empresa, 
            C.nombre_cliente, 
            G.nombre_grupo, 
            PER.nombre_persona AS nombre_operador, 
            (select nombre_persona from TB_PERSONA where id_persona = I.id_empleado) as nombre_empleado,
            EST.descrip_estado, 
            P.descrip_prioridad
    FROM TB_INCIDENCIA I 
    JOIN TB_CLIENTE C ON I.ID_CLIENTE = C.ID_CLIENTE
    JOIN TB_GRUPO G ON I.ID_GRUPO = G.ID_GRUPO
    JOIN tb_empresa_cliente empcli ON empcli.id_cliente = I.ID_CLIENTE
    JOIN tb_empresa empre ON empre.id_empresa = empcli.id_empresa
    JOIN TB_ESTADO EST ON I.ID_ESTADO = EST.ID_ESTADO
    JOIN TB_PRIORIDAD P ON I.ID_PRIORIDAD = P.ID_PRIORIDAD
    JOIN TB_PERSONA PER ON I.ID_OPERADOR = PER.ID_PERSONA 
    WHERE I.ID_OPERADOR=id_empleado || I.id_empleado=id_empleado;
END //
DELIMITER ;
-- call USP_TB_INCIDENCIA_LISTADO_POR_EMPLEADO (1);
-- call USP_TB_INCIDENCIA_LISTADO_POR_GRUPO(2);

-- -------- OBTENER INCIDENTES PARA LISTADO -----------
DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_LISTADO_POR_GRUPO;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_LISTADO_POR_GRUPO (id_grupo int)
BEGIN
	SELECT 	I.id_incidencia, 
			I.descrip_incidencia, 
            I.fec_ing_incidencia, 
            I.resumen_incidencia, 
			I.solucion_incidencia,
            empre.raz_soc_empresa, 
            C.nombre_cliente, 
            G.nombre_grupo,
            I.id_empleado,
            PER.nombre_persona AS nombre_operador, 
            (select nombre_persona from TB_PERSONA where id_persona = I.id_empleado) as nombre_empleado,
            EST.descrip_estado, 
            P.descrip_prioridad
    FROM TB_INCIDENCIA I 
    JOIN TB_CLIENTE C ON I.ID_CLIENTE = C.ID_CLIENTE
    JOIN TB_GRUPO G ON I.ID_GRUPO = G.ID_GRUPO
    JOIN tb_empresa_cliente empcli ON empcli.id_cliente = I.ID_CLIENTE
    JOIN tb_empresa empre ON empre.id_empresa = empcli.id_empresa
    JOIN TB_ESTADO EST ON I.ID_ESTADO = EST.ID_ESTADO
    JOIN TB_PRIORIDAD P ON I.ID_PRIORIDAD = P.ID_PRIORIDAD
    JOIN TB_PERSONA PER ON I.ID_OPERADOR = PER.ID_PERSONA 
    WHERE G.id_grupo = id_grupo;
END //
DELIMITER ;

-- select * from tb_rol;
call USP_TB_INCIDENCIA_LISTADO_POR_GRUPO(2);

select u.*,p.id_persona,concat(p.nombre_persona,' ',p.ape_mat_persona,' ',p.ape_pat_persona) as Persona, r.* 
	from tb_usuario u join tb_persona p on id_usuario = id_persona join tb_operador o on p.id_persona=o.id_operador join tb_rol r on o.id_rol=r.id_rol;

select u.*,p.id_persona, concat(p.nombre_persona,' ',p.ape_mat_persona,' ',p.ape_pat_persona) as Persona, r.*,  g.*
	from tb_usuario u join tb_persona p on id_usuario = id_persona join tb_empleado e on p.id_persona=e.id_empleado join tb_rol r on e.id_rol=r.id_rol join tb_grupo g on e.id_grupo=g.id_grupo; 


select * from tb_incidencia where id_empleado = 2;


select u.*,p.id_persona, concat(p.nombre_persona,' ',p.ape_mat_persona,' ',p.ape_pat_persona) as Persona, r.*,  g.*
	from tb_usuario u join tb_persona p on id_usuario = id_persona join tb_empleado e on p.id_persona=e.id_empleado join 
		tb_rol r on e.id_rol=r.id_rol join tb_grupo g on e.id_grupo=g.id_grupo
			where r.id_rol=1;
            
select
i.id_empleado, 
concat(p.nombre_persona,' ',p.ape_mat_persona,' ',p.ape_pat_persona) as Persona, 
count(*) as TotalIncidencias,
(select count(*) from tb_incidencia 	inc where inc.id_prioridad=1 and inc.id_empleado=5) as Alta, 
(select count(*) from tb_incidencia 	inc where inc.id_prioridad=2 and inc.id_empleado=5) as Media,
(select count(*) from tb_incidencia 	inc where inc.id_prioridad=3 and inc.id_empleado=5) as Baja
from tb_incidencia i join tb_grupo g on i.id_grupo=g.id_grupo join tb_empleado e on e.id_empleado=i.id_empleado join tb_persona p on e.id_empleado=p.id_persona
where i.id_grupo=2 and i.id_empleado=5;



select i.id_incidencia, p.descrip_prioridad from tb_incidencia i join tb_prioridad p on i.id_prioridad = p.id_prioridad;

select* from tb_prioridad;
select count(*) as Alta from tb_incidencia where id_prioridad=1  ;
select count(*) as Media from tb_incidencia where id_prioridad=2 ;
select count(*) as Baja from tb_incidencia where id_prioridad=3  ;


select * from tb_incidencia where id_estado = 1;
/* 1 ('Registrado'),*/
/* 2 ('En espera'),*/
/* 3 ('Asignado'),*/
/* 4 ('Reasignado'),*/
/* 5 ('Resuelto'),*/
/* 6 ('Notificado');*/
select * from tb_rol;

select * from tb_empleado e join tb_incidencia i on e.id_empleado=i.id_empleado  where e.id_rol between 2 and 3 ;

select * from tb_incidencia where id_grupo=2;

select * from tb_empleado where  id_empleado between 6 and 8;













 	select
	i.id_empleado, 	
	concat(p.nombre_persona,' ',p.ape_mat_persona,' ',p.ape_pat_persona) as Persona, 
	count(*) as TotalIncidencias,
	(select count(*) from tb_incidencia inc where inc.id_prioridad=1 and inc.id_empleado=5) as Alta, 
	(select count(*) from tb_incidencia inc where inc.id_prioridad=2 and inc.id_empleado=5) as Media,
	(select count(*) from tb_incidencia inc where inc.id_prioridad=3 and inc.id_empleado=5) as Baja
	from tb_incidencia i
	join tb_empleado 	e on 	e.id_empleado	=	i.id_empleado 
	join tb_persona		p on 	e.id_empleado	=	p.id_persona
	where i.id_grupo=2 and i.id_empleado=5;
    
    select  i.id_empleado   from tb_incidencia i   where i.id_grupo=2 and i.id_empleado=5;
    
    select * from tb_empleado;
    
    select id_empleado from tb_empleado;
    
    
    
    
    
    
    
    
    
    

    
    
    
    
    
    


 	select
	e.id_empleado, e.id_rol,
    p.nombre_persona,p.ape_mat_persona,p.ape_pat_persona, 
	(select count(*) from tb_incidencia inc where inc.id_empleado=e.id_empleado) as numeroIncidentes,
	(select count(*) from tb_incidencia inc where inc.id_prioridad=1 and inc.id_empleado=e.id_empleado) as Alta, 
	(select count(*) from tb_incidencia inc where inc.id_prioridad=2 and inc.id_empleado=e.id_empleado) as Media,
	(select count(*) from tb_incidencia inc where inc.id_prioridad=3 and inc.id_empleado=e.id_empleado) as Baja
	from tb_empleado  	e
    join tb_persona		p     on 		e.id_empleado	=	p.id_persona where e.id_grupo = 1 ;
    
    
    select * from tb_incidencia where id_grupo=2;
    
    
    
    select * from tb_empleado e left join tb_incidencia i on i.id_empleado=e.id_empleado where e.id_grupo=2 ;
    

    select * from tb_incidencia where id_grupo=1;
    
    
    
    
    select * from tb_usuario;
    
    
    select * from tb_incidencia where id_empleado = 1;
    
    
    select * from tb_rol;
    
    
    select * from tb_estado;
    
    
    select * from tb_incidencia where id_estado = 1;
    
    select * from tb_persona where id_persona =13;
    
    
    DROP PROCEDURE IF EXISTS USP_TB_INCIDENCIA_LISTADO_REPORTE_POR_GRUPO;
DELIMITER //
CREATE PROCEDURE USP_TB_INCIDENCIA_LISTADO_REPORTE_POR_GRUPO ()
BEGIN
SELECT count(*) as idGrupo, P.descrip_prioridad
    FROM TB_INCIDENCIA I 
    JOIN TB_CLIENTE C ON I.ID_CLIENTE = C.ID_CLIENTE
    JOIN TB_GRUPO G ON I.ID_GRUPO = G.ID_GRUPO
    JOIN tb_empresa_cliente empcli ON empcli.id_cliente = I.ID_CLIENTE
    JOIN tb_empresa empre ON empre.id_empresa = empcli.id_empresa
    JOIN TB_ESTADO EST ON I.ID_ESTADO = EST.ID_ESTADO
    JOIN TB_PRIORIDAD P ON I.ID_PRIORIDAD = P.ID_PRIORIDAD
    JOIN TB_PERSONA PER ON I.ID_OPERADOR = PER.ID_PERSONA
    GROUP BY P.descrip_prioridad;
END //
DELIMITER ;
call USP_TB_INCIDENCIA_LISTADO_REPORTE_POR_GRUPO;










select * from tb_incidencia;



