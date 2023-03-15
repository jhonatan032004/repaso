CREATE DATABASE USER COLLATE "UTF8_GENERAL_CI";

CREATE TABLE USERS (
    ID INT(5) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(50)
);

-- PROCEDIMEINTOS ALMACENADOS
--INSERTAR
CREATE PROCEDURE `spInsertUser`(IN `_NAME` VARCHAR(50)) NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER 
BEGIN 
    INSERT INTO USERS(NAME) VALUES (_NAME); 
END;

CALL spInsertUser('manolo');

--MOSTRAR TODO
CREATE PROCEDURE `spFindAllUser`() NOT DETERMINISTIC NO SQL SQL SECURITY DEFINER 
BEGIN 
    SELECT ID, NAME FROM USERS; 
END;

CALL spFindAllUser();