/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.4.13-MariaDB : Database - virtual_tour
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

insert  into `autor`(`id_autor`,`nombre_autor`,`descripcion_autor`,`img_autor`) values (1,'Arturo Pérez Morelos','Nació en la ciudad de Morelia, Michoacán; el 17 de noviembre de 1970','img/autor_obra/alf.jpg'),(2,'Alfredo Arreguín ','Nació en Morelia en 1935, siendo un joven migró a los Estados Unidos en donde realizó estudios de arte en la Universidad de Washington. Desde 1956 es reconocido internacionalmente como artista por sus vibrantes y cautivadoras pinturas. En voz propia.','img/autor_obra/alfr_arre.jpg'),(3,'\r\nfelix parra','fue un pintor mexicano, Ingresó al Colegio de San Nicolás de Hidalgo en donde fue discípulo de Octaviano Herrera, quien impartía la clase de pintura académica. Se trasladó a la Ciudad de México para continuar sus estudios en la Academia de San Carlos en donde fue discípulo de Pelegrín Clavé, Santiago Rebull y José Salomé Pina.','img/autor_obra/unnamed.png'),(4,'Agustín Cárdenas Castro','Agustín Cárdenas Castro nació en la comunidad de Patambán municipio de Tangancícuaro el 3 de octubre de 1936. Creador michoacano prolífico en el ámbito de la música y las artes plásticas. En la Ciudad de México tomó clases en la Academia de San Carlos, y cátedras particulares con artistas de la talla de Armando García Nuñez y Diego Rivera. Discípulo también del maestro Alfredo Salce.','img/autor_obra/agus.jpg'),(5,'Gustavo González Valadez','Coordinador del programa S.O.S,ofrece información, orientación y talleres para minimizar la generación de residuos y sus efectos adversos al medio ambiente y la salud. ','img/autor_obra/gus.jpg'),(6,'Alfredo Zalce','Fué un artista plástico mexicano, una de las figuras líderes del arte moderno mexicano. ','img/autor_obra/alfredzal.jpg'),(7,'Artistas desconocidos','No se conoce el grupo de artistas, la obra fue recuperada y resguardada en el museo','img/autor_obra/unnamed.png'),(8,'artista desconocido','No se conoce el artista','img/autor_obra/unnamed.png'),(9,'anonimo','desconocido','img/autor_obra/unnamed.png'),(10,'sin autor','obra de autor desconocido','img/autor_obra/unnamed.png');

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

insert  into `leyendas`(`id_leyenda`,`nombre`,`origen`,`descripcion`,`enlace_img`) values (1,'La princesa del lago de Zirahuen','Zirahuen, Michoacan.','En la región purépecha nació una princesa;ella se enamoro del príncipe enemigo, cuando su padre se enteró de la relación, enfureció y puso una condición para que el pudiese estar con su hija: Tenían que pelear ambos ejércitos. El príncipe acepto y lucho hasta salir vencedor. El padre dijo: Falta vencer al príncipe mas vigoroso, \'YO\'. La princesa intervino para evitar una pelea y dijo:-No quiero ser la causa de la muerte de ninguno de los dos. Desconsolada sintió una enorme tristeza y se subió a un cerro a llorar descontroladamente, sabiendo que no volvería ver mas a su amado. Sus lágrimas eran tan pesadas y candentes que hicieron un pozo que se fue desbordando al paso de los días ahogando a la princesa e inundando al pueblo que quedó cubierto por lo que ahora se llama lago de Zirahuén.','img/leyendas/leyenda_lago_zirahuen.jpg'),(2,'La cañada de las vírgenes','Uruapan, Michoacan.','En la época prehispánica en Michoacán entre Uruapan y las cuevas de sierra madre occidental, se ofrecían sacrificios de vírgenes para los Dioses, a las que se les arrancaba el corazón a orillas del río. El lugar fue maldito y se le conoce como la cañada de las vírgenes, la leyenda narra como un español y su hijo que querían invertir en plantaciones de tabaco por la fertilidad de las tierras de Uruapan.','img/leyendas/leyenda_canada_de_las_virgenes.jpg'),(3,'El tesoro de la catedral de Morelia','Morelia, Michoacan.','Narra la leyenda que en Valladolid, había una entrada a un túnel, que estaba tapada por unas enormes piedras, los habitantes de la región escuchaban aterradores gritos provenientes del túnel. Dicen que los gritos pertenecen a bandidos  cuyas almas fueron condenadas  a vagar en el interior del túnel, eran unos rufianes que en épocas de otrora robaron el tesoro de la catedral de Morelia.','img/leyendas/leyenda_catedral.jpg'),(4,'La mano de san Agustin','Morelia, Michoacan.','Este monasterio es una de las edificaciones más antiguas de Valladolid, ya que data de mediados del siglo XVI. Su fachada es de estilo plateresco y las columnas corintias se conjugan con la sobriedad de la plaza frente al templo. Existe un relato que dice que a un célebre padre de nombre Marosho, durante una noche de estudio en la biblioteca del convento, se le apareció una mano negra entre las tinieblas. Marosho en lugar de mostrarse con miedo, le encomendó la tarea de sostenerle la vela para continuar leyendo. Otro día la mano le señaló un rincón, pero él no le hizo caso. Años más tarde, otro padre halló un tesoro en el lugar donde la mano señalaba.','img/leyendas/leyenda_mano_peluda.jpg');

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

