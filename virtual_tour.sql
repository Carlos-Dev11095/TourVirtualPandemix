/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.7.31-0ubuntu0.16.04.1 : Database - virtual_tour
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`virtual_tour` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `virtual_tour`;

/*Table structure for table `autor` */

DROP TABLE IF EXISTS `autor`;

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_autor` varchar(50) DEFAULT NULL,
  `descripcion_autor` varchar(500) DEFAULT NULL,
  `img_autor` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `autor` */

insert  into `autor`(`id_autor`,`nombre_autor`,`descripcion_autor`,`img_autor`) values (1,'Arturo P?rez Morelos','Naci? en la ciudad de Morelia, Michoac?n; el 17 de noviembre de 1970','img/autor_obra/alf.jpg'),(2,'Alfredo Arregu?n ','Naci? en Morelia en 1935, siendo un joven migr? a los Estados Unidos en donde realiz? estudios de arte en la Universidad de Washington. Desde 1956 es reconocido internacionalmente como artista por sus vibrantes y cautivadoras pinturas. En voz propia,','img/autor_obra/alfr_arre.jpg'),(3,'\r\nfelix parra','Su autor es desconocido, la obra fue recuperada y resguardada en el museo.','img/autor_obra/unnamed.png'),(4,'Agust?n C?rdenas Castro','Agust?n C?rdenas Castro naci? en la comunidad de Patamban municipio de Tanganc?cuaro el 3 de octubre de 1936. Creador michoacano prol?fico en el ?mbito de la m?sica y las artes pl?sticas. En la Ciudad de M?xico tom? clases en la Academia de San Carlos, y c?tedras particulares con artistas de la talla de Armando Garc?a N??ez y Diego Rivera. Disc?pulo tambi?n del maestro Alfredo Salce.','img/autor_obra/agus.jpg'),(5,'Gustavo Gonz?lez Valadez','Coordinador del programa S.O.S,ofrece informaci?n, orientaci?n y talleres para minimizar la generaci?n de residuos y sus efectos adversos al medio ambiente y la salud. ','img/autor_obra/gus.jpg'),(6,'Alfredo Zalce',' fue un artista pl?stico mexicano, una de las figuras l?deres del arte moderno mexicano. ','img/autor_obra/alfredzal.jpg'),(7,'Artistas desconocidos','No se conoce el grupo de artistas, la obra fue recuperada y resguardada en el museo','img/autor_obra/unnamed.png'),(8,'artista desconocido','No se conoce el artista','img/autor_obra/unnamed.png'),(9,'anonimo','desconocido','img/autor_obra/unnamed.png'),(10,'sin autor','obra de autor desconocido','img/autor_obra/unnamed.png');

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

insert  into `leyendas`(`id_leyenda`,`nombre`,`origen`,`descripcion`,`enlace_img`) values (1,'La princesa del lago de Zirahuen','Zirahuen, Michoacan.','En la regi?n pur?pecha naci? una princesa;ella se enamoro del principe enemigo, cuando su padre se enter? de la relaci?n, enfureci? y puso una condici?n para que el pudiese estar con su hija: Ten?an que pelear ambos ej?rcitos. El principe acepto y lucho hasta salir vencedor. El padre dijo: Falta vencer al pr?ncipe mas vigoroso, \'YO\'. La princesa intervino para evitar una pelea y dijo:-No quiero ser la causa de la muerte de ninguno de los dos. Desconsolada sinti? una enorme tristeza y se subio a un cerro a llorar descontroladamente, sabiendo que no volver?a ver mas a su amado. Sus l?grmas eran tan pesadas y candentes que hicieron un pozo que se fue desbordando al paso de los d?as ahogando a la princesa e inundando al pueblo que qued? cubierto por lo que ahora se llama lago de Zirahu?n.','img/leyendas/leyenda_lago_zirahuen.jpg'),(2,'La ca?ada de las v?rgenes','Uruapan, Michoacan.','En la ?poca prehisp?nica en Michoac?n entre Uruapan y las cuevas de sierra madre occidental, se ofrec?an sacrificios de v?rgenes para los Dioses, a las que se les arrancaba el coraz?n a orillas del r?o. El lugar fue maldito y se le conoce como la ca?ada de las v?rgenes, la leyenda narra como un espa?ol y su hijo que quer?an invertir en plantaciones de tabaco por la fertilidad de las tierras de Uruapan.','img/leyendas/leyenda_canada_de_las_virgenes.jpg'),(3,'El tesoro de la catedral de Morelia','Morelia, Michoacan.','Narra la leyenda que en Valladolid, hab?a una entrada a un t?nel, que estaba tapada por unas enormes piedras, los habitantes de la regi?n escuchaban aterradores gritos provenientes del t?nel. Dicen que los gritos pertenecen a bandidos  cuyas almas fueron condenadas  a vagar en el interior del t?nel, eran unos rufianes que en ?pocas de otrora robaron el tesoro de la catedral de Morelia.','img/leyendas/leyenda_catedral.jpg'),(4,'La mano de san Agustin','Morelia, Michoacan.','Este monasterio es una de las edificaciones m?s antiguas de Valladolid, ya que data de mediados del siglo XVI. Su fachada es de estilo plateresco y las columnas corintias se conjugan con la sobriedad de la plaza frente al templo. Existe un relato que dice que a un c?lebre padre de nombre Marosho, durante una noche de estudio en la biblioteca del convento, se le apareci? una mano negra entre las tinieblas. Marosho en lugar de mostrarse con miedo, le encomend? la tarea de sostenerle la vela para continuar leyendo. Otro d?a la mano le se?al? un rinc?n, pero ?l no le hizo caso. A?os m?s tarde, otro padre hall? un tesoro en el lugar donde la mano se?alaba.','img/leyendas/leyenda_mano_peluda.jpg');

/*Table structure for table `museos_y_sitios` */

DROP TABLE IF EXISTS `museos_y_sitios`;

CREATE TABLE `museos_y_sitios` (
  `id_museo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `horario_entrada` varchar(20) DEFAULT NULL,
  `horario_salida` varchar(20) DEFAULT NULL,
  `contacto` varchar(20) DEFAULT NULL,
  `descripcion` varchar(800) DEFAULT NULL,
  `enlace_img` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_museo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `museos_y_sitios` */

