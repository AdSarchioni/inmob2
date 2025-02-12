-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2024 a las 04:16:46
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `Id_Contrato` int(11) NOT NULL,
  `Id_Inmueble` int(11) DEFAULT NULL,
  `Id_Propietario` int(11) DEFAULT NULL,
  `Id_Inquilino` int(11) DEFAULT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Meses` int(255) NOT NULL,
  `Fecha_Finalizacion` date NOT NULL,
  `Monto` double NOT NULL,
  `Finalizacion_Anticipada` date DEFAULT NULL,
  `Id_Creado_Por` int(50) NOT NULL,
  `Id_Terminado_Por` int(50) DEFAULT NULL,
  `Estado_Contrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`Id_Contrato`, `Id_Inmueble`, `Id_Propietario`, `Id_Inquilino`, `Fecha_Inicio`, `Meses`, `Fecha_Finalizacion`, `Monto`, `Finalizacion_Anticipada`, `Id_Creado_Por`, `Id_Terminado_Por`, `Estado_Contrato`) VALUES
(1, 1, 5, 8, '2024-03-01', 9, '2025-08-01', 5000, '2024-08-31', 1, 0, 0),
(2, 4, 6, 8, '2024-08-01', 6, '2024-08-31', 123456, '2024-09-20', 1, 0, 0),
(3, 5, 5, 5, '2024-08-01', 5, '2024-08-31', 1212, '0001-01-01', 1, 0, 0),
(4, 1, 1, 8, '2024-08-01', 3, '2024-12-01', 12000, '2026-12-24', 0, 0, 0),
(5, 1, 1, 8, '2024-09-01', 4, '2024-12-31', 21200, '2025-01-01', 1, 0, 0),
(6, 1, 1, 8, '2024-09-01', 2, '2024-10-31', 543000, '0001-01-01', 1, 0, 0),
(7, 1, 1, 8, '2024-09-01', 9, '2025-05-31', 691000, '0001-01-01', 1, 0, 1),
(8, 5, 5, 8, '2024-09-01', 5, '2025-01-31', 456789, '0001-01-01', 1, 0, 0),
(9, 3, 3, 5, '2024-09-01', 18, '2026-03-03', 132456, '2025-12-01', 1, 0, 0),
(10, 9, 5, 5, '2024-01-01', 16, '2025-05-01', 999999, '0001-01-01', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE `inmueble` (
  `Id_Inmueble` int(11) NOT NULL,
  `Id_Propietario` int(11) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Uso` varchar(50) DEFAULT NULL,
  `Ambientes` int(11) DEFAULT NULL,
  `Latitud` varchar(255) DEFAULT NULL,
  `Longitud` varchar(255) DEFAULT NULL,
  `Tamano` double DEFAULT NULL,
  `Id_Tipo_Inmueble` int(11) NOT NULL,
  `Servicios` varchar(255) DEFAULT NULL,
  `Bano` int(11) DEFAULT NULL,
  `Cochera` int(11) DEFAULT NULL,
  `Patio` int(11) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Condicion` varchar(50) DEFAULT NULL,
  `Estado_Inmueble` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inmueble`
--

INSERT INTO `inmueble` (`Id_Inmueble`, `Id_Propietario`, `Direccion`, `Uso`, `Ambientes`, `Latitud`, `Longitud`, `Tamano`, `Id_Tipo_Inmueble`, `Servicios`, `Bano`, `Cochera`, `Patio`, `Precio`, `Condicion`, `Estado_Inmueble`) VALUES
(1, 1, '123 Main St', 'Residencial', 2, '-34.603722', '-58.381592', 120.5, 5, 'Agua, Electricidad', 2, 1, 1, 250000, 'Venta', 1),
(2, 2, '456 Oak Ave', 'Comercial', 8, '-34.608418', '-58.370036', 350, 6, 'Agua, Electricidad, Gas', 4, 2, 0, 1200000, 'Venta', 1),
(3, 3, '789 Pine Rd', 'Residencial', 3, '-34.611778', '-58.417309', 90, 2, 'Agua, Electricidad', 1, 0, 1, 150000, 'Alquiler', 1),
(4, 4, '101 Maple Ln', 'Comercial', 5, '-34.615852', '-58.377232', 200, 3, 'Agua, Electricidad, Teléfono', 3, 1, 0, 500000, 'Alquiler', 1),
(5, 5, '202 Birch Blvd', 'Residencial', 1, '-34.620522', '-58.384473', 180, 1, 'Agua, Electricidad, Gas, Internet', 3, 1, 2, 750000, 'Alquiler', 1),
(9, 5, 'San Martin 123', 'departamento', 23, '-33.298908', '-66.303229', 80, 5, 'Agua, Electricidad', 2, 2, 2, 123456, 'Venta', 0),
(10, 6, 'Mitre 567', 'departamento', 2, '-33.296643', '-66.303229', 123, 8, 'Agua, Electricidad', 2, 2, 2, 98200, 'Venta', 1),
(11, 5, 'Pje Pepe 76', 'Comercial', 2, '-33.298908', '-66.303229', 63, 4, 'Agua, Electricidad', 1, 1, 1, 168232, 'Venta', 1),
(12, 10, 'Ayacucho 893', 'Residencial', 1, '-33.298908', '-66.315071', 142, 8, 'Agua, Electricidad', 1, 1, 1, 109374, 'Venta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inquilino`
--

CREATE TABLE `inquilino` (
  `Id_Inquilino` int(11) NOT NULL,
  `Dni` int(11) DEFAULT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Telefono` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Estado_Inquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inquilino`
--

INSERT INTO `inquilino` (`Id_Inquilino`, `Dni`, `Apellido`, `Nombre`, `Telefono`, `Email`, `Estado_Inquilino`) VALUES
(1, 34567891, 'Ramirez', 'Claudia', '9876-5432', 'claudia.ramirez@example.com', 1),
(2, 45678912, 'Gómez', 'Roberto', '8765-4321', 'roberto.gomez@example.com', 0),
(3, 56789123, 'Sosa', 'Patricia', '7654-3210', 'patricia.sosa@example.com', 1),
(4, 67891234, 'Molina', 'Javier', '6543-2109', 'javier.molina@example.com', 0),
(5, 78912345, 'Navarro', 'Gabriela', '5432-1098', 'gabriela.navarro@example.com', 1),
(6, 89123456, 'Ríos', 'Federico', '4321-0987', 'federico.rios@example.com', 1),
(7, 91234567, 'Vega', 'Natalia', '3210-9876', 'natalia.vega@example.com', 0),
(8, 12345678, 'Castro', 'Diego', '2109-8765', 'diego.castro@example.com', 1),
(9, 23456789, 'Ortiz', 'Florencia', '1098-7654', 'florencia.ortiz@example.com', 0),
(10, 34567890, 'Paz', 'Ricardo', '0987-6543', 'ricardo.paz@example.com', 1),
(11, 99999999, 'gomez', 'Pedro', '99', 'a@a.a', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `Id_Pago` int(11) NOT NULL,
  `Id_Contrato` int(11) DEFAULT NULL,
  `Importe` double DEFAULT NULL,
  `CuotaPaga` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Multa` double DEFAULT NULL,
  `Id_Creado_Por` int(50) NOT NULL,
  `Id_Terminado_Por` int(50) DEFAULT NULL,
  `Estado_Pago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`Id_Pago`, `Id_Contrato`, `Importe`, `CuotaPaga`, `Fecha`, `Multa`, `Id_Creado_Por`, `Id_Terminado_Por`, `Estado_Pago`) VALUES
(31, 3, 1212, 1, '2024-09-05', 0, 1, 1, 1),
(32, 6, 543000, 2, '2024-09-05', 0, 1, 1, 1),
(33, 3, 1212, 5, '2024-09-05', 0, 1, 1, 1),
(34, 3, 1212, 3, '2024-09-05', 0, 1, 1, 1),
(36, 3, 1212, 2, '2024-09-05', 0, 1, 1, 1),
(37, 3, 1212, 4, '2024-09-05', 0, 1, 1, 1),
(38, 6, 543000, 1, '2024-09-05', 0, 1, 1, 1),
(39, 8, 456789, 1, '2024-09-05', 0, 1, 1, 1),
(40, 8, 456789, 2, '2024-09-05', 0, 1, 1, 1),
(41, 8, 456789, 3, '2024-09-05', 0, 1, 1, 1),
(42, 7, 691000, 1, '2024-09-05', 0, 1, 1, 1),
(43, 8, 456789, 5, '2024-09-05', 0, 1, 1, 1),
(44, 8, 456789, 4, '2024-09-05', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `Id_Propietario` int(11) NOT NULL,
  `Dni` int(11) DEFAULT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Estado_Propietario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`Id_Propietario`, `Dni`, `Apellido`, `Nombre`, `Direccion`, `Telefono`, `Email`, `Estado_Propietario`) VALUES
(1, 12345678, 'González', 'María', 'Calle Falsa 123', '1234-5678', 'maria.gonzalez@example.com', 1),
(2, 23456789, 'Pérez', 'Juan', 'Av. Siempre Viva 742', '23456789', 'juan.perez@example.com', 1),
(3, 34567890, 'Rodríguez', 'Ana', 'Calle 9 de Julio 456', '3456-7890', 'ana.rodriguez@example.com', 1),
(4, 45678901, 'López', 'Carlos', 'Boulevard San Martín 789', '45678901', 'carlos.lopez@example.com', 1),
(5, 56789012, 'Fernández', 'Laura', 'Pasaje Rivadavia 321', '5678-9012', 'laura.fernandez@example.com', 1),
(6, 67890123, 'García', 'Pedro', 'Avenida Belgrano 654', '6789-0123', 'pedro.garcia@example.com', 1),
(7, 78901234, 'Martínez', 'Lucía', 'Calle Mitre 987', '78901234', 'lucia.martinez@example.com', 1),
(8, 89012345, 'Sánchez', 'Jorge', 'Ruta 8 km 45', '8901-2345', 'jorge.sanchez@example.com', 0),
(9, 90123456, 'Ramírez', 'Sofía', 'Calle Alberdi 112', '9012-3456', 'sofia.ramirez@example.com', 0),
(10, 1234567, 'Torres', 'Fernando', 'Avenida Libertador 200', '0123-4567', 'fernando.torres@example.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_inmueble`
--

CREATE TABLE `tipo_inmueble` (
  `Id_Tipo_Inmueble` int(11) NOT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Estado_Tipo_Inmueble` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_inmueble`
--

INSERT INTO `tipo_inmueble` (`Id_Tipo_Inmueble`, `Tipo`, `Estado_Tipo_Inmueble`) VALUES
(1, 'Casa', 0),
(2, 'Casa de Campo', 0),
(3, 'Departamento', 1),
(4, 'Salon', 1),
(5, 'Salon para negocio', 0),
(6, 'Cochera', 1),
(7, 'Casita', 1),
(8, 'algo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Apellido` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Dni` int(11) DEFAULT NULL,
  `Telefono` varchar(255) DEFAULT NULL,
  `Rol` int(50) DEFAULT 1,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `Estado_Usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_Usuario`, `Apellido`, `Nombre`, `Dni`, `Telefono`, `Rol`, `Email`, `Password`, `Avatar`, `Estado_Usuario`) VALUES
(1, 'aguero', 'oscar', 12345, '12345', 2, 'o@o.com', '3A0G2+zJ3luLnlC44+Xe5HGw/9RWJNoyF2XZACvev20=', NULL, 1),
(2, 'lopes', 'ricardo', 123455, '123434565', 1, 'a@a.com', '3A0G2+zJ3luLnlC44+Xe5HGw/9RWJNoyF2XZACvev20=', '/Uploads\\avatar_2.PNG', 1),
(3, 'a', 'a', 1223344, '1233454', 1, 'b@b', '3A0G2+zJ3luLnlC44+Xe5HGw/9RWJNoyF2XZACvev20=', '/Uploads\\avatar_3.PNG', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`Id_Contrato`),
  ADD KEY `Id_Inmueble` (`Id_Inmueble`),
  ADD KEY `Id_Propietario` (`Id_Propietario`),
  ADD KEY `Id_Inquilino` (`Id_Inquilino`);

--
-- Indices de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD PRIMARY KEY (`Id_Inmueble`),
  ADD KEY `Id_Propietario` (`Id_Propietario`),
  ADD KEY `Id_Tipo_Inmueble` (`Id_Tipo_Inmueble`);

--
-- Indices de la tabla `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`Id_Inquilino`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`Id_Pago`),
  ADD KEY `Id_Contrato` (`Id_Contrato`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`Id_Propietario`);

--
-- Indices de la tabla `tipo_inmueble`
--
ALTER TABLE `tipo_inmueble`
  ADD PRIMARY KEY (`Id_Tipo_Inmueble`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `Id_Contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  MODIFY `Id_Inmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `Id_Inquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `Id_Pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `Id_Propietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo_inmueble`
--
ALTER TABLE `tipo_inmueble`
  MODIFY `Id_Tipo_Inmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`Id_Inmueble`) REFERENCES `inmueble` (`Id_Inmueble`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`Id_Propietario`) REFERENCES `propietario` (`Id_Propietario`),
  ADD CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`Id_Inquilino`) REFERENCES `inquilino` (`Id_Inquilino`);

--
-- Filtros para la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD CONSTRAINT `inmueble_ibfk_1` FOREIGN KEY (`Id_Propietario`) REFERENCES `propietario` (`Id_Propietario`),
  ADD CONSTRAINT `inmueble_ibfk_2` FOREIGN KEY (`Id_Tipo_Inmueble`) REFERENCES `tipo_inmueble` (`Id_Tipo_Inmueble`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`Id_Contrato`) REFERENCES `contrato` (`Id_Contrato`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
