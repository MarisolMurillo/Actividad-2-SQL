-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para comercializadora_la_45
DROP DATABASE IF EXISTS `comercializadora_la_45`;
CREATE DATABASE IF NOT EXISTS `comercializadora_la_45` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `comercializadora_la_45`;

-- Volcando estructura para tabla comercializadora_la_45.freights
DROP TABLE IF EXISTS `freights`;
CREATE TABLE IF NOT EXISTS `freights` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `carrier name` varchar(45) NOT NULL DEFAULT '',
  `car brand` varchar(45) NOT NULL DEFAULT '',
  `shipping cost` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Este campo llamado fletes encontraras la informacion acerca de trasporte de la empresa';

-- Volcando datos para la tabla comercializadora_la_45.freights: ~3 rows (aproximadamente)
DELETE FROM `freights`;
INSERT INTO `freights` (`id`, `name`, `carrier name`, `car brand`, `shipping cost`) VALUES
	(1, 'plabo hernandes ', 'transpor caribe', 'renault logan', '300000'),
	(2, 'maria mosquera ', 'trasportadora sol', 'scania', '50000'),
	(3, 'stiven marco perea', 'san german ', 'daf trucks', '170000');

-- Volcando estructura para tabla comercializadora_la_45.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `cost` float(23,5) NOT NULL,
  `measure` varchar(45) NOT NULL,
  `quantity` mediumint(7) NOT NULL DEFAULT 0,
  `date purchase` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='Este campo contiene la informacion de productos ';

-- Volcando datos para la tabla comercializadora_la_45.products: ~0 rows (aproximadamente)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `cost`, `measure`, `quantity`, `date purchase`) VALUES
	(1, 'camisetas ', 2100.00000, 'xl', 31, '2018-07-12'),
	(2, 'pantalonestas ', 15000.00000, 'm', 100, '2021-08-07'),
	(3, 'camisas estampadas', 10000.00000, 's', 20, '2022-02-28');

-- Volcando estructura para tabla comercializadora_la_45.suppliers
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '""',
  `phone` varchar(45) NOT NULL DEFAULT '323222423',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='En este campo esta la informacion acerca de los proveedores de la empresa';

-- Volcando datos para la tabla comercializadora_la_45.suppliers: ~3 rows (aproximadamente)
DELETE FROM `suppliers`;
INSERT INTO `suppliers` (`id`, `name`, `phone`) VALUES
	(1, 'Diana ', '323222423'),
	(2, 'pinterest ', '3124356712'),
	(3, 'corona ', '323222423');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