insert  into `museos_y_sitios`(`id_museo`,`nombre`,`direccion`,`horario_entrada`,`horario_salida`,`contacto`,`descripcion`,`enlace_img`) values (1,'CASA DE LA CULTURA','La Corregidora #113, esq. con García Obeso, Centro Histórico,','09:00 AM','19:00 PM','443 688 4825','El edificio que actualmente conocemos con la Casa de la Cultura de Morelia inicia su historia en el año 1593 (en este 2017 cumple 424 años desde el inicio de su construcción) cuando los monjes carmelitas iniciaron la construcción del templo','img/museos/museocasacultura.jpg'),(2,'MUSEO DEL DULCE','Av Francisco I. Madero Ote 440','10:00 AM','20:00 PM','443 312 0477','Un museo dedicado al rescate hist?rico de los dulces tradicionales en Michoac?n. Se encuentra dentro de la tienda Calle Real.Ofrece recorridos con un panorama general de la elaboraci?n de este patrimonio gastron?mico, desde su origen en las cocinas.','img/museos/museodulce.jpg'),(3,'MUSEO CASA NATAL DE MORELOS','Av Morelos Nte 485, Centro histórico de Morelia, 58000 Morelia, Mich.','09:00 AM','19:00 PM','443 688 4825','Es un edificio histórico de estilo neoclásico, es el lugar donde nació, el 30 de septiembre de 1765, el heroe de la Independencia de México, José María Teclo Morelos Pérez y Pavón, mejor conocido como José María Morelos y Pavón.','img/museos/museo_morelos.jpg'),(4,'MUSEO \"ALFREDO ZALCE\"','Av Acueducto 18, Centro histórico de Morelia, 58000 Morelia, Mich.','08:00 AM','20:00 PM','443 312 4544','El inmueble que ocupa el MACAZ es una mansión de fines del siglo XIX con dos niveles y rodeada de jardines. El museo fue fundado como galería de arte por un grupo de artistas de la entidad entre los cuales se encontraba J. Jesús Escalera y Manuel Aguilar de la Torre, inaugurandose el 30 de septiembre de 1971 con el nombre de \"Galería de Arte Contemporaneo de Michoacán\".','img/museos/mueso-alfredo-zalce.jpg'),(5,'Museo de los Residuos \"SOS\"','Perif. Paseo de la República 6500, Lago 1, 58115 Morelia, Mich.','09:00 AM','15:00 PM','443 327 4677','Un museo fundado en el año 2016 por Gustavo González. El museo brinda información y asesoramiento sobre el manejo de residuos, a través de 11 escenarios, como el de la selva del relleno sanitario, en donde se muestra y se detalla su funcionamiento. Cuenta con 19 esculturas elaboradas con desechos, talleres de composta, reciclaje, lombricomposta, entre otros. La Lotería es otro juego muy famoso dentro del museo, ya que mientras aprenden sobre calentamiento global, se divierten y conviven con las demás personas.','img/museos/sosMuseo.jpg'),(6,'Museo de Arte Colonial','Benito Juárez #240, Centro Histórico','09:00 AM','19:00 PM','443 313 9260','El Museo de Arte Colonial (MAC) en Morelia puede parecer pequeño en tamaño pero ostenta un extraordinario valor por los documentos, libros antiguos, ornamentos religiosos, pinturas y mapas de la época virreinal, que se exhiben en sus salas. La sede del museo es una casona barroca de la ?poca colonial del siglo XVIII, un edificio de valor histórico y arquitectónico, adaptado al estilo neoclásico durante el siglo XIX. En este lugar, en el año de 1821, se instaló la primera imprenta de la ciudad, la cual estuvo dirigida por don Luis Arango.','img/museos/MuseoArteCol.jpg');

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