insert  into `museos_y_sitios`(`id_museo`,`nombre`,`direccion`,`horario_entrada`,`horario_salida`,`contacto`,`descripcion`,`enlace_img`) values (1,'CASA DE LA CULTURA','La Corregidora #113, esq. con Garc?a Obeso, Centro Hist?rico,','09:00 AM','19:00 PM','443 688 4825','El edificio que actualmente conocemos con la Casa de la Cultura de Morelia inicia su historia en el a?o 1593 (en este 2017 cumple 424 a?os desde el inicio de su construcci?n) cuando los monjes carmelitas iniciaron la construcci?n del templo','img/museos/museocasacultura.jpg'),(2,'MUSEO DEL DULCE','Av Francisco I. Madero Ote 440','10:00 AM','20:00 PM','443 312 0477','Un museo dedicado al rescate hist?rico de los dulces tradicionales en Michoac?n. Se encuentra dentro de la tienda Calle Real.Ofrece recorridos con un panorama general de la elaboraci?n de este patrimonio gastron?mico, desde su origen en las cocinas.','img/museos/museodulce.jpg'),(3,'MUSEO CASA NATAL DE MORELOS','Av Morelos Nte 485, Centro hist?rico de Morelia, 58000 Morelia, Mich.','09:00 AM','19:00 PM','443 688 4825','Es un edificio hist?rico de estilo neocl?sico, es el lugar donde naci?, el 30 de septiembre de 1765, el h?roe de la Independencia de M?xico, Jos? Mar?a Teclo Morelos P?rez y Pav?n, mejor conocido como Jos? Mar?a Morelos y Pav?n.','img/museos/museo_morelos.jpg'),(4,'MUSEO \"ALFREDO ZALCE\"','Av Acueducto 18, Centro hist?rico de Morelia, 58000 Morelia, Mich.','08:00 AM','20:00 PM','443 312 4544','El inmueble que ocupa el MACAZ es una mansi?n de fines del siglo XIX con dos niveles y rodeada de jardines. El museo fue fundado como galer?a de arte por un grupo de artistas de la entidad entre los cuales se encontraba J. Jes?s Escalera y Manuel Aguilar de la Torre, inaugur?ndose el 30 de septiembre de 1971 con el nombre de \"Galer?a de Arte Contempor?neo de Michoac?n\".','img/museos/mueso-alfredo-zalce.jpg'),(5,'Museo de los Residuos \"SOS\"','Perif. Paseo de la Rep?blica 6500, Lago 1, 58115 Morelia, Mich.','09:00 AM','15:00 PM','443 327 4677','Un museo fundado en el a?o 2016 por Gustavo Gonz?lez. El museo brinda informaci?n y asesoramiento sobre el manejo de residuos, a trav?s de 11 escenarios, como el de la selva del relleno sanitario, en donde se muestra y se detalla su funcionamiento. Cuenta con 19 esculturas elaboradas con desechos, talleres de composta, reciclaje, lombricomposta, entre otros. La Loter?a es otro juego muy famoso dentro del museo, ya que mientras aprenden sobre calentamiento global, se divierten y conviven con las dem?s personas.','img/museos/sosMuseo.jpg'),(6,'Museo de Arte Colonial','Benito Ju?rez #240, Centro Hist?rico, ','09:00 AM','19:00 PM','443 313 9260','El Museo de Arte Colonial (MAC) en Morelia puede parecer peque?o en tama?o pero ostenta un extraordinario valor por los documentos, libros antiguos, ornamentos religiosos, pinturas y mapas de la ?poca virreinal, que se exhiben en sus salas. La sede del museo es una casona barroca de la ?poca colonial del siglo XVIII, un edificio de valor hist?rico y arquitect?nico, adaptado al estilo neocl?sico durante el siglo XIX. En este lugar, en el a?o de 1821, se instal? la primera imprenta de la ciudad, la cual estuvo dirigida por don Luis Arango.','img/museos/MuseoArteCol.jpg');

