-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2020 a las 04:44:09
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `virtual_tour`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `nombre_autor` varchar(50) DEFAULT NULL,
  `descripcion_autor` varchar(500) DEFAULT NULL,
  `img_autor` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id_autor`, `nombre_autor`, `descripcion_autor`, `img_autor`) VALUES
(1, 'Arturo Pérez Morelos', 'Nació en la ciudad de Morelia, Michoacán; el 17 de noviembre de 1970', 'img/autor_obra/alf.jpg'),
(2, 'Alfredo Arreguín ', 'Nació en Morelia en 1935, siendo un joven migró a los Estados Unidos en donde realizó estudios de arte en la Universidad de Washington. Desde 1956 es reconocido internacionalmente como artista por sus vibrantes y cautivadoras pinturas. En voz propia,', 'img/autor_obra/alfr_arre.jpg'),
(3, '\r\nfelix parra', 'Su autor es desconocido, la obra fue recuperada y resguardada en el museo.', 'img/autor_obra/unnamed.png'),
(4, 'Agustín Cárdenas Castro', 'Agustín Cárdenas Castro nació en la comunidad de Patamban municipio de Tangancícuaro el 3 de octubre de 1936. Creador michoacano prolífico en el ámbito de la música y las artes plásticas. En la Ciudad de México tomó clases en la Academia de San Carlos, y cátedras particulares con artistas de la talla de Armando García Núñez y Diego Rivera. Discípulo también del maestro Alfredo Salce.', 'img/autor_obra/agus.jpg'),
(5, 'Gustavo González Valadez', 'Coordinador del programa S.O.S,ofrece información, orientación y talleres para minimizar la generación de residuos y sus efectos adversos al medio ambiente y la salud. ', 'img/autor_obra/gus.jpg'),
(6, 'Alfredo Zalce', ' fue un artista plástico mexicano, una de las figuras líderes del arte moderno mexicano. ', 'img/autor_obra/alfredzal.jpg'),
(7, 'Artistas desconocidos', 'No se conoce el grupo de artistas, la obra fue recuperada y resguardada en el museo', 'img/autor_obra/unnamed.png'),
(8, 'artista desconocido', 'No se conoce el artista', 'img/autor_obra/unnamed.png'),
(9, 'anonimo', 'desconocido', 'img/autor_obra/unnamed.png'),
(10, 'sin autor', 'obra de autor desconocido', 'img/autor_obra/unnamed.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comment` int(11) NOT NULL,
  `comentario` varchar(150) DEFAULT NULL,
  `id_us` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leyendas`
--

CREATE TABLE `leyendas` (
  `id_leyenda` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `origen` varchar(35) DEFAULT NULL,
  `descripcion` varchar(800) DEFAULT NULL,
  `enlace_img` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `leyendas`
--

INSERT INTO `leyendas` (`id_leyenda`, `nombre`, `origen`, `descripcion`, `enlace_img`) VALUES
(1, 'La princesa del lago de Zirahuen', 'Zirahuen, Michoacan.', 'En la región purépecha nació una princesa;ella se enamoro del principe enemigo, cuando su padre se enteró de la relación, enfureció y puso una condición para que el pudiese estar con su hija: Tenían que pelear ambos ejércitos. El principe acepto y lucho hasta salir vencedor. El padre dijo: Falta vencer al príncipe mas vigoroso, ‘’YO’’. La princesa intervino para evitar una pelea y dijo:-No quiero ser la causa de la muerte de ninguno de los dos. Desconsolada sintió una enorme tristeza y se subio a un cerro a llorar descontroladamente, sabiendo que no volvería ver mas a su amado. Sus lágrmas eran tan pesadas y candentes que hicieron un pozo que se fue desbordando al paso de los días ahogando a la princesa e inundando al pueblo que quedó cubierto por lo que ahora se llama lago de Zirahuén.', 'img/leyendas/leyenda_lago_zirahuen.jpg'),
(2, 'La cañada de las vírgenes', 'Uruapan, Michoacan.', 'En la época prehispánica en Michoacán entre Uruapan y las cuevas de sierra madre occidental, se ofrecían sacrificios de vírgenes para los Dioses, a las que se les arrancaba el corazón a orillas del río. El lugar fue maldito y se le conoce como la cañada de las vírgenes, la leyenda narra como un español y su hijo que querían invertir en plantaciones de tabaco por la fertilidad de las tierras de Uruapan.', 'img/leyendas/leyenda_canada_de_las_virgenes.jpg'),
(3, 'El tesoro de la catedral de Morelia', 'Morelia, Michoacan.', 'Narra la leyenda que en Valladolid, había una entrada a un túnel, que estaba tapada por unas enormes piedras, los habitantes de la región escuchaban aterradores gritos provenientes del túnel. Dicen que los gritos pertenecen a bandidos  cuyas almas fueron condenadas  a vagar en el interior del túnel, eran unos rufianes que en épocas de otrora robaron el tesoro de la catedral de Morelia.', 'img/leyendas/leyenda_catedral.jpg'),
(4, 'La mano de san Agustin', 'Morelia, Michoacan.', 'Este monasterio es una de las edificaciones más antiguas de Valladolid, ya que data de mediados del siglo XVI. Su fachada es de estilo plateresco y las columnas corintias se conjugan con la sobriedad de la plaza frente al templo. Existe un relato que dice que a un célebre padre de nombre Marosho, durante una noche de estudio en la biblioteca del convento, se le apareció una mano negra entre las tinieblas. Marosho en lugar de mostrarse con miedo, le encomendó la tarea de sostenerle la vela para continuar leyendo. Otro día la mano le señaló un rincón, pero él no le hizo caso. Años más tarde, otro padre halló un tesoro en el lugar donde la mano señalaba.', 'img/leyendas/leyenda_mano_peluda.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `museos_y_sitios`
--

CREATE TABLE `museos_y_sitios` (
  `id_place` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `horario_entrada` varchar(20) DEFAULT NULL,
  `horario_salida` varchar(20) DEFAULT NULL,
  `contacto` varchar(20) DEFAULT NULL,
  `descripcion` varchar(800) DEFAULT NULL,
  `enlace_img` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `museos_y_sitios`
--

INSERT INTO `museos_y_sitios` (`id_place`, `nombre`, `direccion`, `horario_entrada`, `horario_salida`, `contacto`, `descripcion`, `enlace_img`) VALUES
(1, 'CASA DE LA CULTURA', 'La Corregidora #113, esq. con García Obeso, Centro Histórico,', '09:00 AM', '19:00 PM', '443 688 4825', 'El edificio que actualmente conocemos con la Casa de la Cultura de Morelia inicia su historia en el año 1593 (en este 2017 cumple 424 años desde el inicio de su construcción) cuando los monjes carmelitas iniciaron la construcción del templo', 'img/museos/museocasacultura.jpg'),
(2, 'MUSEO DEL DULCE', 'Av Francisco I. Madero Ote 440', '10:00 AM', '20:00 PM', '443 312 0477', 'Un museo dedicado al rescate histórico de los dulces tradicionales en Michoacán. Se encuentra dentro de la tienda Calle Real.Ofrece recorridos con un panorama general de la elaboración de este patrimonio gastronómico, desde su origen en las cocinas.', 'img/museos/museodulce.jpg'),
(3, 'MUSEO CASA NATAL DE MORELOS', 'Av Morelos Nte 485, Centro histórico de Morelia, 58000 Morelia, Mich.', '09:00 AM', '19:00 PM', '443 688 4825', 'Es un edificio histórico de estilo neoclásico, es el lugar donde nació, el 30 de septiembre de 1765, el héroe de la Independencia de México, José María Teclo Morelos Pérez y Pavón, mejor conocido como José María Morelos y Pavón.', 'img/museos/museo_morelos.jpg'),
(4, 'MUSEO \"ALFREDO ZALCE\"', 'Av Acueducto 18, Centro histórico de Morelia, 58000 Morelia, Mich.', '08:00 AM', '20:00 PM', '443 312 4544', 'El inmueble que ocupa el MACAZ es una mansión de fines del siglo XIX con dos niveles y rodeada de jardines. El museo fue fundado como galería de arte por un grupo de artistas de la entidad entre los cuales se encontraba J. Jesús Escalera y Manuel Aguilar de la Torre, inaugurándose el 30 de septiembre de 1971 con el nombre de “Galería de Arte Contemporáneo de Michoacán”.', 'img/museos/mueso-alfredo-zalce.jpg'),
(5, 'Museo de los Residuos \"SOS\"', 'Perif. Paseo de la República 6500, Lago 1, 58115 Morelia, Mich.', '09:00 AM', '15:00 PM', '443 327 4677', 'Un museo fundado en el año 2016 por Gustavo González. El museo brinda información y asesoramiento sobre el manejo de residuos, a través de 11 escenarios, como el de la selva del relleno sanitario, en donde se muestra y se detalla su funcionamiento. Cuenta con 19 esculturas elaboradas con desechos, talleres de composta, reciclaje, lombricomposta, entre otros. La Lotería es otro juego muy famoso dentro del museo, ya que mientras aprenden sobre calentamiento global, se divierten y conviven con las demás personas.', 'img/museos/sosMuseo.jpg'),
(6, 'Museo de Arte Colonial', '•	Benito Juárez #240, Centro Histórico, ', '09:00 AM', '19:00 PM', '443 313 9260', 'El Museo de Arte Colonial (MAC) en Morelia puede parecer pequeño en tamaño pero ostenta un extraordinario valor por los documentos, libros antiguos, ornamentos religiosos, pinturas y mapas de la época virreinal, que se exhiben en sus salas. La sede del museo es una casona barroca de la época colonial del siglo XVIII, un edificio de valor histórico y arquitectónico, adaptado al estilo neoclásico durante el siglo XIX. En este lugar, en el año de 1821, se instaló la primera imprenta de la ciudad, la cual estuvo dirigida por don Luis Arango.', 'img/museos/MuseoArteCol.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `id_obra` int(11) NOT NULL,
  `nombre_obra` varchar(50) DEFAULT NULL,
  `fecha_creacion` year(4) DEFAULT NULL,
  `descripcion_obra` varchar(250) DEFAULT NULL,
  `id_aut` int(11) NOT NULL,
  `id_mus` int(11) NOT NULL,
  `img_obra` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`id_obra`, `nombre_obra`, `fecha_creacion`, `descripcion_obra`, `id_aut`, `id_mus`, `img_obra`) VALUES
(1, '\"el sentido\"', 2012, 'Óleo sobre tela', 1, 1, 'img/obras/obra_El_Sentido.jpg'),
(2, 'El joven Zapata', 1993, 'Oleo sobre tela', 2, 2, 'img/obras/obra_zapata.jpg'),
(3, 'Fray Bartolomé de las Casas', 1919, 'Oleo sobre tela', 1, 1, 'img/obras/obra_barto.jpg'),
(4, 'Morelos y la Justicia', 1976, 'Mural titulado “Morelos y la Justicia” realizado en 1976. La obra representa a José María Morelos y Pavón héroe de la Independencia de México originario de Valladolid Morelia.', 4, 4, 'img/obras/obra_morelos.jpeg'),
(5, 'Hulefante', 2015, 'Se refiere a una escultura de un elefante armada en el año 2015 por gustavo gonzalez  esta constituida principalmente por residuos de llantas y es la obra principal y la que causo la fundación de el museo se expone con la frase incluso en la basura s', 6, 5, 'img/obras/obra_Hulefante.jpg'),
(6, '“Acróbata” y “Bailarinas”', 1995, 'Numerada como la segunda de una serie de 10, “Mujer” fue integrada al acervo artístico del MACAZ el 18 de mayo de 1999, a la par de las piezas coetáneas tituladas “Acróbata” y “Bailarinas”.', 5, 4, 'img/obras/obra_acrob.jpeg'),
(7, 'Mascara Danza de los viejitos', 2000, 'Su origen nos lleva a la Isla de Jarácuaro, dentro del lago de Pátzcuaro, durante la época prehispánica, cuando formaba parte del ritual en honor al Dios Viejo, Dios del Fuego o Dios Sol.', 3, 3, 'img/obras/obra__masc_viej.jpeg'),
(8, 'Cristo de pasta de caña', 2000, 'EL MUSEO  POSEE UNA GRAN COLLECCION DE CRISTOS DE CAÑA La sala uno resguarda distintas esculturas en caña de maíz, técnica que surge en el territorio del imperio purépecha, con la cual los antiguos indígenas fabricaban las representaciones de sus div', 7, 6, 'img/obras/obra_CristoPastadeCana.jpg'),
(9, 'BUSTO DE MORELOS', 2000, 'Elaborado en Tócuaro. Esta pieza de arte conquistan al más escéptico. El diablo como figura principal, con insectos, cuernos y extremidades varias hacen de esta una artesanía excepcional.', 3, 3, 'img/obras/obra_bstmorel.jpg'),
(10, 'Cristo Negro', 0000, 'El cristo negro data de épocas coloniales y fue hecho por  nativos en la época  de la colonia fue renovado y llego al museo en el año 2009  añadiendo placas en la parte trasera protegiéndolo ', 7, 6, 'img/obras/obra_yisusnigga.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `rango` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre`, `e_mail`, `contraseña`, `rango`) VALUES
(1, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autor`) USING BTREE;

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_us` (`id_us`);

--
-- Indices de la tabla `leyendas`
--
ALTER TABLE `leyendas`
  ADD PRIMARY KEY (`id_leyenda`);

--
-- Indices de la tabla `museos_y_sitios`
--
ALTER TABLE `museos_y_sitios`
  ADD PRIMARY KEY (`id_place`);

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`id_obra`),
  ADD KEY `id_aut` (`id_aut`),
  ADD KEY `id_mus` (`id_mus`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `leyendas`
--
ALTER TABLE `leyendas`
  MODIFY `id_leyenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `museos_y_sitios`
--
ALTER TABLE `museos_y_sitios`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
  MODIFY `id_obra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `id_us` FOREIGN KEY (`id_us`) REFERENCES `usuarios` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `obras`
--
ALTER TABLE `obras`
  ADD CONSTRAINT `id_aut` FOREIGN KEY (`id_aut`) REFERENCES `autor` (`id_autor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_mus` FOREIGN KEY (`id_mus`) REFERENCES `museos_y_sitios` (`id_place`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
