/*
SQLyog Professional v12.09 (32 bit)
MySQL - 10.1.38-MariaDB : Database - virtual_tour
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`virtual_tour` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `virtual_tour`;

/*Table structure for table `autor` */

DROP TABLE IF EXISTS `autor`;

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion_autor` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `autor` */

insert  into `autor`(`id_autor`,`nombre`,`descripcion_autor`) values (1,'Félix Parra Hernández','Nació en la ciudad de Morelia, Michoacán; el 17 de noviembre de 1845 y falleció en el año 1919 en Tacubaya, Cd. De México, sus padres fueron D. Mariano Ramón Parra y doña Juliana Hernández. En las escuelas donde cursó su instrucción primaria ya daba '),(2,'Alfredo Arreguín ','Nació en Morelia en 1935, siendo un joven migró a los Estados Unidos en donde realizó estudios de arte en la Universidad de Washington. Desde 1956 es reconocido internacionalmente como artista por sus vibrantes y cautivadoras pinturas. En voz propia,');

/*Table structure for table `comentarios` */

DROP TABLE IF EXISTS `comentarios`;

CREATE TABLE `comentarios` (
  `id_comment` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(150) DEFAULT NULL,
  `id_us` int(11) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_us` (`id_us`),
  CONSTRAINT `id_us` FOREIGN KEY (`id_us`) REFERENCES `usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comentarios` */

/*Table structure for table `leyendas` */

DROP TABLE IF EXISTS `leyendas`;

CREATE TABLE `leyendas` (
  `id_leyenda` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `origen` varchar(35) DEFAULT NULL,
  `descripcion` varchar(800) DEFAULT NULL,
  `enlace_img` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_leyenda`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `leyendas` */

insert  into `leyendas`(`id_leyenda`,`nombre`,`origen`,`descripcion`,`enlace_img`) values (1,'La princesa del lago de Zirahuen','Zirahuen, Michoacan.','En un poblado de la región purépecha nació una princesa muy hermosa, hija de un poderoso cacique. Descendiente de un rey quien aspiraba enamorarse de hombre valiente y con un corazón bondadoso.',NULL);

/*Table structure for table `museos_y_sitios` */

DROP TABLE IF EXISTS `museos_y_sitios`;

CREATE TABLE `museos_y_sitios` (
  `id_place` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `horario_entrada` varchar(20) DEFAULT NULL,
  `horario_salida` varchar(20) DEFAULT NULL,
  `contacto` varchar(20) DEFAULT NULL,
  `descripcion` varchar(800) DEFAULT NULL,
  `enlace_img` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_place`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `museos_y_sitios` */

insert  into `museos_y_sitios`(`id_place`,`nombre`,`direccion`,`horario_entrada`,`horario_salida`,`contacto`,`descripcion`,`enlace_img`) values (1,'Casa de la cultura','Calle: Av. Morelos Norte #485; Colonia:C','09:00 AM','19:00 PM',NULL,'El edificio que actualmente conocemos con la Casa de la Cultura de Morelia inicia su historia en el año 1593 (en este 2017 cumple 424 años desde el inicio de su construcción) cuando los monjes carmelitas iniciaron la construcción del templo y que les',NULL),(2,'Museo del dulce','Av Francisco I. Madero Ote 440, Centro h','10:00 AM','20:00 PM','443 312 0477','Un museo dedicado al rescate histórico de los dulces tradicionales en Michoacán. Se encuentra dentro de la tienda Calle Real. Ofrece recorridos con un panorama general de la elaboración de este patrimonio gastronómico, desde su origen en las cocinas ',NULL);

/*Table structure for table `obras` */

DROP TABLE IF EXISTS `obras`;

CREATE TABLE `obras` (
  `id_obra` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `fecha_creacion` year(4) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `enlace_img` varchar(75) DEFAULT NULL,
  `id_aut` int(11) NOT NULL,
  `id_mus` int(11) NOT NULL,
  PRIMARY KEY (`id_obra`),
  KEY `id_aut` (`id_aut`),
  KEY `id_mus` (`id_mus`),
  CONSTRAINT `id_aut` FOREIGN KEY (`id_aut`) REFERENCES `autor` (`id_autor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_mus` FOREIGN KEY (`id_mus`) REFERENCES `museos_y_sitios` (`id_place`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `obras` */

insert  into `obras`(`id_obra`,`nombre`,`fecha_creacion`,`descripcion`,`enlace_img`,`id_aut`,`id_mus`) values (1,'Galileo en la universidad de P',0000,'Óleo sobre tela',NULL,1,1),(3,'Fray Bartolomé de las Casas',0000,'Oleo sobre tela',NULL,1,1),(4,'El joven Zapata',1993,'Oleo sobre tela',NULL,2,2);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `rango` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
