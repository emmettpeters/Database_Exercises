 USE codeup_test_db;

 DROP TABLE IF EXISTS albums;

 CREATE TABLE IF NOT EXISTS albums(

 	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 	artist VARCHAR(40) DEFAULT "NONE",
 	name VARCHAR(100) DEFAULT "NONE",
 	release_date YEAR(4),
 	sales FLOAT(13,2),
 	genre VARCHAR(40),
 	PRIMARY KEY (id)
 );
