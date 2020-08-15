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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `autor` */

insert  into `autor`(`id_autor`,`nombre`,`descripcion_autor`) values (1,'Félix Parra Hernández','Nació en la ciudad de Morelia, Michoacán; el 17 de noviembre de 1845 y falleció en el año 1919 en Tacubaya, Cd. De México, sus padres fueron D. Mariano Ramón Parra y doña Juliana Hernández. En las escuelas donde cursó su instrucción primaria ya daba '),(2,'Alfredo Arreguín ','Nació en Morelia en 1935, siendo un joven migró a los Estados Unidos en donde realizó estudios de arte en la Universidad de Washington. Desde 1956 es reconocido internacionalmente como artista por sus vibrantes y cautivadoras pinturas. En voz propia,'),(3,'Autor Desconocido','Su autor es desconocido, la obra fue recuperada y resguardada en el museo.'),(4,'Agustín Cárdenas Castro','Agustín Cárdenas Castro nació en la comunidad de Patamban municipio de Tangancícuaro el 3 de octubre de 1936. Creador michoacano prolífico en el ámbito de la música y las artes plásticas. En la Ciudad de México tomó clases en la Academia de San Carlos, y cátedras particulares con artistas de la talla de Armando García Núñez y Diego Rivera. Discípulo también del maestro Alfredo Salce.'),(5,'Alfredo Zalce Torres','Nació en Pátzcuaro, Michoacán, el 12 de enero de 1908. Se le considera como uno de los pilares del muralismo en México y una de las figuras del arte moderno mexicano. Era uno de los artistas más versátiles de México, pues abordaba diferentes técnicas para producir su obra como óleo, acrílico, batik, lápiz, tinta, acuarela, temple, pastel, collage, grabado, serigrafía, gráfica, litografía, bronce, piedra, pastel, cerámica, monotipo, y demás. '),(6,'Gustavo González Valadez','Coordinador del programa S.O.S,ofrece información, orientación y talleres para minimizar la generación de residuos y sus efectos adversos al medio ambiente y la salud. '),(7,'Artistas desconocidos','No se conoce el grupo de artistas, la obra fue recuperada y resguardada en el museo');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `leyendas` */