/*Table structure for table `obras` */

DROP TABLE IF EXISTS `obras`;

CREATE TABLE `obras` (
  `id_obra` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_obra` varchar(50) DEFAULT NULL,
  `fecha_creacion` year(4) DEFAULT NULL,
  `descripcion_obra` varchar(250) DEFAULT NULL,
  `id_autor` int(11) NOT NULL,
  `id_museo` int(11) NOT NULL,
  `img_obra` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_obra`),
  KEY `id_autor` (`id_autor`),
  KEY `id_museo` (`id_museo`),
  CONSTRAINT `obras_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id_autor`),
  CONSTRAINT `obras_ibfk_2` FOREIGN KEY (`id_museo`) REFERENCES `museos_y_sitios` (`id_museo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `obras` */

insert  into `obras`(`id_obra`,`nombre_obra`,`fecha_creacion`,`descripcion_obra`,`id_autor`,`id_museo`,`img_obra`) values (1,'\"el sentido\"',2012,'?leo sobre tela',1,1,'img/obras/obra_El_Sentido.jpg'),(2,'El joven Zapata',1993,'Oleo sobre tela',2,2,'img/obras/obra_zapata.jpg'),(3,'Fray Bartolom? de las Casas',1919,'Oleo sobre tela',1,1,'img/obras/obra_barto.jpg'),(4,'Morelos y la Justicia',1976,'Mural titulado \"Morelos y la Justicia\" realizado en 1976. La obra representa a Jos? Mar?a Morelos y Pav?n h?roe de la Independencia de M?xico originario de Valladolid Morelia.',4,4,'img/obras/obra_morelos.jpeg'),(5,'Hulefante',2015,'Se refiere a una escultura de un elefante armada en el a?o 2015 por gustavo gonzalez  esta constituida principalmente por residuos de llantas y es la obra principal y la que causo la fundaci?n de el museo se expone con la frase incluso en la basura s',6,5,'img/obras/obra_Hulefante.jpg'),(6,'\"Acr?bata\" y \"Bailarinas\"',1995,'Numerada como la segunda de una serie de 10, \"Mujer\" fue integrada al acervo art?stico del MACAZ el 18 de mayo de 1999, a la par de las piezas coet?neas tituladas \"Acr?bata\" y \"Bailarinas\".',5,4,'img/obras/obra_acrob.jpeg'),(7,'Mascara Danza de los viejitos',2000,'Su origen nos lleva a la Isla de Jar?cuaro, dentro del lago de P?tzcuaro, durante la ?poca prehisp?nica, cuando formaba parte del ritual en honor al Dios Viejo, Dios del Fuego o Dios Sol.',3,3,'img/obras/obra__masc_viej.jpeg'),(8,'Cristo de pasta de ca?a',2000,'EL MUSEO  POSEE UNA GRAN COLLECCION DE CRISTOS DE CA?A La sala uno resguarda distintas esculturas en ca?a de ma?z, t?cnica que surge en el territorio del imperio pur?pecha, con la cual los antiguos ind?genas fabricaban las representaciones de sus div',7,6,'img/obras/obra_CristoPastadeCana.jpg'),(9,'BUSTO DE MORELOS',2000,'Elaborado en T?cuaro. Esta pieza de arte conquistan al m?s esc?ptico. El diablo como figura principal, con insectos, cuernos y extremidades varias hacen de esta una artesan?a excepcional.',3,3,'img/obras/obra_bstmorel.jpg'),(10,'Cristo Negro',0000,'El cristo negro data de ?pocas coloniales y fue hecho por  nativos en la ?poca  de la colonia fue renovado y llego al museo en el a?o 2009  a?adiendo placas en la parte trasera protegi?ndolo ',7,6,'img/obras/obra_yisusnigga.jpg');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `rango` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuario`,`nombre`,`e_mail`,`password`,`rango`) values (1,'Vidal','vidaguilar22102001@gmail.com','pandemix','adm'),(2,'Carlos','carlosroyiga@gmail.com','pandemix','adm'),(3,'Luis Roberto','pacto.polar88@gmail.com','pandemix','adm'),(4,'jhon','doeit@gmail.com','12345','reg'),(5,'Esther','asase@gmsi.com','1234','reg'),(6,'Antonio','asmodeua@gmail.com','vaca','reg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
