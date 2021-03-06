-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2021 at 10:53 PM
-- Server version: 10.3.29-MariaDB-0+deb10u1
-- PHP Version: 7.3.27-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_trading`
--

-- --------------------------------------------------------

--
-- Table structure for table `emisoras`
--

CREATE TABLE `emisoras` (
  `folio` int(11) NOT NULL,
  `emisora` varchar(20) DEFAULT NULL,
  `serie` varchar(20) DEFAULT NULL,
  `razon_social` text DEFAULT NULL,
  `idemisora` int(11) DEFAULT NULL,
  `idserie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emisoras`
--

INSERT INTO `emisoras` (`folio`, `emisora`, `serie`, `razon_social`, `idemisora`, `idserie`) VALUES
(1, 'AC', '*', 'ARCA CONTINENTAL, S.A.B. DE C.V.', 6081, 1959),
(2, 'ACCELSA', 'B', 'ACCEL, S.A.B. DE C.V.', 5015, 203),
(3, 'ACTINVR', 'B', 'CORPORACION ACTINVER, S.A.B. DE C.V.', 6842, 6096),
(4, 'AEROMEX', '*', 'GRUPO AEROMÉXICO, S.A.B. DE C.V.', 7567, 6982),
(5, 'AGRIEXP', 'A', 'AGRO INDUSTRIAL EXPORTADORA, S.A. DE C.V.', 5044, 676),
(6, 'AGUA', '*', 'GRUPO ROTOPLAS, S.A.B. DE C.V.', 31600, 339083),
(7, 'AHMSA', '*', 'ALTOS HORNOS DE MEXICO, S.A. DE C.V.', 5047, 496),
(8, 'ALEATIC', '*', 'ALEATICA, S.A.B. DE C.V.', 7434, 6557),
(9, 'ALFA', 'A', 'ALFA, S.A.B. DE C.V.', 5052, 30),
(10, 'ALPEK', 'A', 'ALPEK, S.A.B. DE C.V.', 5057, 7684),
(11, 'ALSEA', '*', 'ALSEA, S.A.B. DE C.V.', 5059, 1729),
(12, 'ALTERNA', 'B', 'ALTERNA ASESORIA INTERNACIONAL, S.A.B. DE C.V.', 35267, 424518),
(13, 'AMX', 'L', 'AMERICA MOVIL, S.A.B. DE C.V.', 6024, 1862),
(14, 'AMX', 'A', 'AMERICA MOVIL, S.A.B. DE C.V.', 6024, 1861),
(15, 'AMX', 'AA', 'AMERICA MOVIL, S.A.B. DE C.V.', 6024, 1860),
(16, 'ANB', '*', 'ANHEUSER-BUSCH INBEV SA/NV', 32295, 361720),
(17, 'ARA', '*', 'CONSORCIO ARA, S.A.B. DE C.V.', 5072, 671),
(18, 'ARISTOS', 'A', 'CONSORCIO ARISTOS, S.A.B. DE C.V.', 5082, 410),
(19, 'ASUR', 'B', 'GRUPO AEROPORTUARIO DEL SURESTE, S.A.B. DE C.V.', 6001, 1827),
(20, 'ASUR', 'BB', 'GRUPO AEROPORTUARIO DEL SURESTE, S.A.B. DE C.V.', 6001, 1828),
(21, 'AUTLAN', 'B', 'COMPAÑIA MINERA AUTLAN, S.A.B. DE C. V.', 5108, 414),
(22, 'AXTEL', 'CPO', 'AXTEL, S.A.B. DE C.V.', 6556, 3087),
(23, 'AXTEL', 'B', 'AXTEL, S.A.B. DE C.V.', 6556, 3086),
(24, 'AZTECA', 'CPO', 'TV AZTECA, S.A.B. DE C.V.', 5730, 695),
(25, 'AZTECA', 'A', 'TV AZTECA, S.A.B. DE C.V.', 5730, 1396),
(26, 'AZTECA', 'D-A', 'TV AZTECA, S.A.B. DE C.V.', 5730, 1397),
(27, 'AZTECA', 'D-L', 'TV AZTECA, S.A.B. DE C.V.', 5730, 1398),
(28, 'BACHOCO', 'B', 'INDUSTRIAS BACHOCO, S.A.B. DE C.V.', 5113, 700),
(29, 'BAFAR', 'B', 'GRUPO BAFAR, S.A.B. DE C.V.', 5116, 670),
(30, 'BBAJIO', 'O', 'BANCO DEL BAJÍO, S.A., INSTITUCIÓN DE BANCA MÚLTIPLE', 31431, 369345),
(31, 'BBVA', '*', 'BANCO BILBAO VIZCAYA ARGENTARIA, S.A.', 6528, 2884),
(32, 'BEVIDES', 'A', 'FARMACIAS BENAVIDES, S.A.B. DE C.V.', 5161, 520),
(33, 'BEVIDES', 'B', 'FARMACIAS BENAVIDES, S.A.B. DE C.V.', 5161, 125),
(34, 'BIMBO', 'A', 'GRUPO BIMBO, S.A.B. DE C.V.', 5163, 124),
(35, 'BOLSA', 'A', 'BOLSA MEXICANA DE VALORES, S.A.B. DE C.V.', 7029, 4742),
(36, 'BSMX', 'B', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 106),
(37, 'BSMX', 'DC185', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424223),
(38, 'BSMX', 'DC045', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 421683),
(39, 'BSMX', 'DC046', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424029),
(40, 'BSMX', 'DC008', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 423767),
(41, 'BSMX', 'DC001', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 421431),
(42, 'BSMX', 'F', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 1395),
(43, 'BSMX', 'DC009', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 416267),
(44, 'BSMX', 'DC026', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424377),
(45, 'BSMX', 'DC094', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424425),
(46, 'BSMX', 'DC030', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 414918),
(47, 'BSMX', 'DC031', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 414986),
(48, 'BSMX', 'DC004', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424046),
(49, 'BSMX', 'DC005', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 414981),
(50, 'BSMX', 'DC003', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 423999),
(51, 'BSMX', 'DC010', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 421833),
(52, 'BSMX', 'DC006', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 419422),
(53, 'BSMX', 'DC002', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 423947),
(54, 'BSMX', 'DC047', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424160),
(55, 'BSMX', 'DC117', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 426580),
(56, 'BSMX', 'DC110', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 423768),
(57, 'BSMX', 'DC021', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424129),
(58, 'BSMX', 'DC020', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 423890),
(59, 'BSMX', 'DC063', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424424),
(60, 'BSMX', 'DC061', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424028),
(61, 'BSMX', 'DC062', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 424144),
(62, 'BSMX', 'DC065', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 425607),
(63, 'BSMX', 'DC013', 'BANCO SANTANDER MEXICO, S.A., INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO SANTANDER', 6998, 412727),
(64, 'CABLE', 'A', 'EMPRESAS CABLEVISION, S.A. DE C.V.', 5979, 1979),
(65, 'CABLE', 'B', 'EMPRESAS CABLEVISION, S.A. DE C.V.', 5979, 1980),
(66, 'CABLE', 'CPO', 'EMPRESAS CABLEVISION, S.A. DE C.V.', 5979, 1981),
(67, 'CADU', 'A', 'CORPOVAEL S.A.B. DE C.V.', 7751, 350608),
(68, 'CEMEX', 'CPO', 'CEMEX, S.A.B. DE C.V.', 5203, 9),
(69, 'CEMEX', 'A', 'CEMEX, S.A.B. DE C.V.', 5203, 7),
(70, 'CEMEX', 'B', 'CEMEX, S.A.B. DE C.V.', 5203, 8),
(71, 'CERAMIC', 'B', 'INTERNACIONAL DE CERAMICA, S.A.B. DE C.V.', 5206, 72),
(72, 'CHDRAUI', 'B', 'GRUPO COMERCIAL CHEDRAUI, S.A.B. DE C.V.', 5209, 6080),
(73, 'CIDMEGA', '*', 'GRUPE, S.A.B. DE C.V.', 5211, 702),
(74, 'CIE', 'B', 'CORPORACION INTERAMERICANA DE ENTRETENIMIENTO, S.A.B. DE C.V.', 5212, 652),
(75, 'CMOCTEZ', '*', 'CORPORACION MOCTEZUMA, S.A.B. DE C.V.', 5219, 446),
(76, 'CMR', 'B', 'CMR, S.A.B. DE C.V.', 5762, 684),
(77, 'COLLADO', '*', 'G COLLADO, S.A.B. DE C.V.', 5225, 691),
(78, 'CONVER', 'A', 'CONVERTIDORA INDUSTRIAL, S.A.B. DE C.V.', 5233, 656),
(79, 'CREAL', '*', 'CREDITO REAL, S.A.B. DE C.V., SOFOM, E.R.', 5242, 8018),
(80, 'CUERVO', '*', 'BECLE, S.A.B. DE C.V.', 32378, 365413),
(81, 'CULTIBA', 'B', 'ORGANIZACIÓN CULTIBA, S.A.B. DE CV', 5405, 118),
(82, 'CYDSASA', 'A', 'CYDSA, S.A.B. DE C.V.', 5252, 66),
(83, 'DINE', 'A', 'DINE, S.A.B. DE C.V.', 6792, 3858),
(84, 'DINE', 'B', 'DINE, S.A.B. DE C.V.', 6792, 3859),
(85, 'EDOARDO', 'B', 'EDOARDOS MARTIN, S.A.B. DE C.V.', 5546, 449),
(86, 'ELEKTRA', '*', 'GRUPO ELEKTRA, S.A.B. DE C.V.', 5457, 615),
(87, 'ELEMENT', '*', 'ELEMENTIA, S.A.B. DE C.V.', 7419, 345563),
(88, 'FEMSA', 'UBD', 'FOMENTO ECONÓMICO MEXICANO, S.A.B. DE C.V.', 5305, 3),
(89, 'FEMSA', 'B', 'FOMENTO ECONÓMICO MEXICANO, S.A.B. DE C.V.', 5305, 1682),
(90, 'FEMSA', 'D', 'FOMENTO ECONÓMICO MEXICANO, S.A.B. DE C.V.', 5305, 1683),
(91, 'FEMSA', 'UB', 'FOMENTO ECONÓMICO MEXICANO, S.A.B. DE C.V.', 5305, 1650),
(92, 'FINAMEX', 'O', 'CASA DE BOLSA FINAMEX, S.A.B. DE C.V.', 5448, 87),
(93, 'FINDEP', '*', 'FINANCIERA INDEPENDENCIA, S.A.B. DE C.V. SOFOM, E.N.R.', 5321, 4023),
(94, 'FRAGUA', 'B', 'CORPORATIVO FRAGUA, S.A.B. DE C.V.', 5368, 704),
(95, 'FRES', '*', 'FRESNILLO PLC', 7019, 4680),
(96, 'GAP', 'B', 'GRUPO AEROPORTUARIO DEL PACIFICO, S.A.B. DE C.V.', 6579, 3219),
(97, 'GAP', 'BB', 'GRUPO AEROPORTUARIO DEL PACIFICO, S.A.B. DE C.V.', 6579, 3218),
(98, 'GAV', 'B', 'ACOSTA VERDE, S.A.B. DE C.V.', 34648, 417786),
(99, 'GAV', 'A', 'ACOSTA VERDE, S.A.B. DE C.V.', 34648, 417785),
(100, 'GAV', 'EC001', 'ACOSTA VERDE, S.A.B. DE C.V.', 34648, 380407),
(101, 'GBM', 'O', 'CORPORATIVO GBM, S.A.B. DE C. V.', 5382, 120),
(102, 'GCARSO', 'A1', 'GRUPO CARSO, S.A.B. DE C.V.', 5393, 10),
(103, 'GCC', '*', 'GRUPO CEMENTOS DE CHIHUAHUA, S.A.B. DE C.V.', 5394, 53),
(104, 'GENTERA', '*', 'GENTERA, S.A.B. DE C.V.', 7472, 6715),
(105, 'GEO', 'B', 'CORPORACION GEO, S.A.B. DE C.V.', 5401, 618),
(106, 'GFAMSA', 'A', 'GRUPO FAMSA, S.A.B. DE C.V.', 5866, 3356),
(107, 'GFINBUR', 'O', 'GRUPO FINANCIERO INBURSA, S.A.B. DE C.V.', 5428, 226),
(108, 'GFMULTI', 'O', 'GRUPO FINANCIERO MULTIVA S.A.B. DE C.V.', 5432, 232),
(109, 'GFNORTE', 'O', 'GRUPO FINANCIERO BANORTE, S.A.B DE C.V.', 5433, 219),
(110, 'GICSA', 'B', 'GRUPO GICSA, S.A.B. DE C.V.', 6529, 344030),
(111, 'GIGANTE', '*', 'GRUPO GIGANTE, S.A.B. DE C.V.', 5436, 29),
(112, 'GISSA', 'A', 'GRUPO INDUSTRIAL SALTILLO, S.A.B. DE C.V.', 5437, 135),
(113, 'GMD', '*', 'GRUPO MEXICANO DE DESARROLLO, S.A.B.', 5441, 573),
(114, 'GMEXICO', 'B', 'GRUPO MEXICO, S.A.B. DE C.V.', 6008, 1833),
(115, 'GMXT', '*', 'GMÉXICO TRANSPORTES, S.A.B. DE C.V.', 32769, 375383),
(116, 'GNP', '*', 'GRUPO NACIONAL PROVINCIAL, S.A.B.', 5444, 503),
(117, 'GOMO', '*', 'GRUPO COMERCIAL GOMO, S.A. DE C.V.', 5445, 698),
(118, 'GPH', '1', 'GRUPO PALACIO DE HIERRO, S.A.B. DE C.V.', 5446, 339),
(119, 'GPROFUT', '*', 'GRUPO PROFUTURO, S.A.B. DE C.V.', 6097, 1974),
(120, 'GRUMA', 'B', 'GRUMA, S.A.B. DE C.V.', 5454, 589),
(121, 'GSANBOR', 'B-1', 'GRUPO SANBORNS, S.A.B. DE C.V.', 5227, 270454),
(122, 'HCITY', '*', 'HOTELES CITY EXPRESS, S.A.B. DE C.V.', 31249, 324831),
(123, 'HERDEZ', '*', 'GRUPO HERDEZ, S.A.B. DE C.V.', 5461, 68),
(124, 'HIMEXSA', 'A', 'HIMEXSA, S.A.B. DE C.V.', 5465, 663),
(125, 'HIMEXSA', 'B', 'HIMEXSA, S.A.B. DE C.V.', 5465, 339913),
(126, 'HOMEX', '*', 'DESARROLLADORA HOMEX, S.A.B. DE C.V.', 5981, 2433),
(127, 'HOTEL', '*', 'GRUPO HOTELERO SANTA FE, S.A.B. DE C.V.', 31284, 336868),
(128, 'IASASA', '*', 'INDUSTRIA AUTOMOTRIZ, S.A. DE C.V.', 5470, 588),
(129, 'ICA', '*', 'EMPRESAS ICA, S.A.B. DE C.V.', 5471, 41),
(130, 'ICH', 'B', 'INDUSTRIAS CH, S.A.B. DE C.V.', 5477, 342),
(131, 'IDEAL', 'B-1', 'IMPULSORA DEL DESARROLLO Y EL EMPLEO EN AMERICA LATINA, S.A.B. DE C.V.', 6531, 2905),
(132, 'IENOVA', '*', 'INFRAESTRUCTURA ENERGETICA NOVA, S.A.B. DE C.V.', 30085, 270683),
(133, 'INGEAL', 'B', 'INGEAL, S.A.B. DE C.V.', 5439, 629),
(134, 'INVEX', 'A', 'INVEX CONTROLADORA, S.A.B. DE C.V.', 5504, 581),
(135, 'JAVER', '*', 'SERVICIOS CORPORATIVOS JAVER, S.A.B. DE C.V.', 30053, 351996),
(136, 'KIMBER', 'A', 'KIMBERLY - CLARK DE MEXICO S.A.B. DE C.V.', 5524, 32),
(137, 'KIMBER', 'B', 'KIMBERLY - CLARK DE MEXICO S.A.B. DE C.V.', 5524, 33),
(138, 'KOF', 'UBL', 'COCA-COLA FEMSA, S.A.B. DE C.V.', 5525, 396878),
(139, 'KOF', 'A', 'COCA-COLA FEMSA, S.A.B. DE C.V.', 5525, 546),
(140, 'KOF', 'B', 'COCA-COLA FEMSA, S.A.B. DE C.V.', 5525, 396879),
(141, 'KOF', 'D', 'COCA-COLA FEMSA, S.A.B. DE C.V.', 5525, 547),
(142, 'KOF', 'L', 'COCA-COLA FEMSA, S.A.B. DE C.V.', 5525, 396947),
(143, 'KUO', 'B', 'GRUPO KUO, S.A.B. DE C.V.', 5262, 49),
(144, 'KUO', 'A', 'GRUPO KUO, S.A.B. DE C.V.', 5262, 48),
(145, 'LAB', 'B', 'GENOMMA LAB INTERNACIONAL, S.A.B. DE C.V.', 7032, 4751),
(146, 'LACOMER', 'UBC', 'LA COMER S.A.B. DE C.V.', 32096, 351814),
(147, 'LACOMER', 'B', 'LA COMER S.A.B. DE C.V.', 32096, 351811),
(148, 'LACOMER', 'C', 'LA COMER S.A.B. DE C.V.', 32096, 351813),
(149, 'LACOMER', 'UB', 'LA COMER S.A.B. DE C.V.', 32096, 351812),
(150, 'LALA', 'B', 'GRUPO LALA, S.A.B. DE C.V.', 5880, 328243),
(151, 'LAMOSA', '*', 'GRUPO LAMOSA, S.A.B. DE C.V.', 5527, 345),
(152, 'LASEG', '*', 'LA LATINOAMERICANA SEGUROS, S.A.', 5530, 346),
(153, 'LIVEPOL', 'C-1', 'EL PUERTO DE LIVERPOOL, S.A.B. DE C.V.', 5536, 45),
(154, 'LIVEPOL', '1', 'EL PUERTO DE LIVERPOOL, S.A.B. DE C.V.', 5536, 44),
(155, 'MAXCOM', 'A', 'MAXCOM TELECOMUNICACIONES, S.A.B. DE C.V.', 6522, 4007),
(156, 'MEDICA', 'B', 'MEDICA SUR, S.A.B. DE C.V.', 5549, 593),
(157, 'MEGA', 'CPO', 'MEGACABLE HOLDINGS, S.A.B. DE C.V.', 6854, 4041),
(158, 'MEGA', 'A', 'MEGACABLE HOLDINGS, S.A.B. DE C.V.', 6854, 4040),
(159, 'MFRISCO', 'A-1', 'MINERA FRISCO, S.A.B. DE C.V.', 7475, 6725),
(160, 'MINSA', 'B', 'GRUPO MINSA, S.A.B. DE C.V.', 5557, 681),
(161, 'MONEX', 'B', 'MONEX, S.A.B. DE C.V.', 7371, 6316),
(162, 'MONEX', 'A', 'MONEX, S.A.B. DE C.V.', 7371, 6315),
(163, 'NEMAK', 'A', 'NEMAK, S.A.B. DE C.V.', 6190, 345279),
(164, 'NMK', 'A', 'CONTROLADORA NEMAK, S.A.B. DE C.V.', 34817, 419049),
(165, 'OMA', 'B', 'GRUPO AEROPORTUARIO DEL CENTRO NORTE, S.A.B. DE C.V.', 6707, 3635),
(166, 'OMA', 'BB', 'GRUPO AEROPORTUARIO DEL CENTRO NORTE, S.A.B. DE C.V.', 6707, 3636),
(167, 'ORBIA', '*', 'ORBIA ADVANCE CORPORATION, S.A.B. DE C.V.', 5188, 311),
(168, 'PAPPEL', '*', 'BIO PAPPEL, S.A.B. DE C.V.', 5435, 2783),
(169, 'PASA', 'B', 'PROMOTORA AMBIENTAL, S.A.B. DE C.V.', 6545, 3007),
(170, 'PE&OLES', '*', 'INDUSTRIAS PEÑOLES, S. A.B. DE C. V.', 5608, 151),
(171, 'PINFRA', '*', 'PROMOTORA Y OPERADORA DE INFRAESTRUCTURA, S.A.B. DE C.V.', 5725, 474),
(172, 'PINFRA', 'L', 'PROMOTORA Y OPERADORA DE INFRAESTRUCTURA, S.A.B. DE C.V.', 5725, 335423),
(173, 'PLANI', '*', 'PLANIGRUPO LATAM, S.A.B. DE C.V.', 31982, 357995),
(174, 'POCHTEC', 'B', 'GRUPO POCHTECA, S.A.B. DE C.V.', 5261, 657),
(175, 'POSADAS', 'A', 'GRUPO POSADAS, S.A.B. DE C.V.', 5624, 51),
(176, 'PROCORP', 'A', 'PROCORP, S.A.B. DE C.V.', 5631, 638),
(177, 'PROCORP', 'B', 'PROCORP, S.A.B. DE C.V.', 5631, 637),
(178, 'PV', '*', 'PEÑA VERDE S.A.B.', 7804, 7943),
(179, 'Q', '*', 'QUÁLITAS CONTROLADORA, S.A.B. DE C.V.', 7790, 7884),
(180, 'QBINDUS', 'A', 'Q.B. INDUSTRIAS, S.A. DE C.V.', 5645, 458),
(181, 'QBINDUS', 'B', 'Q.B. INDUSTRIAS, S.A. DE C.V.', 5645, 459),
(182, 'QUMMA', 'A', 'GRUPO QUMMA, S.A. DE C.V.', 5426, 612),
(183, 'QUMMA', 'B', 'GRUPO QUMMA, S.A. DE C.V.', 5426, 613),
(184, 'QUMMA', 'C', 'GRUPO QUMMA, S.A. DE C.V.', 5426, 1382),
(185, 'R', 'A', 'REGIONAL, S.A.B. DE C.V.', 7646, 7139),
(186, 'RCENTRO', 'A', 'GRUPO RADIO CENTRO, S.A.B. DE C.V.', 5650, 475),
(187, 'RLH', 'A', 'RLH PROPERTIES, S.A.B. DE C.V.', 32042, 349984),
(188, 'SAN', '*', 'BANCO SANTANDER, S.A.', 6542, 2987),
(189, 'SARE', 'B', 'SARE HOLDING, S.A.B. DE C.V.', 6210, 2099),
(190, 'SAVIA', 'A', 'SAVIA, S.A. DE C.V.', 5558, 60),
(191, 'SIMEC', 'B', 'GRUPO SIMEC, S.A.B. DE C.V.', 5685, 470),
(192, 'SITES', 'B-1', 'TELESITES, S.A.B. DE C.V.', 32097, 358385),
(193, 'SORIANA', 'B', 'ORGANIZACION SORIANA, S.A.B. DE C.V.', 5693, 80),
(194, 'SPORT', 'S', 'GRUPO SPORTS WORLD, S.A.B. DE C.V.', 7414, 6478),
(195, 'SRE', '*', 'SEMPRA ENERGY', 35339, 424479),
(196, 'TEAK', 'CPO', 'PROTEAK UNO, S.A.B. DE C.V.', 7369, 6308),
(197, 'TEAK', 'K', 'PROTEAK UNO, S.A.B. DE C.V.', 7369, 6306),
(198, 'TEAK', 'T', 'PROTEAK UNO, S.A.B. DE C.V.', 7369, 6307),
(199, 'TEKCHEM', 'A', 'TEKCHEM, S.A.B. DE C.V.', 5714, 672),
(200, 'TLEVISA', 'CPO', 'GRUPO TELEVISA, S.A.B.', 5720, 27),
(201, 'TLEVISA', 'A', 'GRUPO TELEVISA, S.A.B.', 5720, 26),
(202, 'TLEVISA', 'B', 'GRUPO TELEVISA, S.A.B.', 5720, 2455),
(203, 'TLEVISA', 'D', 'GRUPO TELEVISA, S.A.B.', 5720, 571),
(204, 'TLEVISA', 'L', 'GRUPO TELEVISA, S.A.B.', 5720, 572),
(205, 'TMM', 'A', 'GRUPO TMM, S.A.', 6084, 37),
(206, 'TRAXION', 'A', 'GRUPO TRAXIÓN S.A.B DE C.V.', 32708, 374157),
(207, 'TS', '*', 'TENARIS S.A.', 6137, 2007),
(208, 'UNIFIN', 'A', 'UNIFIN FINANCIERA, S.A.B. DE C.V.', 6088, 343721),
(209, 'URBI', '*', 'URBI DESARROLLOS URBANOS, S.A.B. DE C.V.', 6089, 2309),
(210, 'VALUEGF', 'O', 'VALUE GRUPO FINANCIERO, S.A.B. DE C.V.', 5427, 333),
(211, 'VASCONI', '*', 'GRUPO VASCONIA S.A.B.', 5279, 122),
(212, 'VESTA', '*', 'CORPORACIÓN INMOBILIARIA VESTA, S.A.B. DE C.V.', 7793, 7888),
(213, 'VINTE', '*', 'VINTE VIVIENDAS INTEGRALES, S.A.B. DE C.V.', 7565, 361551),
(214, 'VISTA', 'A', 'VISTA OIL &amp; GAS, S.A.B. DE C.V.', 32700, 372042),
(215, 'VISTA', 'C', 'VISTA OIL &amp; GAS, S.A.B. DE C.V.', 32700, 372040),
(216, 'VISTA', 'EC001', 'VISTA OIL &amp; GAS, S.A.B. DE C.V.', 32700, 372043),
(217, 'VITRO', 'A', 'VITRO, S.A.B. DE C.V.', 5761, 18),
(218, 'VOLAR', 'A', 'CONTROLADORA VUELA COMPAÑÍA DE AVIACIÓN, S.A.B. DE C.V.', 30023, 327336),
(219, 'VOLAR', 'B', 'CONTROLADORA VUELA COMPAÑÍA DE AVIACIÓN, S.A.B. DE C.V.', 30023, 327335),
(220, 'WALMEX', '*', 'WAL - MART DE MEXICO, S.A.B. DE C.V.', 5214, 5),
(221, 'ANGELD', '10', 'ACTINVER CASA DE BOLSA, S.A. DE C.V., GRUPO FINANCIERO ACTINVER, DIVISIÓN FIDUCIARIA', 7421, 6507),
(222, 'CETETRC', 'ISHRS', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 7187, 5599),
(223, 'CHNTRAC', '11', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 7653, 7145),
(224, 'CORPTRC', 'ISHRS', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 7169, 5504),
(225, 'DIABLOI', '10', 'ACTINVER CASA DE BOLSA, S.A. DE C.V., GRUPO FINANCIERO ACTINVER, DIVISIÓN FIDUCIARIA', 7422, 6508),
(226, 'DLRTRAC', '15', 'ACTINVER CASA DE BOLSA, S.A. DE C.V., GRUPO FINANCIERO ACTINVER, DIVISIÓN FIDUCIARIA', 31819, 341940),
(227, 'ESGMEX', 'ISHRS', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 34471, 415601),
(228, 'FIBRATC', '14', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 31496, 338111),
(229, 'GENIUS', '21', 'ACTINVER CASA DE BOLSA, S.A. DE C.V., GRUPO FINANCIERO ACTINVER, DIVISIÓN FIDUCIARIA', 34417, 421964),
(230, 'ILCTRAC', 'ISHRS', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 6847, 4010),
(231, 'IVVPESO', 'ISHRS', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 31537, 338240),
(232, 'M10TRAC', 'ISHRS', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 7188, 5600),
(233, 'M5TRAC', 'ISHRS', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 7189, 5601),
(234, 'MEXMTUM', 'ISHRS', 'NACIONAL FINANCIERA, S.N.C., INSTITUCION DE BANCA DE DESARROLLO', 31548, 337434),
(235, 'MEXRISK', 'ISHRS', 'NACIONAL FINANCIERA, S.N.C., INSTITUCION DE BANCA DE DESARROLLO', 31549, 337435),
(236, 'MEXTRAC', '09', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 7220, 5791),
(237, 'MILATRC', '16', 'ACTINVER CASA DE BOLSA, S.A. DE C.V., GRUPO FINANCIERO ACTINVER, DIVISIÓN FIDUCIARIA', 31765, 353516),
(238, 'NAFTRAC', 'ISHRS', 'NACIONAL FINANCIERA, S.N.C., INSTITUCION DE BANCA DE DESARROLLO', 6101, 1982),
(239, 'PSOTRAC', '15', 'ACTINVER CASA DE BOLSA, S.A. DE C.V., GRUPO FINANCIERO ACTINVER, DIVISIÓN FIDUCIARIA', 31818, 341941),
(240, 'QVGMEX', '18', 'ACTINVER CASA DE BOLSA, S.A. DE C.V., GRUPO FINANCIERO ACTINVER, DIVISIÓN FIDUCIARIA', 32995, 381451),
(241, 'SMARTRC', '14', 'ACTINVER CASA DE BOLSA, S.A. DE C.V., GRUPO FINANCIERO ACTINVER, DIVISIÓN FIDUCIARIA', 31400, 332591),
(242, 'UDITRAC', 'ISHRS', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 7190, 5602),
(243, 'DANHOS', '13', 'BANCO NACIONAL DE MÉXICO, S.A.,  INTEGRANTE DEL GRUPO FINANCIERO BANAMEX', 31300, 328070),
(244, 'EDUCA', '18', 'BANCO INVEX, S.A., INSTITUCION DE BANCA MULTIPLE, INVEX GRUPO FINANCIERO', 32989, 383955),
(245, 'FIBRAHD', '15', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 31811, 344253),
(246, 'FIBRAMQ', '12', 'CIBANCO,S.A. INSTITUCION DE BANCA MULTIPLE', 30024, 270149),
(247, 'FIBRAPL', '14', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 31366, 333990),
(248, 'FIBRAUP', '18', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 32783, 383796),
(249, 'FIHO', '12', 'CIBANCO,S.A. INSTITUCION DE BANCA MULTIPLE', 30057, 270102),
(250, 'FINN', '13', 'CIBANCO,S.A. INSTITUCION DE BANCA MULTIPLE', 30026, 270611),
(251, 'FMTY', '14', 'BANCO INVEX, S.A., INSTITUCION DE BANCA MULTIPLE, INVEX GRUPO FINANCIERO', 31583, 339122),
(252, 'FNOVA', '17', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 32578, 371850),
(253, 'FPLUS', '16', 'BANCO AZTECA S.A. INSTITUCION DE BANCA MULTIPLE', 32296, 362119),
(254, 'FSHOP', '13', 'CIBANCO,S.A. INSTITUCION DE BANCA MULTIPLE', 30073, 326142),
(255, 'FSITES', '20', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 34582, 415340),
(256, 'FUNO', '11', 'BANCO ACTINVER, S.A. INSTITUCION DE BANCA MULTIPLE, GRUPO FINANCIERO ACTINVER', 7556, 6959),
(257, 'STORAGE', '18', 'CIBANCO,S.A. INSTITUCION DE BANCA MULTIPLE', 32898, 385293),
(258, 'TERRA', '13', 'CIBANCO,S.A. INSTITUCION DE BANCA MULTIPLE', 30066, 270662);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emisoras`
--
ALTER TABLE `emisoras`
  ADD PRIMARY KEY (`folio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emisoras`
--
ALTER TABLE `emisoras`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