insert  into `leyendas`(`id_leyenda`,`nombre`,`origen`,`descripcion`,`enlace_img`) values (1,'La princesa del lago de Zirahuen','Zirahuen, Michoacan.','En la región purépecha nació una princesa;ella se enamoro del principe enemigo, cuando su padre se enteró de la relación, enfureció y puso una condición para que el pudiese estar con su hija: Tenían que pelear ambos ejércitos. El principe acepto y lucho hasta salir vencedor. El padre dijo: Falta vencer al príncipe mas vigoroso, ‘’YO’’. La princesa intervino para evitar una pelea y dijo:-No quiero ser la causa de la muerte de ninguno de los dos. Desconsolada sintió una enorme tristeza y se subio a un cerro a llorar descontroladamente, sabiendo que no volvería ver mas a su amado. Sus lágrmas eran tan pesadas y candentes que hicieron un pozo que se fue desbordando al paso de los días ahogando a la princesa e inundando al pueblo que quedó cubierto por lo que ahora se llama lago de Zirahuén.','img/leyenda_lago_zirahuen.jpg'),(2,'La cañada de las vírgenes','Uruapan, Michoacan.','En la época prehispánica en Michoacán entre Uruapan y las cuevas de sierra madre occidental, se ofrecían sacrificios de vírgenes para los Dioses, a las que se les arrancaba el corazón a orillas del río. El lugar fue maldito y se le conoce como la cañada de las vírgenes, la leyenda narra como un español y su hijo que querían invertir en plantaciones de tabaco por la fertilidad de las tierras de Uruapan.','img/leyenda_canada_de_las_virgenes.jpg'),(3,'El tesoro de la catedral de Morelia','Morelia, Michoacan.','Narra la leyenda que en Valladolid, había una entrada a un túnel, que estaba tapada por unas enormes piedras, los habitantes de la región escuchaban aterradores gritos provenientes del túnel. Dicen que los gritos pertenecen a bandidos  cuyas almas fueron condenadas  a vagar en el interior del túnel, eran unos rufianes que en épocas de otrora robaron el tesoro de la catedral de Morelia.','img/leyenda_catedral.jpg'),(4,'La mano de san Agustin','Morelia, Michoacan.','Este monasterio es una de las edificaciones más antiguas de Valladolid, ya que data de mediados del siglo XVI. Su fachada es de estilo plateresco y las columnas corintias se conjugan con la sobriedad de la plaza frente al templo. Existe un relato que dice que a un célebre padre de nombre Marosho, durante una noche de estudio en la biblioteca del convento, se le apareció una mano negra entre las tinieblas. Marosho en lugar de mostrarse con miedo, le encomendó la tarea de sostenerle la vela para continuar leyendo. Otro día la mano le señaló un rincón, pero él no le hizo caso. Años más tarde, otro padre halló un tesoro en el lugar donde la mano señalaba.','img/leyenda_mano_peluda.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `museos_y_sitios` */

insert  into `museos_y_sitios`(`id_place`,`nombre`,`direccion`,`horario_entrada`,`horario_salida`,`contacto`,`descripcion`,`enlace_img`) values (1,'Casa de la cultura','Calle: Av. Morelos Norte #485; Colonia:C','09:00 AM','19:00 PM','443 688 4825','El edificio que actualmente conocemos con la Casa de la Cultura de Morelia inicia su historia en el año 1593 (en este 2017 cumple 424 años desde el inicio de su construcción) cuando los monjes carmelitas iniciaron la construcción del templo y que les',NULL),(2,'Museo del dulce','Av Francisco I. Madero Ote 440, Centro h','10:00 AM','20:00 PM','443 312 0477','Un museo dedicado al rescate histórico de los dulces tradicionales en Michoacán. Se encuentra dentro de la tienda Calle Real. Ofrece recorridos con un panorama general de la elaboración de este patrimonio gastronómico, desde su origen en las cocinas ',NULL),(3,'Museo de la Máscara','Calle: Av. Morelos Norte #485; Colonia:C','09:00 AM','19:00 PM','443 688 4825','Ubicado en la Casa de la Cultura de Morelia, este museo alberga dos colecciones de máscaras, con 167 objetos provenientes de cerca de 20 estados de la República',NULL),(4,'Alfredo Zalce','Av Acueducto 18, Centro histórico de Mor','08:00 AM','20:00 PM','443 312 4544','El inmueble que ocupa el MACAZ es una mansión de fines del siglo XIX con dos niveles y rodeada de jardines. El museo fue fundado como galería de arte por un grupo de artistas de la entidad entre los cuales se encontraba J. Jesús Escalera y Manuel Aguilar de la Torre, inaugurándose el 30 de septiembre de 1971 con el nombre de “Galería de Arte Contemporáneo de Michoacán”.',NULL),(5,'Museo de los Residuos SOS','Perif. Paseo de la República 5500, Col. ','09:00 AM','15:00 PM','443 327 4677','Un museo fundado en el año 2016 por Gustavo González. El museo brinda información y asesoramiento sobre el manejo de residuos, a través de 11 escenarios, como el de la selva del relleno sanitario, en donde se muestra y se detalla su funcionamiento. Cuenta con 19 esculturas elaboradas con desechos, talleres de composta, reciclaje, lombricomposta, entre otros. La Lotería es otro juego muy famoso dentro del museo, ya que mientras aprenden sobre calentamiento global, se divierten y conviven con las demás personas.',NULL),(6,'Museo de Arte Colonial','•	Benito Juárez #240, Centro Histórico, ','09:00 AM','19:00 PM','443 313 9260','El Museo de Arte Colonial (MAC) en Morelia puede parecer pequeño en tamaño pero ostenta un extraordinario valor por los documentos, libros antiguos, ornamentos religiosos, pinturas y mapas de la época virreinal, que se exhiben en sus salas. La sede del museo es una casona barroca de la época colonial del siglo XVIII, un edificio de valor histórico y arquitectónico, adaptado al estilo neoclásico durante el siglo XIX. En este lugar, en el año de 1821, se instaló la primera imprenta de la ciudad, la cual estuvo dirigida por don Luis Arango.',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `obras` */

insert  into `obras`(`id_obra`,`nombre`,`fecha_creacion`,`descripcion`,`enlace_img`,`id_aut`,`id_mus`) values (1,'Galileo en la universidad de P',0000,'Óleo sobre tela',NULL,1,1),(3,'Fray Bartolomé de las Casas',0000,'Oleo sobre tela',NULL,1,1),(4,'El joven Zapata',1993,'Oleo sobre tela',NULL,2,2),(8,'Máscara del demonio ',2000,'Elaborado en Tócuaro. Esta pieza de arte conquistan al más escéptico. El diablo como figura principal, con insectos, cuernos y extremidades varias hacen de esta una artesanía excepcional.',NULL,3,3),(9,'Mascara Danza de los viejitos',2000,'Su origen nos lleva a la Isla de Jarácuaro, dentro del lago de Pátzcuaro, durante la época prehispánica, cuando formaba parte del ritual en honor al Dios Viejo, Dios del Fuego o Dios Sol.',NULL,3,3),(10,'Morelos y la Justicia',1976,'Mural titulado “Morelos y la Justicia” realizado en 1976. La obra representa a José María Morelos y Pavón héroe de la Independencia de México originario de Valladolid Morelia.',NULL,4,4),(11,'“Acróbata” y “Bailarinas”',1995,'Numerada como la segunda de una serie de 10, “Mujer” fue integrada al acervo artístico del MACAZ el 18 de mayo de 1999, a la par de las piezas coetáneas tituladas “Acróbata” y “Bailarinas”.',NULL,5,4),(12,'Hulefante',2015,'Se refiere a una escultura de un elefante armada en el año 2015 por gustavo gonzalez  esta constituida principalmente por residuos de llantas y es la obra principal y la que causo la fundación de el museo se expone con la frase incluso en la basura s',NULL,6,5),(14,'Cristo Negro',0000,'El cristo negro data de épocas coloniales y fue hecho por  nativos en la época  de la colonia fue renovado y llego al museo en el año 2009  añadiendo placas en la parte trasera protegiéndolo ',NULL,7,6),(15,'Cristo de pasta de caña',2000,'EL MUSEO  POSEE UNA GRAN COLLECCION DE CRISTOS DE CAÑA La sala uno resguarda distintas esculturas en caña de maíz, técnica que surge en el territorio del imperio purépecha, con la cual los antiguos indígenas fabricaban las representaciones de sus div',NULL,7,6);

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
