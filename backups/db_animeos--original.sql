-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2023 a las 19:06:51
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_animeos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` int(10) NOT NULL,
  `planType` varchar(50) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `contentSpanish` varchar(6) NOT NULL,
  `filmsInPremier` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plans`
--

INSERT INTO `plans` (`id`, `planType`, `price`, `contentSpanish`, `filmsInPremier`) VALUES
(1, 'FREE', '0', 'NO', 'NO'),
(2, 'BASIC', '50', 'SI', 'NO'),
(3, 'PREMIUN', '120', 'SI', 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `path` varchar(150) NOT NULL,
  `information` varchar(1000) NOT NULL,
  `trailer` varchar(50) NOT NULL,
  `banner` varchar(50) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `idCategory` int(2) NOT NULL,
  `idLanguage` int(2) NOT NULL,
  `idState` int(2) NOT NULL,
  `idSeason` int(2) NOT NULL,
  `idPlan` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`id`, `title`, `path`, `information`, `trailer`, `banner`, `poster`, `idCategory`, `idLanguage`, `idState`, `idSeason`, `idPlan`) VALUES
(1, 'Kobayashi san Chi no Maid Dragon', 'kobayashi-san-chi-no-maid-dragon', 'Kobayashi vive sola en un apartamento, hasta que un día, Tooru aparece en su vida y terminan viviendo juntas. Tooru mira con desprecio a los seres humanos, los cuales, percibe como inferiores y simples, pero después de haber sido salvada por Kobayashi, ella hace todo lo posible para devolverle el favor y la ayuda en todo tipo de cosas, aunque no todo va de acuerdo al plan.', 'MxMNAo8d17E', './uploads/serie/banner/08b-banner.jpg', './uploads/serie/poster/b80-poster.jpg', 1, 1, 2, 2, 1),
(2, 'Kobayashi san Chi no Maid Dragon S', 'kobayashi-san-chi-no-maid-dragon-s', 'Continuacion de la primer temporada de Kobayashi san Chi no Maid Dragon', 'MauXFi3krG8', './uploads/serie/banner/0c9-banner.jpg', './uploads/serie/poster/2e7-poster.jpg', 1, 1, 2, 3, 2),
(3, 'Majo no Tabitabi', 'spy-x-family', 'En cierto lugar existe una bruja viajera, de nombre Elaina. Siendo una viajera, ella ha conocido a muchas personas y países mientras continúa con su largo, largo camino.Una ciudad que solo acepta magos, un gigante amante de los músculos, un joven queriendo reencontrarse con su fallecida amada, una princesa abandonada en una destruida ciudad, y la historia de la bruja se entrelazará con todos ellos.Al encontrarse con personas increíblemente extrañas y hacer hermosos recuerdos juntos, ahora, incluso ahora, la bruja no puede evitar que toda su vida siga siendo de encuentros y despedidas.', 'nmorW2mif20', './uploads/serie/banner/95a-banner.jpg', './uploads/serie/poster/382-poster.jpg', 1, 1, 2, 2, 1),
(4, 'Shinryaku! Ika Musume', 'shinryaku!-ika-musume', 'El mar en el mundo se ha contaminado. Toda clase de basura fueron arrojados al mar, por lo que es desagradable en las profundidades del mar. Uno de los habitantes del mar, Ika Musume (Chica Calamar) trata de vengarse de la humanidad por arrojar basura en el mar. Ni idea de la superficie, trata de invadir la humanidad ella sola, tratando de gobernar el mundo, sólo para encontrarse a sí misma trabajando como un burro en una de la playa más cercana.', 'YhxbmA1noxg', './uploads/serie/banner/cf9-banner.jpg', './uploads/serie/poster/c74-poster.jpg', 1, 1, 2, 2, 1),
(5, '86: Eighty-Six', '86-eighty-six', 'Los \"Juggernaut\" son drones de combate no tripulados desarrollados por la República de San Magnolia en respuesta a los ataques de los drones autónomos del vecino Imperio de Giad, la \"Legión\". Pero en realidad lo de que no son tripulados es una farse, pues lo cierto es que los pilotan los 86, aquellos que se consideran menos que humanos y a los que tratan como meras herramientas. Decidido a combatir hasta su fin, Shin, capitán de un escuadrón compuesto por los 86, lucha sin descanso en un campo de batalla en el cual lo único que le aguarda es la muerte.', 'VSdS29SDvn4', './uploads/serie/banner/647-banner.jpg', './uploads/serie/poster/127-poster.jpg', 1, 1, 2, 2, 1),
(6, 'Kono Subarashii Sekai ni Shukufuku wo!', 'kono-subarashii-sekai-ni-shukufuku-wo!', 'Esta popular comedia de mundos alternativos gira en torno a Kazuma Satou, un hikkikomori fan a muerte de los videojuegos, el anime y el manga. Un accidente de tráfico pone fin a su vida… o eso debería haber pasado, pero se despierta con una preciosa chica al lado que se presenta diciendo que es una diosa. La chica le dice “Tengo buenas noticias. ¿Te gustaría ir a un mundo alternativo? Puedes llevarte sólo una cosa que te guste” y él le contesta “Entonces, te llevaré a ti”. Con eso, es teletransportado a otro mundo en el que comienza su gran aventura sometiéndose a un rey demonio… aunque antes de eso tiene que trabajar duro para costearse la comida, la ropa y la vivienda. Kazuma quiere vivir en paz, pero la diosa le crea un problema tras otro, y entonces el ejército del rey demonio se fija en él.', 'D0bUJCPEduQ', './uploads/serie/banner/897-banner.jpg', './uploads/serie/poster/580-poster.jpg', 1, 1, 2, 2, 1),
(7, 'KonoSuba - The Movie - Legend of Crimson', 'konosuba-the-movie-legend-of-crimson', 'La vida del amante de los videojuegos, Satou Kazuma, termina cuando es arrollado por un camión. En un inesperado giro del destino reencarna en otro mundo gracias a la diosa Aqua, a una torpe hechicera llamada Megumin y a una delirante caballero llamada Darkness. En esta película este peculiar grupo se enfrentará a una increíble amenaza. ¿Podrán salvar la Villa Carmesí? ¿Qué pasará con Kazuma?', '5h4rQY9bpgE', './uploads/serie/banner/0c7-banner.jpg', './uploads/serie/poster/183-poster.jpg', 2, 3, 2, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie_categorys`
--

CREATE TABLE `serie_categorys` (
  `id` int(2) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `serie_categorys`
--

INSERT INTO `serie_categorys` (`id`, `category`) VALUES
(1, 'Serie'),
(2, 'Movie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie_episodes`
--

CREATE TABLE `serie_episodes` (
  `id` int(11) NOT NULL,
  `idSerie` int(11) NOT NULL,
  `src` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie_languages`
--

CREATE TABLE `serie_languages` (
  `id` int(2) NOT NULL,
  `language` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `serie_languages`
--

INSERT INTO `serie_languages` (`id`, `language`) VALUES
(1, 'Spanish'),
(2, 'English'),
(3, 'Subtitles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie_seasons`
--

CREATE TABLE `serie_seasons` (
  `id` int(2) NOT NULL,
  `season` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `serie_seasons`
--

INSERT INTO `serie_seasons` (`id`, `season`) VALUES
(1, ''),
(2, 'Season 1'),
(3, 'Season 2'),
(4, 'Season 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie_states`
--

CREATE TABLE `serie_states` (
  `id` int(2) NOT NULL,
  `state` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `serie_states`
--

INSERT INTO `serie_states` (`id`, `state`) VALUES
(1, 'In broadcast'),
(2, 'Finished');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `idUser` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstNames` varchar(80) NOT NULL,
  `lastNames` varchar(80) NOT NULL,
  `avatar` varchar(80) NOT NULL,
  `rolId` int(2) NOT NULL,
  `genderId` int(2) NOT NULL,
  `planId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`idUser`, `email`, `password`, `firstNames`, `lastNames`, `avatar`, `rolId`, `genderId`, `planId`) VALUES
(1, 'admin@admin.com', 'admin', 'Admin', 'admin', './uploads/user/avatar/fca0c.jpg', 1, 1, 3),
(2, 'ronaljames@gmail.com', 'james', 'Ronal James', 'Llapapasca Montes', './uploads/user/avatar/5bdb4.jpg', 2, 1, 1),
(3, 'jhonllapapasca@gmail.com', 'llapapasca', 'Jhon', 'Llapapasca Montes', './uploads/user/avatar/6f417.jpg', 2, 1, 2),
(4, 'marcollapapasca@gmail.com', 'marco', 'Marco Antonio', 'Llapapasca Montes', './uploads/user/avatar/4bc42.jpg', 2, 1, 3),
(5, 'luis@hotmail.com', 'luis123', 'Luis Elmer', 'Llapapasca Montes', './uploads/user/avatar/10bcf.jpg', 2, 1, 1),
(6, 'cristinallapapasca@gmail.com', 'cris13', 'Cristina del Pilar', 'Llapapasca Montes', './uploads/user/avatar/b9a85.jpg', 2, 2, 2),
(7, 'james@gmail.com', 'james', 'James', 'Llapapsca', './uploads/user/avatar/efbb0.jpg', 2, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_gender`
--

CREATE TABLE `user_gender` (
  `id` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_gender`
--

INSERT INTO `user_gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idLanguages` (`idLanguage`),
  ADD KEY `idState` (`idState`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idSeason` (`idSeason`),
  ADD KEY `idPlan` (`idPlan`);

--
-- Indices de la tabla `serie_categorys`
--
ALTER TABLE `serie_categorys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `serie_episodes`
--
ALTER TABLE `serie_episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSerie` (`idSerie`);

--
-- Indices de la tabla `serie_languages`
--
ALTER TABLE `serie_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serie_seasons`
--
ALTER TABLE `serie_seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serie_states`
--
ALTER TABLE `serie_states`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `genreId` (`genderId`),
  ADD KEY `users_ibfk_1` (`rolId`),
  ADD KEY `planId` (`planId`),
  ADD KEY `idUser` (`idUser`);

--
-- Indices de la tabla `user_gender`
--
ALTER TABLE `user_gender`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `serie_categorys`
--
ALTER TABLE `serie_categorys`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `serie_episodes`
--
ALTER TABLE `serie_episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `serie_languages`
--
ALTER TABLE `serie_languages`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `serie_seasons`
--
ALTER TABLE `serie_seasons`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `serie_states`
--
ALTER TABLE `serie_states`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user_gender`
--
ALTER TABLE `user_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_ibfk_2` FOREIGN KEY (`idLanguage`) REFERENCES `serie_languages` (`id`),
  ADD CONSTRAINT `series_ibfk_3` FOREIGN KEY (`idState`) REFERENCES `serie_states` (`id`),
  ADD CONSTRAINT `series_ibfk_5` FOREIGN KEY (`idCategory`) REFERENCES `serie_categorys` (`id`),
  ADD CONSTRAINT `series_ibfk_6` FOREIGN KEY (`idSeason`) REFERENCES `serie_seasons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `series_ibfk_7` FOREIGN KEY (`idPlan`) REFERENCES `plans` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `serie_episodes`
--
ALTER TABLE `serie_episodes`
  ADD CONSTRAINT `serie_episodes_ibfk_1` FOREIGN KEY (`idSerie`) REFERENCES `series` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rolId`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`genderId`) REFERENCES `user_gender` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`planId`) REFERENCES `plans` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
