-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-05-2020 a las 21:24:29
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `videoslaravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `video_id` int(255) NOT NULL,
  `body` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_video` (`video_id`),
  KEY `fk_comment_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `video_id`, `body`, `created_at`, `updated_at`) VALUES
(3, 1, 33, 'Genial el video ', '2019-11-29 18:30:39', '2019-11-29 18:30:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `email`, `password`, `image`, `updated_at`, `created_at`, `remember_token`) VALUES
(1, NULL, 'Juan', NULL, 'jose@gmail.com', '$2y$10$1Pz0f7miVvGCy9zvH6NqsORwm7yUP37sMMlPIWmwjLLRAV0cGbPLC', NULL, '2019-12-01 21:44:21', '2019-11-19 04:40:47', 'camJn9T2CI2HrD3oBqnXm9QxvqAtPbX1UecF1EWDI7yq37yUcaBcxirdh8ZI'),
(2, NULL, 'karen', NULL, 'karen@gmail.com', '$2y$10$jbBK6YyTv1wkiAj0eZPSfOhO5JP1wyFj6quZXXoVGxuCNQkEYamkG', NULL, '2019-11-19 05:02:14', '2019-11-19 04:49:15', 'YN5zkmfnSHVqJQO4ckjPXYnRkbtriBjoA7M4Qif6aAzVAVosX26mmtN9037Q'),
(3, NULL, 'juanjo', NULL, 'josew@gmail.com', '$2y$10$kQU/kQF/e94bW8bp/VAcUuekG6AWqVox8q1Z.9gdkAeaGGULdSXPG', NULL, '2019-11-20 04:25:58', '2019-11-20 04:25:58', NULL),
(4, NULL, 'Juliana', NULL, 'juli@hot.com', '$2y$10$Gi9v/m5J6oC4lOqHT5T/TOJS04PTbMN6Yn58KH/lT3QJWhgTp6fUy', NULL, '2019-12-01 21:39:07', '2019-11-20 02:37:02', 'QtTLeeyIFA9DzwuwYl51cGcMg5AYePmT6Wsg6jb3iZ707S9oUdPrPHxpnKBA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `status` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_videos_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `title`, `description`, `status`, `image`, `video_path`, `created_at`, `updated_at`) VALUES
(21, 1, 'video 15', 'jajajajajajaj', NULL, '1574225554gato.jpg', '1574225554video.mp4', '2019-11-20 04:52:34', '2019-11-20 04:52:34'),
(22, 1, 'HOOOOLA QUE HACE', 'MEN QUE FALLA ', NULL, '1574227167sena.jpg', '1574227167video.mp4', '2019-11-20 05:19:27', '2019-11-20 05:19:27'),
(23, 1, 'Video Question men ', 'Hooooli ', NULL, '15742288306.jpg', '15742288301. Nivel Programación con Java.mp4', '2019-11-20 00:47:10', '2019-11-20 00:47:10'),
(24, 1, 'Video Java JSP', 'Mi primer video en java jsp', NULL, '1574229463FOTO.jpg', '15742294631. Lección Manejo de Bloques de Código en Java.mp4', '2019-11-20 00:57:43', '2019-11-29 16:20:48'),
(26, 3, 'Video 2', 'dasdfsdfsdfsdf', NULL, NULL, NULL, NULL, NULL),
(29, 1, 'Video Java JSP', 'Desarrolo de aplicación web con Java', NULL, '15742349413.jpg', '15742349412. Nivel Servlets y JSP\'s.mp4', '2019-11-20 02:29:01', '2019-11-20 02:29:01'),
(31, 1, 'edicion', 'sdfsdfsdfsdfsd', NULL, '1575062048juan.png.jpg', '15742358141. Nivel Programación con Java.mp4', '2019-11-20 02:43:34', '2019-11-29 16:14:08'),
(33, 1, 'Javascript PRIMER VIDEO', 'Comenzamos esta aventura ', NULL, '15750701812.jpg', '15750702201. Programación Java Sintaxis Básica de Java.mp4', '2019-11-29 18:29:46', '2019-11-29 18:30:20');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_comment_video` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`);

--
-- Filtros para la tabla `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `fk_videos_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