insert  into `obras`(`id_obra`,`nombre_obra`,`fecha_creacion`,`descripcion_obra`,`id_autor`,`id_museo`,`img_obra`) values (1,'\"el sentido\"',2012,'óleo sobre tela',1,1,'img/obras/obra_El_Sentido.jpg'),(2,'El joven Zapata',1993,'Oleo sobre tela',2,2,'img/obras/obra_zapata.jpg'),(3,'Fray Bartolomé de las Casas',1919,'Oleo sobre tela',1,1,'img/obras/obra_barto.jpg'),(4,'Morelos y la Justicia',1976,'Mural titulado \"Morelos y la Justicia\" realizado en 1976. La obra representa a José María Morelos y Pavón heroe de la Independencia de México originario de Valladolid Morelia.',4,4,'img/obras/obra_morelos.jpeg'),(5,'Hulefante',2015,'Se refiere a una escultura de un elefante armada en el año 2015 por Gustavo gonzález  esta constituida principalmente por residuos de llantas y es la obra principal y la que causo la fundación de el museo se expone con la frase incluso en la basura.',6,5,'img/obras/obra_Hulefante.jpg'),(6,'\"Acróbata\" y \"Bailarinas\"',1995,'Numerada como la segunda de una serie de 10, \"Mujer\" fue integrada al acervo artístico del MACAZ el 18 de mayo de 1999, a la par de las piezas coquetonas tituladas \"Acróbata\" y \"Bailarinas\".',5,4,'img/obras/obra_acrob.jpeg'),(7,'Mascara Danza de los viejitos',2000,'Su origen nos lleva a la Isla de Jarácuaro, dentro del lago de Pátzcuaro, durante la época prehispánica, cuando formaba parte del ritual en honor al Dios Viejo, Dios del Fuego o Dios Sol.',3,3,'img/obras/obra__masc_viej.jpeg'),(8,'Cristo de pasta de caña',2000,'EL MUSEO  POSEE UNA GRAN COLECCIÓN DE CRISTOS DE CAÑA La sala uno resguarda distintas esculturas en ca?a de maíz, técnica que surge en el territorio del imperio purépecha, con la cual los antiguos indígenas fabricaban las representaciones.',7,6,'img/obras/obra_CristoPastadeCana.jpg'),(9,'BUSTO DE MORELOS',2000,'Es un modelo del rostro de morelos esculpido en cobre y su antiguedad es la misma que la de la apertura del museo, ya que se creo para conmemorar esta.',3,3,'img/obras/obra_bstmorel.jpg'),(10,'Cristo Negro',1907,'El cristo negro data de épocas coloniales y fue hecho por  nativos en la época  de la colonia fue renovado y llego al museo en el año 2009  añadiendo placas en la parte trasera protegiendolo.',7,6,'img/obras/obra_yisusnigga.jpg');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `rango` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuario`,`nombre`,`e_mail`,`password`,`rango`) values (1,'Vidal','vidaguilar22102001@gmail.com','pandemix','adm'),(2,'Carlos','carlosroyiga@gmail.com','pandemix','adm'),(4,'luis bob','pacto.polar88@gmail.com','pandemix','adm'),(5,'Esther','asase@gmsi.com','1234','reg'),(6,'Antonio','asmodeua@gmail.com','vaca','reg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
