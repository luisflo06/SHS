-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2024 a las 19:22:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda-online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`, `estado`) VALUES
(1, 'TECNOLOGIA', 'assets/images/categorias/20220805093011.jpg', 1),
(2, 'DISEÑO WEB', 'assets/images/categorias/20220805093028.jpg', 1),
(3, 'FASHION', 'NO', 1),
(4, 'PRUEBA', '', 0),
(5, 'ACCESORIOS', '', 1),
(6, 'DEPORTES', '', 1),
(7, 'MEDICINA', '', 0),
(8, 'PRUEBA', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(100) NOT NULL DEFAULT 'default.png',
  `token` varchar(100) DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `clave`, `perfil`, `token`, `verify`) VALUES
(3, 'ANGEL SIFUENTES', 'lovenaju2@gmail.com', '$2y$10$aFqMg0hAfmLz0vUQhPKcPuGQ57zO9bvYDEX83E2yIN5sdwEX/eH5q', 'default.png', '21a66551b83c814b108081b292dc65d2', 1),
(4, 'VIDA INFORMATICO', 'admin@angelsifuentes.com', '$2y$10$aFqMg0hAfmLz0vUQhPKcPuGQ57zO9bvYDEX83E2yIN5sdwEX/eH5q', 'default.png', NULL, 1),
(5, 'JUAN ANGEL', 'prueba@gmail.com', '$2y$10$rr24uW0VypkrDEhooFRsoOli/Pcm5NR5F8D9NARgQz0l1UfPkqV1q', 'default.png', 'c81b5136bcd10b4390108c979ed28ee6', 1),
(6, 'juan camilo', 'juancamilohdzg@hotmail.com', '$2y$10$YK0bwSadpUyPXl9PNswNWe2xDx.gCEGjJVAP7I0Wh.qWP25e1IQna', 'default.png', NULL, 1),
(7, 'juan ', 'juancamilohdzg@gmail.com', '$2y$10$60fYfHP7vE5L1M/QI7IbyO5ULuoVOzTAfXmbap6NcgiUQ6INxl2pW', 'default.png', '844fad0ec62606c1cc6dff19a395b116', 0),
(8, 'juan ', 'sircubitop@gmail.com', '$2y$10$i8GCLBVbaUX4ISaF5hTq0es0HTMtIrYiz0bww.XAuFZr3p68fYjQu', 'default.png', '213416fc090d67c1803da3a459442585', 0),
(9, 'juancamilo', 'juan239dd@gmail.com', '$2y$10$WyDr6FmWuUMFv3S3zAepeeHigBQG8pn5YBeCfLgJEjJbtHHfJXDaC', 'default.png', NULL, 1),
(10, 'JALKDFJ', 'niude2222@gmail.com', '$2y$10$ZuDWbcEU0AKl0zy7KfXG8eOhFvQO.a1u8rbRU4yTLw1qEC/Xy.qRi', 'default.png', NULL, 1),
(11, 'juan camilo', 'tiendaprueba640@gmail.com', '$2y$10$Ysl4P/tIgYAfMJrDpyxzjuVr5Kink54qOTwPzzlrUCog/MCSp0CTK', 'default.png', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `producto`, `precio`, `cantidad`, `id_pedido`, `id_producto`) VALUES
(1, 'CAMARA WEB', 200.00, 1, 1, 2),
(2, 'TELEVISOR LG', 1500.00, 1, 1, 3),
(3, 'NUEVO PRODUCTO', 5.00, 1, 2, 6),
(4, 'FASHION 2', 3.00, 1, 2, 8),
(5, 'FASHION1', 8.00, 1, 2, 7),
(6, 'LAPTOP LENOVO', 30.00, 1, 3, 5),
(7, 'FASHION1', 8.00, 10, 4, 7),
(8, 'FASHION 2', 3.00, 1, 4, 8),
(9, 'MICROFONO', 8.00, 1, 5, 4),
(10, 'MICROFONO', 8.00, 1, 6, 4),
(11, 'TELEVISOR LG', 10.00, 1, 7, 3),
(12, 'CAMISETA DEL JUNIOR USADA POR EL PIBE VALDERRAMA', 1000.00, 1, 8, 11),
(13, 'FASHION 2', 3.00, 1, 8, 8),
(14, 'CAMISETA DEL JUNIOR USADA POR EL PIBE VALDERRAMA', 1000.00, 1, 9, 11),
(15, 'PASTILLAS PARA DORMIR', 12.00, 1, 9, 12),
(16, 'MICROFONO', 8.00, 1, 10, 4),
(17, 'MICROFONO', 8.00, 1, 11, 4),
(18, 'TELEVISOR LG', 10.00, 1, 11, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_transaccion` varchar(80) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `fecha` datetime NOT NULL,
  `email` varchar(80) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `proceso` enum('1','2','3') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_transaccion`, `monto`, `estado`, `fecha`, `email`, `nombre`, `apellido`, `direccion`, `ciudad`, `id_cliente`, `proceso`) VALUES
(1, '6PX22696F1040260E', 1700.00, 'COMPLETED', '2023-02-20 17:12:42', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Free Trade Zone', 'Lima', 5, '3'),
(2, '1HJ95121A9582915R', 16.00, 'COMPLETED', '2023-07-10 22:37:24', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Free Trade Zone', 'Lima', 3, '3'),
(3, '0N317696LE588445Y', 30.00, 'COMPLETED', '2024-05-10 23:10:15', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 6, '3'),
(4, '2M6148811G7693029', 83.00, 'COMPLETED', '2024-05-16 09:15:05', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 9, '3'),
(5, '1HP22744M4136704W', 8.00, 'COMPLETED', '2024-05-16 21:13:26', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 6, '3'),
(6, '6HG34434EG638683C', 8.00, 'COMPLETED', '2024-05-16 21:18:10', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 10, '3'),
(7, '5BL8533086708480F', 10.00, 'COMPLETED', '2024-05-17 23:10:51', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 6, '3'),
(8, '90T467725X266805D', 1003.00, 'COMPLETED', '2024-05-18 00:29:34', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 6, '3'),
(9, '7SC19922178914804', 1012.00, 'COMPLETED', '2024-05-18 00:45:03', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 6, '3'),
(10, '4SP34743VN746342M', 8.00, 'COMPLETED', '2024-05-20 22:35:22', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 6, '3'),
(11, '9L94032765512231P', 18.00, 'COMPLETED', '2024-05-20 22:44:11', 'sb-j6jdb7896999@personal.example.com', 'John', 'Doe', 'Calz. De las Lágrimas #806', 'Querétaro', 11, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `estado`, `id_categoria`) VALUES
(1, 'PARLANTE HILON', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur aperiam accusamus incidunt cum laudantium laborum ipsum magni sequi expedita ad, rem esse rerum ea saepe provident! Temporibus corporis atque earum?\r\n', 10.00, 10, 'assets/images/productos/20220805093212.jpg', 1, 1),
(2, 'CAMARA WEB', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur aperiam accusamus incidunt cum laudantium laborum ipsum magni sequi expedita ad, rem esse rerum ea saepe provident! Temporibus corporis atque earum?', 20.00, 15, 'assets/images/productos/20220805093304.jpg', 1, 1),
(3, 'TELEVISOR LG', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur aperiam accusamus incidunt cum laudantium laborum ipsum magni sequi expedita ad, rem esse rerum ea saepe provident! Temporibus corporis atque earum?', 10.00, 40, 'assets/images/productos/20220805093355.jpg', 1, 1),
(4, 'MICROFONO', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur aperiam accusamus incidunt cum laudantium laborum ipsum magni sequi expedita ad, rem esse rerum ea saepe provident! Temporibus corporis atque earum?', 8.00, 5, 'assets/images/productos/20220805093426.jpg', 1, 1),
(5, 'LAPTOP LENOVO', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consectetur aperiam accusamus incidunt cum laudantium laborum ipsum magni sequi expedita ad, rem esse rerum ea saepe provident! Temporibus corporis atque earum?', 30.00, 12, 'assets/images/productos/20220805093535.jpg', 1, 1),
(6, 'NUEVO PRODUCTO', '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Incidunt, facere.</p><ol><li>Lorem ipsum, dolor sit amet <strong>consectetur</strong> adipisicing elit. Incidunt, facere.</li><li><a href=\"https://angelsifuentes.com/pos\">https://angelsifuentes.com/pos</a></li></ol>', 5.00, 16, 'assets/images/productos/20220806090232.jpg', 1, 2),
(7, 'CAMISA', '', 8.00, 5, 'assets/images/productos/fashion1.png', 1, 3),
(8, 'SUETER', '', 3.00, 12, 'assets/images/productos/fashion2.png', 1, 3),
(10, 'vamos', 'si se puede', 12.00, 12, 'assets/images/productos/20230710235600.jpg', 0, 4),
(11, 'CAMISETA DEL JUNIOR USADA POR EL PIBE VALDERRAMA', 'SE VENDE LA CAMISA USADA POR EL PROPIO PIBE VALDERRAMA CUANDO QUEDO CAMPEON CON EL JUNIOR DE BARRANQUILLA', 1000.00, 1, 'assets/images/productos/20240518001904.jpg', 1, 3),
(12, 'PASTILLAS PARA DORMIR', 'ZOPICLONA MEMPHIS 7.5MG ', 12.00, 100, 'assets/images/productos/20240518003514.jpg', 0, 7),
(13, 'gorra de coca cola', '', 1.00, 1, 'assets/images/productos/20240518004706.jpg', 1, 3),
(14, 'GUAYOS NEMEZIZ MESSI', 'GUAYOS NEMEZIZ MESSI 2018', 200.00, 6, 'assets/images/productos/20240520205204.jpg', 1, 6),
(15, 'BOLSO YVES SAINT LAURENT', 'BOLSO CUERO NEGRO, YVES SAINT LAURENT', 700.00, 2, 'assets/images/productos/20240520205352.jpg', 1, 5),
(16, 'PERFUME HOMBRE, JEAN PAUL GAULTIER LE BEAU LE PARFUM', 'LE BEAU LE PARFUM\r\n', 200.00, 6, 'assets/images/productos/20240520205512.jpg', 1, 5),
(17, 'PRUEBA', '', 1.00, 1, 'assets/images/productos/20240520224711.jpg', 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo`, `clave`, `perfil`, `estado`) VALUES
(1, 'ANGEL', 'SIFUENTES', 'angelsifuentes2580@gmail.com', '$2y$10$XtV68JJ/fABHwWMARZotF.9BHbkwBpquycry2HYOlS.QaUGt/mls2', NULL, 0),
(2, 'hola', 'como', 'esta@gmail.com', '$2y$10$ZX9BeymxshOoe/I3pGoIp.6Ai5mrVxN1rdS4nrAQILsOjE9DPwdXW', NULL, 0),
(3, 'Juan Camilo', 'Hernandez Guerra', 'juancamilohdzg@gmail.com', '$2y$10$7ikvIpWKYT8Y5baHYViEQ.mE.dL7BerIzwcIBWDXwcnxn0Uw9953e', NULL, 1),
(4, 'Jesus Manuel', 'Lopez Gamarra', 'lopezgamarra@outlook.com', '$2y$10$hFMuQ7uURlt5WVfys2DWy.qJJ1.aMyIqBaKA05K3ockIQd5BVm2di', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD CONSTRAINT `detalle_pedidos_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
