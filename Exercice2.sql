-- Database: Bootcamp

-- DROP DATABASE IF EXISTS "Bootcamp";

CREATE DATABASE "Bootcamp"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	SELECT * FROM etudiants
	
	UPDATE etudiants 
	SET birth_date = '02/11/1998'
	WHERE id_etudiant IN (1, 3)
	
	UPDATE etudiants 
	SET nom = 'Guez'
	WHERE id_etudiant = 5
	
	DELETE FROM etudiants
	WHERE id_etudiant = 3
	
	SELECT COUNT(*) FROM etudiants
	WHERE birth_date > '01/01/2000'
	
	ALTER TABLE etudiants
	ADD math_grade VARCHAR(30)
	
	UPDATE etudiants 
	SET math_grade = '80'
	WHERE id_etudiant = 1
	
	UPDATE etudiants 
	SET math_grade = '90'
	WHERE id_etudiant = 2 OR id_etudiant = 4
	
	SELECT * FROM etudiants
	
	UPDATE etudiants 
	SET math_grade = '40'
	WHERE id_etudiant = 6
	
	SELECT COUNT(*) FROM etudiants
	WHERE math_grade > '83'
	
	INSERT INTO etudiants (nom, prenoms, birth_date,math_grade)
	VALUES ('Omer','Simpson','03/10/1980','70')
	
	
	SELECT 	nom||' '|| prenoms AS fullname, COUNT(*), SUM(math_grade) FROM etudiants
	GROUP BY fullname
	