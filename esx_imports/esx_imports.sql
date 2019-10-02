INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_importdealer','Concessionnaire',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_importdealer','Importdealer',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('importdealer','Importdealer')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('importdealer',0,'recruit','Recrue',10,'{}','{}'),
	('importdealer',1,'novice','Novice',25,'{}','{}'),
	('importdealer',2,'experienced',' Co-owner',40,'{}','{}'),
	('importdealer',3,'boss','Owner',0,'{}','{}')
;

CREATE TABLE `importdealer_vehicles` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `importvehicle_sold` (
	`client` VARCHAR(50) NOT NULL,
	`model` VARCHAR(50) NOT NULL,
	`plate` VARCHAR(50) NOT NULL,
	`soldby` VARCHAR(50) NOT NULL,
	`date` VARCHAR(50) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `importowned_vehicles` (
	`owner` varchar(22) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
	`job` VARCHAR(20) NULL DEFAULT NULL,
	`stored` TINYINT(1) NOT NULL DEFAULT '0',

	PRIMARY KEY (`plate`)
);

CREATE TABLE `importrented_vehicles` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(22) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `importedvehicle_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `importedvehicle_categories` (name, label) VALUES
	('import','import'),
   ('importtwo','importtwo')
;

CREATE TABLE `importedvehicles` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,

	PRIMARY KEY (`model`)
);

INSERT INTO `importedvehicles` (name, model, price, category) VALUES
	('slutan','slutan',15000,'import'),
	('slutanrs','slutanrs',18000,'import'),
	('Hustler', 'hustler', 625000, 'importtwo')
;
