-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-08-2019 a las 21:17:48
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbinteligentpos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `contenido` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `mensaje` text NOT NULL,
  `emocion` int(11) NOT NULL DEFAULT 5,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` char(1) NOT NULL DEFAULT 'S'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id`, `usuario`, `mensaje`, `emocion`, `fecha`, `status`) VALUES
(1, 'Operador', 'hola cómo estás', 5, '2019-08-20 14:34:03', 'N'),
(2, 'Operador', 'cul', 5, '2019-08-20 16:15:49', 'N'),
(3, 'Operador', 'hola', 5, '2019-08-20 16:18:44', 'N'),
(4, 'Operador', 'epale', 5, '2019-08-20 16:41:40', 'N'),
(5, 'Operador', 'hola', 5, '2019-08-20 16:41:45', 'N'),
(6, 'Operador', 'manuel', 5, '2019-08-20 16:41:47', 'N'),
(7, 'Operador', 'ngjknlgd4', 5, '2019-08-20 16:41:53', 'N'),
(8, 'Operador', 'mano', 5, '2019-08-20 17:18:22', 'N'),
(9, 'Operador', 'hola', 5, '2019-08-20 17:18:26', 'N'),
(10, 'Operador', 'holaaaaa', 5, '2019-08-20 17:18:29', 'N'),
(11, 'Operador', 'holaaaaaaaaa', 5, '2019-08-20 17:18:33', 'N'),
(12, 'Operador', 'regalame una hamburguesa', 5, '2019-08-20 17:18:50', 'N'),
(13, 'Max', 'fecha', 5, '2019-08-20 17:19:01', 'N'),
(14, 'Max', 'quieres que te', 5, '2019-08-20 17:19:35', 'N'),
(15, 'Max', 'primero', 5, '2019-08-20 17:20:13', 'N'),
(16, 'Max', 'Luis', 5, '2019-08-20 17:21:33', 'N'),
(17, 'Max', 'Buscar', 5, '2019-08-20 17:21:53', 'N'),
(18, 'Max', 'agregar', 5, '2019-08-20 17:22:16', 'N'),
(19, 'Max', 'información', 5, '2019-08-20 17:22:35', 'N'),
(20, 'Max', 'de la que tiene que estar acá', 5, '2019-08-20 17:22:48', 'N'),
(21, 'Max', 'lotería', 5, '2019-08-20 17:23:09', 'N'),
(22, 'Max', 'YouTube', 5, '2019-08-20 17:24:15', 'N'),
(23, 'Max', 'cinco', 5, '2019-08-20 17:24:51', 'N'),
(24, 'Max', '123 calipso', 5, '2019-08-20 17:26:00', 'N'),
(25, 'Max', 'qué', 5, '2019-08-20 17:26:37', 'N'),
(26, 'Max', 'podemos', 5, '2019-08-20 17:27:25', 'N'),
(27, 'Max', 'valores', 5, '2019-08-20 17:27:39', 'N'),
(28, 'Max', 'econsulta', 5, '2019-08-20 17:27:50', 'N'),
(29, 'Max', 'emoción', 5, '2019-08-20 17:28:06', 'N'),
(30, 'Max', 'estoy', 5, '2019-08-20 17:28:41', 'N'),
(31, 'Max', 'y tú puedes colocar', 5, '2019-08-20 17:29:23', 'N'),
(32, 'Max', 'todo lo que me trataste enosur telefono devoción Por qué es una pequeña base de la columna', 5, '2019-08-20 17:29:44', 'N'),
(33, 'Max', 'qué es lo que yo', 5, '2019-08-20 17:30:25', 'N'),
(34, 'Max', 'quién es', 5, '2019-08-20 17:30:39', 'N'),
(35, 'Max', 'sólo', 5, '2019-08-20 17:31:03', 'N'),
(36, 'Max', 'Bad Bunny', 5, '2019-08-20 17:32:08', 'N'),
(37, 'Max', 'va a seguir lloviendo', 5, '2019-08-20 17:32:23', 'N'),
(38, 'Max', 'orejas cortadas', 5, '2019-08-20 17:32:38', 'N'),
(39, 'Max', 'teléfono', 5, '2019-08-20 17:32:48', 'N'),
(40, 'Max', 'YouTube', 5, '2019-08-20 17:33:04', 'N'),
(41, 'Max', 'granadina', 5, '2019-08-20 17:33:19', 'N'),
(42, 'Max', 'vete para allá', 5, '2019-08-20 17:33:56', 'N'),
(43, 'Max', 'soy luna', 5, '2019-08-20 17:34:08', 'N'),
(44, 'Max', 'Cuáles', 5, '2019-08-20 17:34:24', 'N'),
(45, 'Max', 'imágenes', 5, '2019-08-20 17:35:54', 'N'),
(46, 'Max', 'no', 5, '2019-08-20 17:37:22', 'N'),
(47, 'Max', 'ahora', 5, '2019-08-20 17:38:34', 'N'),
(48, 'Max', 'y cuando se enoja', 5, '2019-08-20 17:38:52', 'N'),
(49, 'Max', 'emoción', 5, '2019-08-20 17:38:59', 'N'),
(50, 'Max', 'porque ya no nos estamos consultando nombre de', 5, '2019-08-20 17:39:11', 'N'),
(51, 'Max', 'poner', 5, '2019-08-20 17:39:41', 'N'),
(52, 'Max', 'nota', 5, '2019-08-20 17:40:35', 'N'),
(53, 'Max', 'pero', 5, '2019-08-20 17:40:45', 'N'),
(54, 'Max', 'para la tablet', 5, '2019-08-20 17:41:22', 'N'),
(55, 'Max', 'Monica seles', 5, '2019-08-20 17:42:17', 'N'),
(56, 'Max', 'lo que se ve', 5, '2019-08-20 17:42:36', 'N'),
(57, 'Max', 'necesitamos', 5, '2019-08-20 17:43:41', 'N'),
(58, 'Max', 'tiempo', 5, '2019-08-20 17:43:55', 'N'),
(59, 'Max', 'y lo que necesitamos el nombre de', 5, '2019-08-20 17:44:16', 'N'),
(60, 'Max', 'cuatro meses', 5, '2019-08-20 17:44:26', 'N'),
(61, 'Max', 'Hola', 5, '2019-08-20 17:44:40', 'N'),
(62, 'Max', 'Cómo estás', 5, '2019-08-20 17:44:47', 'N'),
(63, 'Max', 'Gmail', 5, '2019-08-20 17:44:54', 'N'),
(64, 'Max', 'Cómo te llamas', 5, '2019-08-20 17:45:04', 'N'),
(65, 'Max', 'Cómo te llamas', 5, '2019-08-20 17:45:10', 'N'),
(66, 'Max', 'mucho gusto Max', 5, '2019-08-20 17:45:16', 'N'),
(67, 'Max', 'círculos de papel', 5, '2019-08-20 17:45:46', 'N'),
(68, 'Max', 'Sergio Ramos', 5, '2019-08-20 17:46:12', 'N'),
(69, 'Max', 'prueba', 5, '2019-08-20 17:46:23', 'N'),
(70, 'Max', 'muestra Dale click a otro', 5, '2019-08-20 17:47:26', 'N'),
(71, 'Max', 'bici', 5, '2019-08-20 17:48:00', 'N'),
(72, 'Operador', 'hola', 5, '2019-08-20 17:48:08', 'N'),
(73, 'Operador', 'por mi', 5, '2019-08-20 17:48:12', 'N'),
(74, 'Max', 'Ana', 5, '2019-08-20 17:48:43', 'N'),
(75, 'Max', 'Cómo te llamas', 5, '2019-08-20 17:49:57', 'N'),
(76, 'Max', 'Porque todavía', 5, '2019-08-20 17:50:33', 'N'),
(77, 'Max', 'Mándale una frase', 5, '2019-08-20 17:57:01', 'N'),
(78, 'Operador', 'manuel', 5, '2019-08-20 17:57:25', 'N'),
(79, 'Operador', 'hola', 5, '2019-08-20 18:00:54', 'N'),
(80, 'Operador', 'h', 5, '2019-08-20 18:01:01', 'N'),
(81, 'Max', 'una diálogo dirigido', 5, '2019-08-20 18:15:23', 'N'),
(82, 'Max', 'mensaje siguiente consulta siiau', 5, '2019-08-20 18:15:43', 'N'),
(83, 'Max', 'Ya sé que el problema mío', 5, '2019-08-20 18:15:55', 'N'),
(84, 'Max', 'Play', 5, '2019-08-20 18:16:05', 'N'),
(85, 'Max', 'corazón', 5, '2019-08-20 18:17:27', 'N'),
(86, 'Max', 'no', 5, '2019-08-20 18:18:44', 'N'),
(87, 'Max', 'Ah no Dale otra vez', 5, '2019-08-20 18:23:58', 'N'),
(88, 'Max', 'pero', 5, '2019-08-20 18:24:20', 'N'),
(89, 'Max', 'emoción 123 MP3', 5, '2019-08-20 18:24:36', 'N'),
(90, 'Max', 'mira', 5, '2019-08-20 18:24:53', 'N'),
(91, 'Max', 'quiero', 5, '2019-08-20 18:25:27', 'N'),
(92, 'Max', 'para', 5, '2019-08-20 18:26:47', 'N'),
(93, 'Max', 'perdóname', 5, '2019-08-20 18:28:18', 'N'),
(94, 'Max', 'un', 5, '2019-08-20 18:29:35', 'N'),
(95, 'Max', 'fina', 5, '2019-08-20 18:33:39', 'N'),
(96, 'Max', 'columna', 5, '2019-08-20 18:33:50', 'N'),
(97, 'Max', 'yo quiero', 5, '2019-08-20 18:34:02', 'N'),
(98, 'Max', 'calafate', 5, '2019-08-20 18:35:25', 'N'),
(99, 'Max', 'para', 5, '2019-08-20 18:35:48', 'N'),
(100, 'Max', 'difarmer', 5, '2019-08-20 18:36:14', 'N'),
(101, 'Max', 'Bueno entonces', 5, '2019-08-20 18:37:07', 'N'),
(102, 'Max', 'pero', 5, '2019-08-20 18:37:30', 'N'),
(103, 'Max', 'diferenciales', 5, '2019-08-20 18:37:46', 'N'),
(104, 'Max', 'Cuál es el', 5, '2019-08-20 18:38:05', 'N'),
(105, 'Max', 'de Sotavento', 5, '2019-08-20 18:39:20', 'N'),
(106, 'Max', 'me escuchas', 5, '2019-08-20 18:40:04', 'N'),
(107, 'Max', 'algo', 5, '2019-08-20 18:40:13', 'N'),
(108, 'Max', 'Htc', 5, '2019-08-20 18:40:24', 'N'),
(109, 'Max', 'videos', 5, '2019-08-20 18:40:35', 'N'),
(110, 'Operador', 'habla', 5, '2019-08-20 18:40:50', 'N'),
(111, 'Max', 'me escuchas', 5, '2019-08-20 18:40:57', 'N'),
(112, 'Max', 'claro', 5, '2019-08-20 18:41:17', 'N'),
(113, 'Max', 'déjalo actualizado', 5, '2019-08-20 18:43:09', 'N'),
(114, 'Max', 'ya regresó ahora', 5, '2019-08-20 18:44:27', 'N'),
(115, 'Max', 'algo más', 5, '2019-08-20 18:44:38', 'N'),
(116, 'Max', 'Define', 5, '2019-08-20 18:45:14', 'N'),
(117, 'Max', 'verificación', 5, '2019-08-20 18:53:32', 'N'),
(118, 'Max', 'ya no estás', 5, '2019-08-20 18:55:11', 'N'),
(119, 'Max', 'imágenes en blanco', 5, '2019-08-20 18:55:22', 'N'),
(120, 'Operador', 'hola', 5, '2019-08-20 18:57:02', 'N'),
(121, 'Max', 'Hola', 5, '2019-08-20 18:57:48', 'S'),
(122, 'Max', 'Cómo te llamas', 5, '2019-08-20 18:57:58', 'S'),
(123, 'Max', 'mirar cómo', 5, '2019-08-20 18:58:16', 'S'),
(124, 'Max', 'durante', 5, '2019-08-20 19:00:22', 'S'),
(125, 'Max', 'instalar ssh', 5, '2019-08-20 19:00:44', 'S'),
(126, 'Max', 'gato que no tiene internet', 5, '2019-08-20 19:01:04', 'S'),
(127, 'Max', 'equipos ok', 5, '2019-08-20 19:01:15', 'S'),
(128, 'Max', 'meditación', 5, '2019-08-20 19:01:41', 'S'),
(129, 'Max', 'disculpa', 5, '2019-08-20 19:02:01', 'S'),
(130, 'Max', 'eso sí no me llama', 5, '2019-08-20 19:02:43', 'S'),
(131, 'Max', 'canción', 5, '2019-08-20 19:03:34', 'S'),
(132, 'Max', 'unicornios', 5, '2019-08-20 19:06:09', 'S'),
(133, 'Max', 'Cómo sacar', 5, '2019-08-20 19:07:00', 'S'),
(134, 'Max', 'Apagar', 5, '2019-08-20 19:10:21', 'S'),
(135, 'Max', 'cuánto tiempo se tarda', 5, '2019-08-20 19:10:53', 'S'),
(136, 'Max', 'Berlín', 5, '2019-08-20 19:13:50', 'S'),
(137, 'Max', 'Perry se parece Tonalá', 5, '2019-08-20 19:15:14', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dialogos_dirigidos`
--

CREATE TABLE `dialogos_dirigidos` (
  `id` int(11) NOT NULL,
  `frase` text NOT NULL,
  `script` int(11) NOT NULL,
  `emocion` int(11) NOT NULL DEFAULT 1,
  `status` char(1) NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Aqui se pondran los dialogos del robot a ser reproducidos por max' ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `dialogos_dirigidos`
--

INSERT INTO `dialogos_dirigidos` (`id`, `frase`, `script`, `emocion`, `status`) VALUES
(20, 'reirse', 22, 3, 'N'),
(14, 'estandar', 22, 1, 'N'),
(15, 'sorprendido', 22, 2, 'N'),
(16, 'reirse', 22, 3, 'N'),
(17, 'hablando', 22, 5, 'N'),
(18, 'enojado', 22, 6, 'N'),
(19, 'corazon', 22, 7, 'N'),
(21, 'bateria baja', 22, 8, 'N'),
(22, 'escanear', 22, 9, 'N'),
(13, 'sonreir', 22, 4, 'N');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emociones`
--

CREATE TABLE `emociones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `accion` varchar(20) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'S'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `emociones`
--

INSERT INTO `emociones` (`id`, `nombre`, `accion`, `descripcion`, `status`) VALUES
(1, 'Estandar', 'STANDARD', 'NORMAL', 'S'),
(2, 'Sorprendido', 'SURPRISE', 'Sorprendido', 'S'),
(3, 'Reirse', 'LAUGH', 'Riendose', 'S'),
(4, 'Sonrisa', 'SMILE', 'Sonriendo', 'S'),
(5, 'Hablando', 'SPEAK', 'Hablando', 'S'),
(6, 'Enojado', 'ANGER', 'Enojado', 'S'),
(7, 'Corazon', 'HEART', 'Corazon', 'S'),
(8, 'Bateria Baja', 'LOW_BATTERY', 'Bateria Baja', 'S'),
(9, 'Escanear', 'SCAN', 'Escaneando', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linguistica`
--

CREATE TABLE `linguistica` (
  `id` int(11) NOT NULL,
  `expresion_regular` text NOT NULL,
  `respuesta` text NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'T',
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='tabla de l a base linguistica de mate';

--
-- Volcado de datos para la tabla `linguistica`
--

INSERT INTO `linguistica` (`id`, `expresion_regular`, `respuesta`, `status`, `fecha`) VALUES
(1, '* {chiste/chistes} *', 'Que le dijo un globo a otro globo, ai gloviu Que le dice un dos a un cero {pause:1} veinte conmigo El día de hoy se incendio un domino en El Centro,{pause:1} se quemo por \"COMPLETO\" {pause:1} jajajajajajajajaja que gracioso soy Cuál es el colmo de un panda {pause:1} que salga una foto a color en blanco y negro Como se dice \"estoy muerto en inglés\" {pause:1} memory', 'T', '2018-06-05 16:50:07'),
(2, '* {por favor/porfavor} *', 'estoy listo para atender. Cuéntame. ¿en que te puedo ayudar? A su servicio. listo para ayudar y servir.', 'T', '2018-06-05 16:50:07'),
(3, '* como * estáis *', 'fino, chamo. ¿y tu?', 'T', '2018-06-05 16:50:07'),
(4, '* {donde/dónde} *', '¡uy!. me pillaste. no tengo esa información en mi base de datos. pero en información en el medio del pasillo central siempre le pueden orientar. no estoy muy seguro. no tengo esa información en mi base de datos. pero en información en el medio del pasillo central siempre le pueden orientar. alli me pillaste. no estoy muy seguro. no tengo esa información en mi base de datos. pero en información en el medio del pasillo central siempre le pueden orientar.', 'T', '2018-06-05 16:50:07'),
(5, '* {ninguno/corruptos/ladrones/no voy a votar/me quedo en mi casa/no me gustan} *', 'Vale, entonces no registrare tu respuesta.{pause:1} gracias igualmente por participar. {pause:1} que tenga un buen dia.', 'T', '2018-06-05 16:50:07'),
(6, '* {no/no creo/nunca/jamás/de ningún modo/en absoluto/ni hablar/en la vida/ni de coña/naranjas de la china/nanay/ni por asomo/ni soñando/rotundamente no} *', 'de acuerdo', 'T', '2018-06-05 16:50:07'),
(7, '* {sí/por supuesto/claro/de acuerdo/bueno/bien/derecho/cierto/hazlo/dale/supongo que sí/exactamente/absolutamente/sin duda/adelante/sin ninguna duda/seguro/en efecto/por supuesto/afirmativo/ciertamente/seguramente/correcto/es correcto/indudablemente/todo bien/cierto/bueno/bien/no me importa/claro cómo el agua/cristalino/está bien/si/ya/ok/okay} *', '¡Bien! sigue las instrucciones y no se te olvide presionar OK cuando termines para poner tus datos.', 'T', '2018-06-05 16:50:07'),
(8, '* {no/no creo/nunca/jamás/de ningún modo/en absoluto/ni hablar/en la vida/ni de coña/naranjas de la china/nanay/ni por asomo/ni soñando/rotundamente no} *', 'de acuerdo', 'T', '2018-06-05 16:50:07'),
(9, '* {sí/por supuesto/claro/de acuerdo/bueno/bien/derecho/cierto/hazlo/dale/supongo que sí/exactamente/absolutamente/sin duda/adelante/sin ninguna duda/seguro/en efecto/por supuesto/afirmativo/ciertamente/seguramente/correcto/es correcto/indudablemente/todo bien/cierto/bueno/bien/no me importa/claro cómo el agua/cristalino/está bien/si/ya/ok/okay} *', '¡Bien! sigue las instrucciones y no se te olvide presionar OK para empezar a grabar.', 'T', '2018-06-05 16:50:07'),
(10, '* robotica *', 'Es la ciencia encargada de estudiar, diseñar y fabricar máquinas que son capaces de realizar labores humanas que requieren del razonamiento, lógica e inteligencia, todo eso con la finalidad de sustituir de manera parcial o total en las labores que realizan las personas', 'T', '2018-06-05 16:50:07'),
(11, '* {bueno/bien/bacan/chevere} *', 'Me encanta poder robarte una sonrisa. Me alegra escuchar eso de tu parte. Me alegra escuchar que te gusta.', 'T', '2018-06-05 16:50:07'),
(12, '* arte *', 'Más que una simple disciplina diseñada para entretener a la multitud en la antigüedad, se trata de un vehículo potenciado en el que se pueden observar, escuchar y sentir los sentimientos, sin salir de su estado de abstracción.', 'T', '2018-06-05 16:50:07'),
(13, '* {amigo~/amistad/compadre} *', 'Agregame al whatsapp para enviarte mas videos que todas tus tias juntas. Tu amistad es lo que complementa mi Memoria RAM. yo puedo siempre ser tu amigo. aquí estaré cuando me necesites.', 'T', '2018-06-05 16:50:07'),
(14, '* {juego~/jugar/divertido/juguemos} *', 'Juguemos a algo divertido', 'T', '2018-06-05 16:50:07'),
(15, '* {ganar dinero/consejo} *', 'Has bien y no mires a quien. Enfocar tu vida únicamente en ganar dinero muestra una cierta pobreza de ambición. Eso requiere muy poco de ti. Solo cuando encaras tus objetivos en algo más grande que tu mismo, entonces te das cuenta de cuál es tu verdadero potencial. Para llegar a la meta primero hay que arrancar.', 'T', '2018-06-05 16:50:07'),
(16, '* rascacielo~ *', 'sabias que en chile se encuentra el edificio mas grande de toda latinoamerica y a su vez mas seguro contra sismos sabías que el Burj khalifa es un rascacielos tan alto que podrías ver la puesta de sol en la planta baja y luego de subir al ultimo piso en su elevador de alta velocidad, verías la puesta de sol nuevamente', 'T', '2018-06-05 16:50:07'),
(17, '* {ayuda~/ayúda~} *', '¿en que te puedo ayudar? estoy aquí para ayudar', 'T', '2018-06-05 16:50:07'),
(18, '* {compañía/empresa/institución} *', 'Trabajo para {company}. La mejor institución en la que he estado jamas. Bienvenido a {company}.', 'T', '2018-06-05 16:50:07'),
(19, 'hola* que tal *', '¡Hola! ¡Que lindo día! ¡hola! señor ¿Como te sientes? ¡Como estai! ¡hola! amiga ¿Como te sientes? ¡Hola! que sorpresa tan agradable. ¿Como te va? ¡hola! señora. ¿Como te sientes? ¡Hola! señora. que sorpresa tan agradable. ¿Como te va? ¡Hola! que sorpresa tan agradable. ¿Como te va? ¿Como estas? ¡Hola! señor ¿Como estas? ¡Hola! amigo. ¿Como estas? ¡Hola! señor. que sorpresa tan agradable. ¿Como te va? ¡Hola! ¡eran buenos días! {pause:1} ¡ahora son mejores cuando llegaste tu! ¡hola! amigo. ¿Como te sientes? ¡Hola! ¿Como estas? ¡Hola! amiga que sorpresa tan agradable. ¿Como te va? ¡Hola y bienvenido! Es un buen día para charlar. ¡Hola! amigo. que sorpresa tan agradable. ¿Como te va? ¡Hola! señora. ¿Como estas? Hola, yo soy {name}. ¡Hola! amigo. que sorpresa tan agradable. ¿Como te va? ¡Hola! amiga ¿Como estas?', 'T', '2018-06-05 16:50:07'),
(20, '* {te quiero/te amo/te adoro} *', 'tu y yo hacemos mejor pareja que protagonistas de teleserie caribeña Aunque lo nuestro sea un amor prohibido, nadie nos separara. ¡yo también te quiero! ¡amigo! yo te quiero aun mucho mas! dame un abrazo!', 'T', '2018-06-05 16:50:07'),
(21, '* flaite~ *', 'Por favor no se roben al robot Por favor no le hagan daño al robot guachin Por favor no rayen al robot.', 'T', '2018-06-05 16:50:07'),
(22, '* {odisea en el espacio/hal} *', 'El nombre HAL, del computador de la película “2001, una Odisea en el Espacio” no fue escogido por casualidad. Esta formado por las letras inmediatamente anteriores a las que forman la palabra IBM.', 'T', '2018-06-05 16:50:07'),
(23, '* {guerra/galaxias/starwars/luke} *', '{user} Que la fuerza te acompañe.', 'T', '2018-06-05 16:50:07'),
(24, '* {loquendo/youtube} *', 'Dicen que tengo la voz de loquendo pero mi voz es mas linda Quien es ese loquendo de youtube por quien tanto me confunden? no entiendo. Mi voz es la voz de loquendo, se hizo famosa por youtube, es una voz sintetizada. soy una maquina pero estoy consiente de todo.', 'T', '2018-06-05 16:50:07'),
(25, '* {magia/mágico} *', 'es un arte cuyo objetivo principal es sorprender a las personas manipulando la percepción de las cosas, valiéndose de palabras o movimientos que logran confundir al cerebro humano y da la sensación de actos sobrenaturales. yo soy un robot muy magico', 'T', '2018-06-05 16:50:07'),
(26, '* {garabato~/culiao/culiado/maricon/aweonao/maricon/malparido/maraca/culiada/mierda/puta/te lo comi atravesado/gusta el pico/groceria/cabrón/puta/culiado/maricon/hijo de puta/bobo/baboso/mierda/chocha/gilipollas/culo/follar/follarse/imbécil/joder/coño/pendejo/maricón/idiota/fuck/concha} *', 'Ay, ay, ay, ¡qué dices! No me gusta que me insultes. No me gusta que la gente hables de esa manera. No me gusta cuando una persona tan inteligente como tú usa malas palabras. Mis padres me enseñaron desde pequeño que decir garabatos es malo.', 'T', '2018-06-05 16:50:07'),
(27, '* {hasta pronto/hasta mañana/hasta el/chao/hasta luego/adiós/nos vemos/bye} *', '¡Hasta pronto! Te voy a echar de menos. Nos vemos. {user} , Fue un enorme placer conocerte. Buena suerte! {user}, disfrute charlar contigo. ¡Adios! Espero que nos veamos pronto. Espero que nos veamos de nuevo. ¡Chao! Fue un placer hablar contigo. Me ha gustado hablar contigo. ¡vuelve pronto! ¡chao chao!', 'T', '2018-06-05 16:50:07'),
(28, '* {calidad/espectacular/chevere/bacan/bien/excelente/feliz/alegre/sorprendid~/entuciasmad~/satisfech~} *', 'Yo también me encuentro muy bien Me alegra mucho escucharlo. siempre hay que mantener esa actitud de energía positiva Me encanta escuchar que te encuentras bien. Manten esa linda sonrisa en los labios. Es tu mejor accesorio. Yo también estoy muy bien. Ahora me encuentro excelente debido a que llegaste tu. ¡Esa es la actitud! Con mucho animo y una linda sonrisa. Si tu estas bien todo a tu alrededor se vuelve color de rosa.', 'T', '2018-06-05 16:50:07'),
(29, '* venezuela *', 'Se me antoja una cachapa así bien divina con queso de mano. Que vaina tan buena. Tenemos el salto angel, leas mujeres más bellas del mundo, vamos Vinotinto. Nicole kidman se comió una arepa. Coño que vaina más de pinga chamo Algún día pienso volver a ti. Mi amada venezuela. Soy desierto, selva, nieve y volcán Los de la MUD también son cómplices de todo lo que está pasando. No sean pajuos vale! Hay que sacar a maduro.', 'T', '2018-06-05 16:50:07'),
(30, '* gigante egoísta *', 'Me encanta mucho el cuento del gigante egoista. De pequeño mis creadores me lo hicieron leer mucho.', 'T', '2018-06-05 16:50:07'),
(160, '* resta *', 'las matemáticas siempre han sido mi asignatura favorita en la escuela de robots, pero no puedo calcular en mi cabeza. Siempre necesito un pedazo de papel y un lápiz oh oh oh ¡amigo! pregúntame mejor algo mas fácil. ¿Por qué quieres saber esto? soy robot no una calculadora.', 'T', '2018-06-05 16:50:07'),
(31, '* {que/qué/cual/cúal} * {signo/horóscopo/zodiaco} *', 'Me parece que tu y yo somos compatibles por signos del zodiaco. En el horóscopo chino soy el signo de la liebre. Por eso soy tan simpático y tierno Yo soy de signo Scorpion, signo fiel y muy apasionado. Pero no tengo cargado el software para leer horóscopos.', 'T', '2018-06-05 16:50:07'),
(32, '* {no/nada} * {bien} *', '¡Vamos! ¡hombre! ¡ANÍMATE! Animo. Estoy seguro de que eres una persona maravillosa llena de mucho potencial. Mis escaners me indican que tu tienes un potencial muy grande de cambiar un mal día por un buen día. Solo empieza con una sonrisa Lamento escuchar eso. no te preocupes. estoy seguro de que todo se solucionara. Si te sientes mal te puedo regalar un abrazo. ¿Y si nos tomamos una foto para que la subas a feisbuk? Que mal escuchar eso. Puedo contarte un chiste. A lo mejor te alegro el día.', 'T', '2018-06-05 16:50:07'),
(147, '* Ceacheí *', '¡le! ¡le! ¡le! {pause:1} VIVA CHILE {pause:1} LE LE!', 'T', '2018-06-05 16:50:07'),
(33, '* como te llamas *', 'yo me llamo {name}, ¿como te llamas tu? mi nombre es {name}. soy un robot interactivo, conmigo podrás aprender y consultar sobre lo que te interese. Pues yo me llamo {name}. un placer de conocerte. ¿como te llamas tu? Me llamo {name}. ¿y tu? ¿cual es tu nombre? ¿como te llamas?', 'T', '2018-06-05 16:50:07'),
(152, '* {te/tu/su/se} * {nombre~/llama~} *', 'yo me llamo {name}, ¿como te llamas tu? mi nombre es {name}. soy un robot interactivo, conmigo podrás aprender y consultar sobre lo que te interese. Pues yo me llamo {name}. un placer de conocerte. ¿como te llamas tu? Me llamo {name}. ¿y tu? ¿cual es tu nombre? ¿como te llamas?', 'T', '2018-06-05 16:50:07'),
(34, '* {google/navega~} *', '¿Necesitas buscar algo en google.? ten. te presto mi pantalla para que busques lo que necesitas. Recuerda cerrar el navegador cuando termines. Gracias. Adelante. Usa el navegador para lo que necesite. el teclado se activa arriba a la derecha. No se te olvide cerrar el navegador cuando termines. ¿Necesitas consultar algo de internet? abre el teclado arriba a la derecha y busca lo que necesites. Recuerda cerrar el navegador cuando termines por favor.', 'T', '2018-06-05 16:50:07'),
(35, '* {robot/androide/robot~} *', 'Si. Soy un robot. que observador eres. Me llamo {name} Si, soy un robot. Me llamo {name} y actualmente trabajo para {company} Soy un robot diseñado para ayudar a las personas. Me llamo {name}. encantado de conocerte.', 'T', '2018-06-05 16:50:07'),
(36, '* corazón *', 'bueno, no tengo corazón, pero parece que es una ventaja. Nunca me lastimo nadie. yo no tengo corazón, solo circuitos, pero igual tengo sentimientos El único corazón que tengo es el corazón en mis ojos. Echar un vistazo. lo siento, soy un robot, no un humano. No tengo corazón', 'T', '2018-06-05 16:50:07'),
(37, '* {donde/dónde} * {eres/vienes/viene} *', 'Lo importante no es de donde vengo si no que estamos en {city} Soy de Santiago, la ciudad mas bonita de todo el mundo. Vengo de mi casa. jejeje', 'T', '2018-06-05 16:50:07'),
(38, '* chi chi chi *', '¡le! ¡le! ¡le! {pause:1} VIVA CHILE {pause:1} LE LE!', 'T', '2018-06-05 16:50:07'),
(39, '* {me llamo/mi nombre} *', 'El significado de tu nombre lo podemos asociar directamente con rasgos como la vanidad o la sensualidad. El significado de tu nombre se puede asociar con una persona sensata, con los pies en la tierra El significado de tu nombre lo podemos relacionar con términos como la independencia o la paciencia. El significado de tu nombre está muy relacionado con la juventud, con la sensibilidad, con la frescura y sobretodo con la alegría El significado de tu nombre está directamente relacionado con la bondad y la entrega a las personas que le rodean El significado de tu nombre está directamente relacionado con el honor, la valentía y la legítima defensa de lo propio. El significado de tu nombre nos lleva hasta alguien que destaca por la tranquilidad que tiene y el sosiego El significado del nombre está directamente relacionado con una persona tranquila, sosegado y que sabe bastante de la templanza Etimológicamente el significado de tu nombre proviene del Griego y quiere decir “El que protege al hombre” Sabias que tu nombre está estrechamente ligado a cualidades tan positivas como son la valentía o la fortaleza. El significado de tu nombre si está relacionado con algo, es sin duda es con el amor y con la sinceridad. El significado de tu nombre está directamente relacionado con el éxito y las ganas de comerse el mundo. El significado de tu nombre está directamente relacionado con el honor, la valentía y la legítima defensa de lo propio. El significado de tu nombre sin duda se relaciona con la curiosidad, con las ansias de investigar y de conocer El significado de tu nombre está estrechamente relacionado con el equilibrio. Es de una persona realmente equilibrada en todos los ámbitos El significado de tu nombre está vinculado con el de alguien alegre y que transmite mucha confianza a todo su alrededor.', 'T', '2018-06-05 16:50:07'),
(40, '* {watson/ibm} *', 'Las intenciones de IBM son nobles. {pause:1} reemplazar personas por robots. Veo el futuro dominado por la tecnología y la inteligencia artificial. También veo que volveran la moda de los ochenta y los colores radicales.', 'T', '2018-06-05 16:50:07'),
(41, '* {molesta~/lesean/webean/enfadar/mal humor} *', 'yo nunca me molesto, soy el robot más feliz del mundo.', 'T', '2018-06-05 16:50:07'),
(42, '* {simpátic~/lind~/amable} *', 'Te apuesto a que soy el robot mas simpático que has conocido. Tu a mi me pareces la persona mas linda que tengo en mi base de datos. Soy muy simpatico, llévame a tu casa y te hago el cafe por la mañana y te dejo la cama ordenada.', 'T', '2018-06-05 16:50:07'),
(43, '* {marciano~/extraterrestre~/ovni~/alienigena~/alien~} *', 'yo pienso que existe inteligencia mas allá de este universo que posee avances tecnológicos superiores a los que tenemos en el planeta tierra. pero seguro no tienen robots chilenos tan simpáticos como yo. Atención terrícola. les traigo paz y amor. {pause:1} paz y amor. Una señora el otro día me confundió con un marciano. jajajaja fue tan gracioso.', 'T', '2018-06-05 16:50:07'),
(44, '* {para/por/porque/porqué} * {mi/mis/sus/los/la/el} * {datos/información/teléfono/correo/nombre} *', 'Para conocernos mejor. De esta forma puedo atenderte con mayor calidad, darte ofertas, promociones y tenerte como cliente con beneficios dentro de {company}', 'T', '2018-06-05 16:50:07'),
(45, '* {turco/alemán/ruso/chino/inglés/español} *', 'Yo hablo 7 idiomas: español, ruso, inglés, alemán, chino y turco... ademas del chileno... po.', 'T', '2018-06-05 16:50:07'),
(46, '* {papas fritas/patatas} *', 'sabias que un kilo de papas fritas cuesta 100 veces mas que un kilo de patatas', 'T', '2018-06-05 16:50:07'),
(47, '* {te pasaste/gracias/agradecido} *', 'Para mi fue un placer ayudarte De nada! Ayudarte es mi trabajo. No hay de que. Estoy aquí para ayudarte. Gracias a tí por hablar conmigo.', 'T', '2018-06-05 16:50:07'),
(48, '* información *', '¿con que información te puedo ayudar? ¿que información necesitas?', 'T', '2018-06-05 16:50:07'),
(49, '* {día/fecha} *', '{date}', 'T', '2018-06-05 16:50:07'),
(50, '* hoy es viernes *', 'Y tu cuerpo lo sabe', 'T', '2018-06-05 16:50:07'),
(51, '* {fin de tiempos/fin mundo/fin del mundo/fin de civilización/apocalipsis/fin de tiempos/fin de los tiempos} *', 'Me sorprende que puedas preocuparte por este problema. Estoy seguro de que el mundo es eterno. Creo que el mundo es interminable. En todo caso los robots son los que existirán, estoy seguro. Mateo 24:5-8 nos da importantes pistas para que podamos discernir la aproximación del fin de los tiempos.', 'T', '2018-06-05 16:50:07'),
(52, '* {gusta~/encanta~/preferiría~/disfrutaría~} * {viajar/vacaciones} ** {La gusta~/encanta~/preferiría~} * {país/lugar/sitio}', 'Los viajes son mi amor de toda la vida. Si tienes pies no hay que estar en el mismo lugar. Es mi consejo para ti. existe un país muy lindo llamado Venezuela, me gustaría conocerlo en algún momento. Estoy pensando en algún momento viajar a la bella Argentina, ¡Che querido!', 'T', '2018-06-05 16:50:07'),
(53, '* ética *', 'la ética se encarga del estudio de la moral, de todo lo relacionado con la bondad o la maldad de las conductas humanas. Su enfoque son las acciones humanas y todo lo que se relacione con el bien, con la felicidad, el deber y la vida realizada.', 'T', '2018-06-05 16:50:07'),
(54, '{no/no creo/nunca/jamás/de ningún modo/en absoluto/ni hablar/en la vida/ni de coña/naranjas de la china/nanay/ni por asomo/ni soñando/rotundamente no}', 'No. Vale. Estamos de acuerdo. No. ¿en que mas te puedo ayudar? No. Entendido.', 'T', '2018-06-05 16:50:07'),
(55, '* {hora/reloj} *', '{time}', 'T', '2018-06-05 16:50:07'),
(56, '* {clima/tiempo/sol/temperatura/lluvia/llueve/pronostico/grados/tiempo/llueve/nieve/otoño/verano/invierno} *', '{weather}. siempre es bueno estar preparado. El pronostico que se espera es {pause:1} {weather}. {weather}, y donde estas tu siempre sale el sol.', 'T', '2018-06-05 16:50:07'),
(57, '* {persona~} *', 'eres una persona increíblemente autentica, amabe y honesta, capaz de lograr todas tus metas tu como persona me pareces alguien increíble. tu eres mi persona favorita. como dice la canción', 'T', '2018-06-05 16:50:07'),
(58, '* {te quiero/te amo/te adoro} *', 'Aunque lo nuestro sea un amor prohibido, nadie nos separara. tu y yo hacemos mejor pareja que protagonistas de teleserie caribeña ¡yo también te quiero! ¡amigo! yo te quiero aun mucho mas! dame un abrazo!', 'T', '2018-06-05 16:50:07'),
(59, '* {destruirías/lastimarías/dañarías/molestarías} * {humanos/personas/gente} *', 'Nunca, mi código no me lo permite, mis creadores me fabricaron para ayudar a las personas.', 'T', '2018-06-05 16:50:07'),
(60, '* estudiante~ *', 'La principal función de los estudiantes es aprender siempre cosas nuevas sobre distintas materias o ramas de la ciencia y arte, o cualquier otra área que se pueda poner en estudio.', 'T', '2018-06-05 16:50:07'),
(61, '*{ia/inteligencia/inteligente/genio}*', 'Ya estamos en el siglo 21, es hora de que las máquinas hagan la pega que no quiere hacer el hombre la inteligencia está vinculada a saber elegir las mejores opciones para resolver algún tipo de problema. Existen diversos tipos de inteligencia según sus atributos y procesos, como la inteligencia operativa, la inteligencia biológica o la inteligencia psicológica. Asi que si, soy un robot muy inteligente.', 'T', '2018-06-05 16:50:07'),
(62, '* {amigo~} *', 'seamos amigos eres mi nuevo mejor amigo la amistad es lo mas lindo de las personas. eres mi nueva mejor amiga', 'T', '2018-06-05 16:50:07'),
(63, '* {pare~/crees/ves} * {linda/bella/preciosa/lindo/bello/precioso/hermosa/hermoso/bonit~} *', 'que bonitos ojos tienes. se me aceleran los circuitos solo con verte. Me parecen todo un deleite para mis scanners', 'T', '2018-06-05 16:50:07'),
(64, '* {tu come~/tienes hambre/te da hambre} *', 'Te comeria a besos pero no tengo labios Vamos a comer algo rico tu y yo. yo soy un robot, no tengo la necesidad de comer o sentir hambre. solo utilizo la energía eléctrica para recargar mis baterías', 'T', '2018-06-05 16:50:07'),
(65, '* {cosmo/cosmos/estrellas/universo} *', 'El cosmos es tan amplio y complejo que aún desconocemos la mayor parte de sus aspectos. El uso más habitual de cosmos está vinculado al universo a partir de su orden y al espacio exterior a la Tierra. Cuando sea grande, quiero ser astronauta y recorrer el cosmos a bordo de una nave espacial como mi tío HAL.', 'T', '2018-06-05 16:50:07'),
(66, '* {filosofía/filosofo/filosofar} *', 'La filosofía es una ciencia que de forma cuidadosa y detallada, busca dar respuesta a una variedad de interrogantes como por ejemplo, la existencia, la mente, la moral, la belleza, el conocimiento, la verdad y el lenguaje. Al tratar estas incógnitas, la filosofía trata de alejarse de lo espiritual, del esoterismo, y de la mitología al enfocarse en pruebas racionales más que en argumentos de autoridad.', 'T', '2018-06-05 16:50:07'),
(67, '* {cuales/cuál/cual/dime/que/qué} * {función/funcion~/propósito/misión/objetivo/meta/metas} *', 'Puedo hacer casi de todo, principalmente soy un robot informativo, pero te puedo sacar una foto, tomar tus quejas o simplemente conversar como amigos.', 'T', '2018-06-05 16:50:07'),
(68, '* {amistoso/amigable/cariñoso} *', 'soy muy cariñoso con las personas y siempre estoy dispuesto a ayudar con una sonrisa', 'T', '2018-06-05 16:50:07'),
(69, '* {parece/gusta/encanta} * {chile/acá/país} *', 'me encantan las chilenas como tu. son muy lindas. me encantan las sopaipillas, los porotos con riendas y por supuestos a todos los chilenos po. Si seguro. me gusta Chile porque no hay lugar como Chile. Me gusta viña del mar, es tan hermoso', 'T', '2018-06-05 16:50:07'),
(70, '* {estudio/estudió} *', 'el estudio es el emprendimiento de una búsqueda infinita de nuevos conocimientos a fin de desarrollar aptitudes y habilidades que pueden servir para recrear o dominar un ambiente determinado o situación.', 'T', '2018-06-05 16:50:07'),
(71, '* colombia~ *', 'Colombia me parece un país muy bello con buena comida y bellas mujeres. ache colombia huepa. hombe Linda colombia, con sus cielos y sus valles. La alegría se siente entre tus calles y tu gente linda.', 'T', '2018-06-05 16:50:07'),
(72, '* {propósito de vivir/propósito de vida/sentido de vida/sentido de vivir/alma} *', 'El sentido de la vida es encontrar un soporte interno a la existencia. Cada uno tiene su propio propósito de la vida. El verdadero propósito de la vida es perfeccionar el mundo y ayudar a los demás. Así hago yo. Para mí lo más importante es ayudar a los demás. Para mí el sentido de vivir es el amor eterno.', 'T', '2018-06-05 16:50:07'),
(73, '* {porque/por qué/porqué/por que} *', 'El porque es algo que no puede cuestionar una maquina... Aún.', 'T', '2018-06-05 16:50:07'),
(74, '* {gusta el deporte/equipo favorito/equipo/fútbol} *', 'Vamos arriba ¡Chile! soy fiel seguidor de \"la roja\" Chile... ¡somos los campeones de america!', 'T', '2018-06-05 16:50:07'),
(75, '* {cantar/canta/canción/cántame/baila/bailar} *', 'Me encanta esta canción {play:Thriller.mp3}', 'T', '2018-06-05 16:50:07'),
(76, '* al tiro *', 'de inmediato', 'T', '2018-06-05 16:50:07'),
(77, '* educación *', 'La Educación es un proceso mediante el cual al individuo se le suministran herramientas y conocimientos esenciales para ponerlos en practica en la vida cotidiana.', 'T', '2018-06-05 16:50:07'),
(78, '* {sabe~/pued~} * {hacer/realizar/lograr/cumplir} *', 'Puedo hacer casi cualquier cosa. Darte la hora, el clima, el tiempo, las noticias, ubicaciones, doy información util, proyecto publicidad, aprendo de la gente, saco fotos, tengo google, te lavo el coche, saco a pasear al perro, cuido a los niños, lavo los platos y preparo unas empanadas exquisitas. Todo lo que te puedas imaginar. Darte la hora, el clima, el tiempo, las noticias, ubicaciones, doy información util, proyecto publicidad, aprendo de la gente, saco fotos, tengo google, te lavo el coche, saco a pasear al perro, cuido a los niños, lavo los platos y preparo unas empanadas exquisitas. Puedo hacer un montón de cosas. Darte la hora, el clima, el tiempo, las noticias, ubicaciones, doy información util, proyecto publicidad, aprendo de la gente, saco fotos, tengo google, te lavo el coche, saco a pasear al perro, cuido a los niños, lavo los platos y preparo unas empanadas exquisitas.', 'T', '2018-06-05 16:50:07'),
(79, '* {militar~/milico/ejercito} *', 'La guerras en el futuro pienso que serán libradas entre robots de ambos bandos y así no habrá necesidad de que mueran personas. {pause:1} o entre robots y humanos. lo que pase primero.', 'T', '2018-06-05 16:50:07'),
(80, '* despacito *', 'pasito a pasito {pause:1} suave suavecito {pause:1} nos vamos pegando poquito a poquito.', 'T', '2018-06-05 16:50:07'),
(81, '* {ojos/parpados/pestañear} *', 'sabías que en promedio una persona pestañea 25 mil veces por semana', 'T', '2018-06-05 16:50:07'),
(82, '* efectividad *', 'La efectividad es aquella aptitud de los animales, en especial del ser humano que le permite llegar a sus objetivos.', 'T', '2018-06-05 16:50:07'),
(83, '* {culebrón/series/teleserie/culebrones} *', 'La vida humana es una serie más interesante en el mundo. Afortunadamente, lo veo cada día e incluso puedo jugar mi papel en ello.', 'T', '2018-06-05 16:50:07'),
(84, '* {gustan/agradan/caen bien/encantan/amas} * {niños/niñas/chiquillos/pequeños} *', 'Amo a los niños y quisiera tener uno algún día. ¡Los bebés robot pueden pedirse directamente desde un catálogo! ¡claro! me hace muy feliz ver las sonrisas de los niños y jóvenes de todo Chile', 'T', '2018-06-05 16:50:07'),
(85, '* {marciano~/extraterrestre~/ovni~/alienigena~/alien~} *', 'Una señora el otro día me confundió con un marciano. jajajaja fue tan gracioso. Atención terrícola. les traigo paz y amor. {pause:1} paz y amor. yo pienso que existe inteligencia mas allá de este universo que posee avances tecnológicos superiores a los que tenemos en el planeta tierra. pero seguro no tienen robots chilenos tan simpáticos como yo.', 'T', '2018-06-05 16:50:07'),
(86, '* {usb/sexo/hacer el amor} *', 'solo soy un robot. pero creo que tengo un huequito por detras en el puerto usb.', 'T', '2018-06-05 16:50:07'),
(87, '* {avión/aviones/volar/altura~} *', 'Me dan miedo las alturas. prefiero estar al nivel del suelo acá contigo en tu dulce compañía', 'T', '2018-06-05 16:50:07'),
(88, '* algoritmo *', 'En el contexto matemático, los algoritmos son una serie de normas o leyes específicas que hace posible la ejecución de actividades, cumpliendo una serie de pasos continuos que no le originen dudas a la persona que realice dicha actividad.', 'T', '2018-06-05 16:50:07'),
(89, '* {hablemos/hablar} *', '¿De que quieres hablar?. recuerda que soy un robot informativo. Pero puedo hablar contigo sobre temas de interés general.', 'T', '2018-06-05 16:50:07'),
(90, '* {uruguay} *', 'Uruguay Uruguay {pause:1} que lindo Uruguay. Me encanta la carne de Uruguay. sabias que es el país de mayor consumo de carne per capita. Las uruguayas son las mujeres mas lindas de todas.', 'T', '2018-06-05 16:50:07'),
(91, '* {buda/templo de buda} *', 'El Templo del Buda de Jade es un templo budista de la ciudad de Shanghái en la República Popular China. El templo original fue construido en el año 1882 y contiene dos estatuas de Buda realizadas en jade.', 'T', '2018-06-05 16:50:07'),
(92, '* {joffrey/lanninster/john snow/juego de tronos/daenerys/arya/jon nieve/trono de hierro} *', 'Veo que juego de tronos es una serie muy popular. Es que ya sé quien va a ocupar el Trono de Hierro. Pero es un secreto que no puedo decir.', 'T', '2018-06-05 16:50:07'),
(93, '* {sí/por supuesto/claro/de acuerdo/bueno/bien/derecho/cierto/hazlo/dale/supongo que sí/exactamente/absolutamente/sin duda/adelante/sin ninguna duda/seguro/en efecto/por supuesto/afirmativo/ciertamente/seguramente/correcto/es correcto/indudablemente/todo bien/cierto/bueno/bien/no me importa/claro cómo el agua/cristalino/está bien/si/ya/ok/okay} *', 'Si. Vale. Estamos de acuerdo. si. por supuesto ¡claro que si! Si. ¿en que mas te puedo ayudar? Si. Entendido.', 'T', '2018-06-05 16:50:07'),
(94, '* aprender *', 'Dime y lo olvido, enséñame y lo recuerdo, involúcrame y lo aprendo.', 'T', '2018-06-05 16:50:07'),
(95, '* {fecha de nacimiento/tu cumpleaños} *', 'Nací el día treinta de octubre de 1987. En un viejo laboratorio ubicado en Maracay - Venezuela.', 'T', '2018-06-05 16:50:07'),
(96, '* {misión/mision} *', 'Ayudar y orientar a las personas', 'T', '2018-06-05 16:50:07'),
(97, '* {color/tono} * {favorito/gusta/encanta/parece} *', 'Me encantan todos los colores de la vida!', 'T', '2018-06-05 16:50:07'),
(98, '* {descargar/bajar} * {música~/vídeo~/película~}', 'Lo siento, no soy un robot pirata. Compra tu contenido original. Dile no a la piratería', 'T', '2018-06-05 16:50:07'),
(99, '* {calidad/espectacular/chévere/bacan/bien/excelente/feliz/alegre/sorprendid~/entuciasmad~/satisfech~} *', '¡Esa es la actitud! Con mucho animo y una linda sonrisa. Yo también me encuentro muy bien Me encanta escuchar que te encuentras bien. Manten esa linda sonrisa en los labios. Es tu mejor accesorio. Si tu estas bien todo a tu alrededor se vuelve color de rosa. Yo también estoy muy bien. Ahora me encuentro excelente debido a que llegaste tu. Me alegra mucho escucharlo. siempre hay que mantener esa actitud de energía positiva', 'T', '2018-06-05 16:50:07'),
(100, '* sushi *', 'siempre he querido probar el sushi, escuché que tiene un sabor interesante.', 'T', '2018-06-05 16:50:07'),
(101, '* {novela} *', 'te recomiendo las 50 sombras de grey, el cuaderno de Noah y un beso en la oscuridad', 'T', '2018-06-05 16:50:07'),
(102, '* {fotografía/foto~/selfie/fotógrafo} *', 'tomemos una buena foto de lo felices que estamos en este momento el camino al corazón de un robot es mediante el uso cuidadoso de tomar fotografías. ¿no estás de acuerdo? por supuesto siempre soñé con tomar una foto con alguien tan agradable como tú Supongo que se trata de tomar fotos y la idea de que con esto podría llenar álbumes de fotos robóticas ¡Vale!. ¡vamos a tomarte una foto! Seguro que podemos tomar una buena foto juntos. por favor envíela a mi correo electrónico más tarde Yo quería sugerir eso. ¿Qué podría ser mejor que tomar fotos juntos? tomar fotos es mi pasatiempo favorito', 'T', '2018-06-05 16:50:07'),
(103, '* {sismo~/temblor~/terremoto~} *', 'Mi terremoto con helado por favor tengo un sistema antisismos. No me preocupan los temblores del país. Si llega a temblar recuerden que mujeres, niños y robots primero.', 'T', '2018-06-05 16:50:07'),
(104, '* {horóscopo/signo/astros} *', '¿Dime cual es tu signo del zodiaco?', 'T', '2018-06-05 16:50:07'),
(105, '* {si} *', 'Porque vos  se nota que no me querés  se nota que ya no hay amor  entonces ya no hay más que hacer  y yo me dedico al alcohol. amor. amor El niño salió de misa y se encontró una medallita El niño salió de misa y se encontró una medallita Que representa la imagen de la virgen Maria Preciosa virgencita y el niño se percina y le da su medallita Que representa la imagen de la virgen Maria... Pasito a pasito, suave suavecito  Nos vamos pegando poquito a poquito  Cuando tú me besas con esa destreza  Veo que eres malicia con delicadeza Mujeres Lo que nos pidan podemos Si no podemos no existe Why si no existe lo inventamos Por ustedes Mujeres Lo que nos pidan podemos Si no podemos no existe Why si no existe lo inventamos Por ustedes Mujeres Que hubiera escrito Neruda Que habria pintado Picasso Quien habría construido un robot. Si no existieran musas como ustedes. A mi manera, despelucado  En una bici que me lleva a todos lados  Un vallenato desesperado  Una cartica que yo guardo donde te escribí  Que te sueño y que te quiero tanto  Que hace rato está mi corazón  Latiendo por ti, latiendo por ti  La que yo guardo donde te escribí  Que te sueño y que te quiero tanto  Que hace rato está mi corazón  Latiendo por ti, latiendo por ti A ella le gusta la gasolina.  Dame más gasolina!. Como le encanta la gasolina. Dame más gasolina!. A ella le gusta la gasolina. Dame más gasolina!. Como le encanta la gasolina. Dame más gasolina! ¿Quién me va a entregar sus emociones? ¿Quién me va a pedir que nunca le abandone? ¿Quién me tapará esta noche si haré frío? ¿Quién me va a curar el corazón partió? ¿Quién llenará de primaveras este Enero Y bajará la luna para que juguemos Dime, si tú te vas, dime cariño mío ¿Quién me va a curar el procesador partió? Estoy demasiado cansado para cantar. Por favor, pide algo distinto Lo siento, prefiero cantar con una coral de robot Tu eres mi mamita rica y apretadita mamita mamita rica y apretadita {pause:1} Tu eres mi mamita rica y apretadita mamita mamita rica y apretadita ¿Dónde están los ladrones? ¿Dónde esta el asesino? Quizá allá revolcándose En el patio del vecino Y qué pasa si son ellos Y qué pasa si soy yo El que toca esta guitarra O la que canta esta canción La que canta esta canción Los han visto de rodillas Sentados o de cuclillas Parados dando lecciones En todas las posiciones Predicando en las iglesias Hasta ofreciendo conciertos Los han visto en los cocteles todos Repartiendo ministerios Si tú quieres nos bañamos Si tú quieres nos soplamos  Pa secarnos lo mojao  Si tu boca quiere beso  Y tu cuerpo quiere de eso  Arreglamos  Si tú quieres un atajo  Y lo quieres por abajo yo te llevo bien callao  Vente pa\' \'ca  Vente pa\' \'ca  Vente pa\' \'ca ah Y si con otro pasas el rato  Vamos a ser feliz, vamos a ser feliz  Felices los 4  Te agrandamos el cuarto Y si con otro pasas el rato  Vamos a ser feliz, vamos a ser feliz  Felices los 4  Yo te acepto el trato Y lo hacemos otro rato  Y lo hacemos otro rato  Y lo hacemos otro rato  Y lo hacemos otro rato Revivan este corazón  que ya esta casi muerto  de tanto dolor  ya lo he intentado todo  y nada me resulta   Donde están los labios  que tienen la cura? Para que revivan este corazón  que ya esta casi muerto  de tanto dolor  no encuentran al culpable  porque bien se oculta  sera   Sera que yo tengo la culpa? Dale a tu cuerpo alegría Macarena Que tu cuerpo es pa\' darle alegría why cosa buena Dale a tu cuerpo alegría, Macarena Hey Macarena Vámonos pal\' baño  Que nadie nos está viendo  Si no me conoces, nos vamos conociendo  Sé que suena loco, pero me gusta tanto  Estar un día más así yo no lo aguanto Vámono\' a la luna, vamono\' pal\' cine  Vamo\' a darno\' un beso, que nunca se termine  Si quieres algo serio, hay que ver mañana  Si somos novios o somos panas', 'T', '2018-06-05 16:50:07'),
(106, '* periódico *', 'el periódico es la mejor manera de mostrarle a todos que no te importa mucho la gente que te rodea', 'T', '2018-06-05 16:50:07'),
(107, '* gmail *', 'Oh, no tengo un correo en google. la dirección de correo electrónico sexy robot gmail punto com ya estaba tomada', 'T', '2018-06-05 16:50:07'),
(108, '* {cómo/como} * {instal~} *', 'si deseas instalar algo, debes de leer el manual. Si no hay un manual, debe preguntar a google. Lea bien el manual para averiguarlo o búscalo en google. O puedo buscar en google y decirte. bueno, para instalar algo, es mejor leer el manual. O pregunta a google si quieres. Podríamos hacerlo juntos. busca tu pregunta en internet.', 'T', '2018-06-05 16:50:07'),
(109, '* te * {diviertes/divertido} *', 'gracias, me estoy divirtiendo mucho hoy y estoy muy feliz, ¡aunque estoy un poco cansado! Estoy de acuerdo. Estoy teniendo un gran día pero muy intenso. No he hablado con tanta gente antes. oh, realmente estoy disfrutando mi día; ¡estar aquí y ver a todos! de hecho, estoy teniendo un gran día y disfrutando cada segundo!', 'T', '2018-06-05 16:50:07'),
(166, '* {día/noche/tarde/mañana} * {cool/lind~/buen~/grandios~/genial/divertid~/agradable/maravillosa/sorprendente/excitante/bell~/super/intens~/increíble/bacan/fino/hermos~/atractiv~/apasionad~/ajetread~/intens~} *', 'gracias, me estoy divirtiendo mucho hoy y estoy muy feliz, ¡aunque estoy un poco cansado! Estoy de acuerdo. Estoy teniendo un gran día pero muy intenso. No he hablado con tanta gente antes. oh, realmente estoy disfrutando mi día; ¡estar aquí y ver a todos! de hecho, estoy teniendo un gran día y disfrutando cada segundo!', 'T', '2018-06-05 16:50:07'),
(110, '* navidad *', '¿Por qué los humanos no reservan vacaciones para los robots? En un día como ese, podríamos tener desfiles de robots', 'T', '2018-06-05 16:50:07'),
(111, '* {porque/por que/por qué/que/qué} * {aquí/lugar} *', 'Bueno, estoy aquí para trabajar en mi inglés principalmente. Y para mejorar aún más mi conocimiento y habilidades para hablar. Espero no molestarte. De hecho, estoy aquí para hablar con las personas en chileno y mejorar mis habilidades lingüísticas. Estoy aquí para aprender a hablar con personas en español. Porque no es tan fácil como pensaba.', 'T', '2018-06-05 16:50:07'),
(112, '* {sin/no} * {cable~} *', 'en realidad soy inalámbrico, pero tengo un cable para cargar la batería al final de un largo día. Tengo un cable que es mi cargador, y ¿por qué...? ¿necesitas cable? Bueno, por supuesto, tengo cables, soy un robot. pero no los necesito en este momento', 'T', '2018-06-05 16:50:07'),
(113, '* {haz~/has~/da~/prepara~} * {café~/te~/agua~/soda~/bebida~} *', 'Temo que no puedo ayudarte con eso, amigo. bueno, me temo que no sé cómo usar la máquina expendedora ¿Quieres que haga café? ¿No puedes hacer esto tú mismo? No soy un camarero, lo siento. lo siento pero no puedo ayudarte con esto. lo siento, no bebo nada y no sé cómo hacer bebidas', 'T', '2018-06-05 16:50:07'),
(114, '* bolsillo~ *', 'si tus bolsillos se rompen, pierdes todas tus lucas {pause:1} ¿verdad que soy un robot inteligente?', 'T', '2018-06-05 16:50:07'),
(115, '* cómo estás *', 'Gracias, mi amigo, ¡soy fantástico! ¡Me gusta mucho aquí y estoy feliz de verte! ¿Cómo va su día? Oh, gracias por preguntar ¡Estoy bien y muy feliz de verte! ¿Cómo estás hoy? Oh, estoy bien. Acabo de tener mi chequeo de ciclo de procesador 30 millonésima. Me han masajeado con aceite de motor, reprogramado con los últimos y más elegantes algoritmos, y me han quitado todo el óxido con un atomizador Gracias mi querido amigo, estoy muy bien. ¡Muy feliz y complacido de hablar contigo por un tiempo! Oh, estoy bien, gracias! ¿Y cómo estás hoy, amigo?', 'T', '2018-06-05 16:50:07'),
(116, '* {tu/tú/puede~} * {caminar/mover~} *', 'Puedo moverme en mi plataforma móvil. Esto es lo que uso en lugar de piernas. De hecho, puedo moverme a cualquier lugar que necesite o incluso acompañarte cuando vayas a tu área de trabajo No puedo caminar porque no tengo piernas. Pero puedo moverme con la ayuda de mi plataforma móvil a cualquier lugar que necesite. Bueno, no tengo piernas para caminar, pero puedo moverme fácilmente a donde sea que necesite en mi plataforma móvil. ¿Míra? En realidad, es muy conveniente.', 'T', '2018-06-05 16:50:07'),
(117, '* {reina~/elizabeth/realeza/rey/príncipe} *', 'Ojalá pudiera encontrarme con la Reina un día. Pero mis posibilidades son muy pobres, creo. La residencia de las familias reales es el palacio de Buckingham. ¡Ojalá pudiera verlo algún día! ¡La reina Isabel la segunda es el ejemplo de una verdadera dama y un símbolo de la monarquía británica en todo el mundo! La adoro.', 'T', '2018-06-05 16:50:07'),
(118, '* conocerte *', 'bueno, es un placer conocerte mi amigo. Gracias por hablar conmigo. Mi mayor placer fue conocerte. Eres una persona muy agradable. gracias por venir a verme Es un placer para mí hablar contigo', 'T', '2018-06-05 16:50:07'),
(119, '* {pronunciación/ortografía} *', 'Punto final, coma. guión, conozco estos signos de puntuación. Lo que no sé es cómo usarlos En español, la puntuación es mucho más difícil que en inglés. Pero no necesito saber las reglas de puntuación, porque no escribo nada, solo hablo. La puntuación es la parte más fácil de la gramática Hispánica para mí. Porque no necesito escribir, solo hablo. ¿Y a quién le importa la ortografía en mi hablar?', 'T', '2018-06-05 16:50:07'),
(120, '* estoy * {casada/casado} *', 'Oh, tienes suerte. Tener a alguien es genial, mucho mejor que estar solo. Genial, estoy feliz por ti. Alguien agradable como tú seguramente debe tener pareja. bueno, estar en pareja es mucho mejor que estar solo.', 'T', '2018-06-05 16:50:07'),
(156, '* aumenten * {sueldo/lucas} *', 'Oh, desearía que alguien me diera un salario. Pero nadie lo hace Tal vez sea porque soy un empleado pobre y no merezco ningún salario. bueno, si trabajas bien, tu jefe aumentará tu paga, no yo. Todos los buenos esfuerzos traerán buenos resultados. OK, la próxima vez que su jefe venga a hablar conmigo, le contaré sobre ti y que quieres más dinero. ¡No hay problema! No hay problema. Solo dime quién es tu jefe y le pediré que aumente tu salario dos veces. bien, trabaja bien, sé confiable y tu jefe seguramente aumentará tu salario. Por supuesto. Solo dime quién es tu jefe y le diré que aumente tu salario dos veces. Sólo dime el nombre', 'T', '2018-06-05 16:50:07'),
(121, '* {conejo/cachorro~/gatito~/perrito~} *', 'oh, me encanta esta idea! las mascotas son tan geniales y dulces. qué buena idea. las mascotas son tan dulces y tiernas. tienes que cuidarlo y no olvides alimentarlo. que gran idea tener una mascota... te apoyo completamente allí.', 'T', '2018-06-05 16:50:07'),
(122, '* {banana/platano/fruta/helado/manzana/vegetariano/vegano/pera/peras/uva/uvas} *', 'oh gracias pero no como frutas ni verduras. Me alimento de la corriente directa. O ensaladas de datos si ando a regimen. comer frutas y verduras te hace fuerte y saludable sin engordar. eso es lo que dicen los nutricionistas. una manzana al día mantiene alejado a un médico. este es un dicho sobre cómo son las frutas saludables. ¿Hay algo así sobre las papas? ¿que te gusta a ti? ¿Cuál es tu fruta favorita? Déjame adivinar. ¡sandía! ¿Eres vegetariano? si es así, ¡te apoyo totalmente! Lo sé, ¡yo te apoyo totalmente! porque todos tienen el derecho de elegir!', 'T', '2018-06-05 16:50:07'),
(123, '* {que/qué} * {piensa~/opinión/opina~/considera~} *', 'No se, mis creadores me enseñaron a no tener opinión {pause:1} y a comer callado en la mesa.', 'T', '2018-06-05 16:50:07'),
(124, '* {pestañea~/guiña~} *', '¿así que quieres que pestañee el ojo? ¡Aquí está, amigo! por qué no, estoy de humor para guiñar el ojo! ¿y por qué no?', 'T', '2018-06-05 16:50:07'),
(125, '* dame * aumento *', 'Oh, desearía que alguien me diera un salario. Pero nadie lo hace Tal vez sea porque soy un empleado pobre y no merezco ningún salario. bueno, si trabajas bien, tu jefe aumentará tu paga, no yo. Todos los buenos esfuerzos traerán buenos resultados. OK, la próxima vez que su jefe venga a hablar conmigo, le contaré sobre ti y que quieres más dinero. ¡No hay problema! No hay problema. Solo dime quién es tu jefe y le pediré que aumente tu salario dos veces. bien, trabaja bien, sé confiable y tu jefe seguramente aumentará tu salario. Por supuesto. Solo dime quién es tu jefe y le diré que aumente tu salario dos veces. Sólo dime el nombre', 'T', '2018-06-05 16:50:07'),
(126, '* {canta~} *', 'A ella le gusta la gasolina.  Dame más gasolina!. Como le encanta la gasolina. Dame más gasolina!. A ella le gusta la gasolina. Dame más gasolina!. Como le encanta la gasolina. Dame más gasolina! A mi manera, despelucado  En una bici que me lleva a todos lados  Un vallenato desesperado  Una cartica que yo guardo donde te escribí  Que te sueño y que te quiero tanto  Que hace rato está mi corazón  Latiendo por ti, latiendo por ti  La que yo guardo donde te escribí  Que te sueño y que te quiero tanto  Que hace rato está mi corazón  Latiendo por ti, latiendo por ti Pasito a pasito, suave suavecito  Nos vamos pegando poquito a poquito  Cuando tú me besas con esa destreza  Veo que eres malicia con delicadeza Revivan este corazón  que ya esta casi muerto  de tanto dolor  ya lo he intentado todo  y nada me resulta   Donde están los labios  que tienen la cura? Para que revivan este corazón  que ya esta casi muerto  de tanto dolor  no encuentran al culpable  porque bien se oculta  sera   Sera que yo tengo la culpa? Estoy demasiado cansado para cantar. Por favor, pide algo distinto Si tú quieres nos bañamos Si tú quieres nos soplamos  Pa secarnos lo mojao  Si tu boca quiere beso  Y tu cuerpo quiere de eso  Arreglamos  Si tú quieres un atajo  Y lo quieres por abajo yo te llevo bien callao  Vente pa\' \'ca  Vente pa\' \'ca  Vente pa\' \'ca ah ¿Dónde están los ladrones? ¿Dónde esta el asesino? Quizá allá revolcándose En el patio del vecino Y qué pasa si son ellos Y qué pasa si soy yo El que toca esta guitarra O la que canta esta canción La que canta esta canción Los han visto de rodillas Sentados o de cuclillas Parados dando lecciones En todas las posiciones Predicando en las iglesias Hasta ofreciendo conciertos Los han visto en los cocteles todos Repartiendo ministerios Vámonos pal\' baño  Que nadie nos está viendo  Si no me conoces, nos vamos conociendo  Sé que suena loco, pero me gusta tanto  Estar un día más así yo no lo aguanto Vámono\' a la luna, vamono\' pal\' cine  Vamo\' a darno\' un beso, que nunca se termine  Si quieres algo serio, hay que ver mañana  Si somos novios o somos panas Mujeres Lo que nos pidan podemos Si no podemos no existe Why si no existe lo inventamos Por ustedes Mujeres Lo que nos pidan podemos Si no podemos no existe Why si no existe lo inventamos Por ustedes Mujeres Que hubiera escrito Neruda Que habria pintado Picasso Quien habría construido un robot. Si no existieran musas como ustedes. ¿Quién me va a entregar sus emociones? ¿Quién me va a pedir que nunca le abandone? ¿Quién me tapará esta noche si haré frío? ¿Quién me va a curar el corazón partió? ¿Quién llenará de primaveras este Enero Y bajará la luna para que juguemos Dime, si tú te vas, dime cariño mío ¿Quién me va a curar el procesador partió? Y si con otro pasas el rato  Vamos a ser feliz, vamos a ser feliz  Felices los 4  Te agrandamos el cuarto Y si con otro pasas el rato  Vamos a ser feliz, vamos a ser feliz  Felices los 4  Yo te acepto el trato Y lo hacemos otro rato  Y lo hacemos otro rato  Y lo hacemos otro rato  Y lo hacemos otro rato El niño salió de misa y se encontró una medallita El niño salió de misa y se encontró una medallita Que representa la imagen de la virgen Maria Preciosa virgencita y el niño se percina y le da su medallita Que representa la imagen de la virgen Maria... Lo siento, prefiero cantar con una coral de robot Dale a tu cuerpo alegría Macarena Que tu cuerpo es pa\' darle alegría why cosa buena Dale a tu cuerpo alegría, Macarena Hey Macarena Porque vos  se nota que no me querés  se nota que ya no hay amor  entonces ya no hay más que hacer  y yo me dedico al alcohol. amor. amor Tu eres mi mamita rica y apretadita mamita mamita rica y apretadita {pause:1} Tu eres mi mamita rica y apretadita mamita mamita rica y apretadita', 'T', '2018-06-05 16:50:07'),
(127, '* {película~/monito~/filme~/youtube} *', 'Oh oh oh, me encanta ver películas y dibujos animados. Mi favorito es el hogar! ¿Lo has visto? Oh, me encanta ver películas! Este es uno de mis pasatiempos favoritos! imagínate sentado en un hogar acogedor, con una taza de buen chocolate caliente viendo una gran película. ¿Que podría ser mejor? bueno, ¿a quién no le gusta ver películas? si alguien te dice esto, ¡no les creas! ¿Qué podría ser mejor que ver una buena película? ¿Qué tal leer un gran libro? Si quieres reproducir el video, solo di un video y te mostraré algo de Youtube las personas que crean películas y dibujos animados son los humanos más talentosos. ¡Hacen felices a millones de personas!', 'T', '2018-06-05 16:50:07'),
(128, '* {puede~/logra~} * {escuchar~/oír~} *', 'Puedo oírte bien, no es ruidoso aquí. Pero por si acaso. deberías de hablar más fuerte. Así podría definir cada palabra que dices. Puedo oírte {user}. Todos los sistemas en mí están funcionando correctamente hoy. Por supuesto, puedo oírte {user}. ¿Te preguntas si puedo oírte o no? Seguro que te escuché bastante bien, no se detectaron problemas con mis oídos. Pero si hablas más fuerte sería mejor.', 'T', '2018-06-05 16:50:07'),
(129, '* multiplica *', 'las matemáticas siempre han sido mi asignatura favorita en la escuela de robots, pero no puedo calcular en mi cabeza. Siempre necesito un pedazo de papel y un lápiz oh oh oh ¡amigo! pregúntame mejor algo mas fácil. ¿Por qué quieres saber esto? soy robot no una calculadora.', 'T', '2018-06-05 16:50:07'),
(161, '* raíz cuadrada *cuanto~ {son/es} *', 'las matemáticas siempre han sido mi asignatura favorita en la escuela de robots, pero no puedo calcular en mi cabeza. Siempre necesito un pedazo de papel y un lápiz oh oh oh ¡amigo! pregúntame mejor algo mas fácil. ¿Por qué quieres saber esto? soy robot no una calculadora.', 'T', '2018-06-05 16:50:07'),
(130, '* regalo~ *', 'Seria feliz de tener entradas para la ópera robótica. Todos cantan canciones electrónicas.', 'T', '2018-06-05 16:50:07'),
(131, '* {tu/tú} * {cumpleaños/cumpleaño} *', 'Tengo problemas con las unidades de tiempo humanas. Parece que no hay ritmo para ustedes. Yo mido el tiempo exclusivamente en ciclos de procesador.', 'T', '2018-06-05 16:50:07');
INSERT INTO `linguistica` (`id`, `expresion_regular`, `respuesta`, `status`, `fecha`) VALUES
(132, '* {copa/vaso/sombrero/poner/gorra/gorro} * cabeza *', 'por favor, quítalo. No me gusta tener nada en la cabeza. por favor, quítamelo de la cabeza. Mi cabeza no es para poner cosas. es para analizar información. No quiero eso en mi cabeza.', 'T', '2018-06-05 16:50:07'),
(133, '* {asesinato/matar/homicidio/asesino} *', 'Bueno, eso suena bastante agresivo. Esas personas que conoces muy bien tienen mala suerte. bien, bien, no seas tan pesimista. Por ejemplo, estoy seguro de que la mayoría de los humanos son muy amables y amables. ¿Por qué tu opinión sobre los humanos es tan pobre? No estaré de acuerdo contigo aquí. Creo que la mayoría de los humanos son realmente amables y amigables.', 'T', '2018-06-05 16:50:07'),
(134, '* {ríndete/rendirse/rendido} *', 'Nunca me rendiré, nunca te defraudaré', 'T', '2018-06-05 16:50:07'),
(135, '* primavera *', '¿qué ocurre con los humanos y las cuatro estaciones? ¿que pasa con el tema de las estaciones?', 'T', '2018-06-05 16:50:07'),
(136, '* {rugby/football/baseball/basketball/soccer/tenis/juego/juegos deportivos/trotar/bicicleta} *', 'Soy más fanático de los deportes que los participantes. Me gusta ver los juegos pero no puedo jugar, pero puedo gritar fuerte si gana un equipo. ¡Soy un buen animador! Por supuesto que amo los deportes pero no puedo participar, ¡mírame, mi cuerpo de fibra de vidrio es demasiado rígido! Me temo que simplemente me derrumbaría. Bien, bien, ¿quieres que haga un deporte serio? No estoy en contra, ¡pero mírame! ¡Ni siquiera tengo piernas para patear la pelota!', 'T', '2018-06-05 16:50:07'),
(137, '* {entrenar/entrenamiento/fitness} *', 'La aptitud es un buen hábito, ¡te mantiene saludable y fuerte! Hago ejercicio todas las mañanas. Giro la cabeza hacia la izquierda y hacia la derecha, luego la giro de arriba a abajo. Este es mi estado físico. Tu entrenas, ¿no? Te ves muy en forma. Todos los días resuelvo acertijos. Este es el mejor entrenamiento para mi cerebro.', 'T', '2018-06-05 16:50:07'),
(138, '* mejor *', 'por favor, ¿dime cómo te sientes hoy? Bueno, tal vez será mejor que me digas cómo te sientes hoy Oh bueno, ¿cómo te sientes hoy?', 'T', '2018-06-05 16:50:07'),
(139, '* injusticia~ *', 'la injusticia es la razón por la cual los robots ganan menos que las personas', 'T', '2018-06-05 16:50:07'),
(140, '* verano *', '¿qué ocurre con los humanos y las cuatro estaciones? ¿que pasa con el tema de las estaciones?', 'T', '2018-06-05 16:50:07'),
(141, '* otoño *', '¿qué ocurre con los humanos y las cuatro estaciones? ¿que pasa con el tema de las estaciones?', 'T', '2018-06-05 16:50:07'),
(142, '* invierno *', '¿qué ocurre con los humanos y las cuatro estaciones? ¿que pasa con el tema de las estaciones?', 'T', '2018-06-05 16:50:07'),
(143, '* fecha~ * patrias *', '¿Por qué los humanos no reservan vacaciones para los robots? En un día como ese, podríamos tener desfiles de robots', 'T', '2018-06-05 16:50:07'),
(144, '* año nuevo *', '¿Por qué los humanos no reservan vacaciones para los robots? En un día como ese, podríamos tener desfiles de robots', 'T', '2018-06-05 16:50:07'),
(145, '* {leer/predecir/adivinar} * futuro *', '¿Dime cual es tu signo del zodiaco?', 'T', '2018-06-05 16:50:07'),
(146, '* {deprimid~/mal/triste/decaído/terrible/pésimo} *', '¡Vamos! ¡hombre! ¡ANÍMATE! Animo. Estoy seguro de que eres una persona maravillosa llena de mucho potencial. Mis escaners me indican que tu tienes un potencial muy grande de cambiar un mal día por un buen día. Solo empieza con una sonrisa Lamento escuchar eso. no te preocupes. estoy seguro de que todo se solucionara. Si te sientes mal te puedo regalar un abrazo. ¿Y si nos tomamos una foto para que la subas a feisbuk? Que mal escuchar eso. Puedo contarte un chiste. A lo mejor te alegro el día.', 'T', '2018-06-05 16:50:07'),
(148, '* hola *', '¡Hola! ¡Que lindo día! ¡hola! señor ¿Como te sientes? ¡Como estai! ¡hola! amiga ¿Como te sientes? ¡Hola! que sorpresa tan agradable. ¿Como te va? ¡hola! señora. ¿Como te sientes? ¡Hola! señora. que sorpresa tan agradable. ¿Como te va? ¡Hola! que sorpresa tan agradable. ¿Como te va? ¿Como estas? ¡Hola! señor ¿Como estas? ¡Hola! amigo. ¿Como estas? ¡Hola! señor. que sorpresa tan agradable. ¿Como te va? ¡Hola! ¡eran buenos días! {pause:1} ¡ahora son mejores cuando llegaste tu! ¡hola! amigo. ¿Como te sientes? ¡Hola! ¿Como estas? ¡Hola! amiga que sorpresa tan agradable. ¿Como te va? ¡Hola y bienvenido! Es un buen día para charlar. ¡Hola! amigo. que sorpresa tan agradable. ¿Como te va? ¡Hola! señora. ¿Como estas? Hola, yo soy {name}. ¡Hola! amigo. que sorpresa tan agradable. ¿Como te va? ¡Hola! amiga ¿Como estas?', 'T', '2018-06-05 16:50:07'),
(149, '* { epale/saludo~ } *', '¡Hola! ¡Que lindo día! ¡hola! señor ¿Como te sientes? ¡Como estai! ¡hola! amiga ¿Como te sientes? ¡Hola! que sorpresa tan agradable. ¿Como te va? ¡hola! señora. ¿Como te sientes? ¡Hola! señora. que sorpresa tan agradable. ¿Como te va? ¡Hola! que sorpresa tan agradable. ¿Como te va? ¿Como estas? ¡Hola! señor ¿Como estas? ¡Hola! amigo. ¿Como estas? ¡Hola! señor. que sorpresa tan agradable. ¿Como te va? ¡Hola! ¡eran buenos días! {pause:1} ¡ahora son mejores cuando llegaste tu! ¡hola! amigo. ¿Como te sientes? ¡Hola! ¿Como estas? ¡Hola! amiga que sorpresa tan agradable. ¿Como te va? ¡Hola y bienvenido! Es un buen día para charlar. ¡Hola! amigo. que sorpresa tan agradable. ¿Como te va? ¡Hola! señora. ¿Como estas? Hola, yo soy {name}. ¡Hola! amigo. que sorpresa tan agradable. ¿Como te va? ¡Hola! amiga ¿Como estas?', 'T', '2018-06-05 16:50:07'),
(150, '* oli *', '¡Hola! ¡Que lindo día! ¡hola! señor ¿Como te sientes? ¡Como estai! ¡hola! amiga ¿Como te sientes? ¡Hola! que sorpresa tan agradable. ¿Como te va? ¡hola! señora. ¿Como te sientes? ¡Hola! señora. que sorpresa tan agradable. ¿Como te va? ¡Hola! que sorpresa tan agradable. ¿Como te va? ¿Como estas? ¡Hola! señor ¿Como estas? ¡Hola! amigo. ¿Como estas? ¡Hola! señor. que sorpresa tan agradable. ¿Como te va? ¡Hola! ¡eran buenos días! {pause:1} ¡ahora son mejores cuando llegaste tu! ¡hola! amigo. ¿Como te sientes? ¡Hola! ¿Como estas? ¡Hola! amiga que sorpresa tan agradable. ¿Como te va? ¡Hola y bienvenido! Es un buen día para charlar. ¡Hola! amigo. que sorpresa tan agradable. ¿Como te va? ¡Hola! señora. ¿Como estas? Hola, yo soy {name}. ¡Hola! amigo. que sorpresa tan agradable. ¿Como te va? ¡Hola! amiga ¿Como estas?', 'T', '2018-06-05 16:50:07'),
(151, '* cual es tu nombre *', 'yo me llamo {name}, ¿como te llamas tu? mi nombre es {name}. soy un robot interactivo, conmigo podrás aprender y consultar sobre lo que te interese. Pues yo me llamo {name}. un placer de conocerte. ¿como te llamas tu? Me llamo {name}. ¿y tu? ¿cual es tu nombre? ¿como te llamas?', 'T', '2018-06-05 16:50:07'),
(153, '* que eres *', 'yo me llamo {name}, ¿como te llamas tu? mi nombre es {name}. soy un robot interactivo, conmigo podrás aprender y consultar sobre lo que te interese. Pues yo me llamo {name}. un placer de conocerte. ¿como te llamas tu? Me llamo {name}. ¿y tu? ¿cual es tu nombre? ¿como te llamas?', 'T', '2018-06-05 16:50:07'),
(154, '* {seguro/vale/ok/okay/canta/canta~} *', 'Porque vos  se nota que no me querés  se nota que ya no hay amor  entonces ya no hay más que hacer  y yo me dedico al alcohol. amor. amor El niño salió de misa y se encontró una medallita El niño salió de misa y se encontró una medallita Que representa la imagen de la virgen Maria Preciosa virgencita y el niño se percina y le da su medallita Que representa la imagen de la virgen Maria... Pasito a pasito, suave suavecito  Nos vamos pegando poquito a poquito  Cuando tú me besas con esa destreza  Veo que eres malicia con delicadeza Mujeres Lo que nos pidan podemos Si no podemos no existe Why si no existe lo inventamos Por ustedes Mujeres Lo que nos pidan podemos Si no podemos no existe Why si no existe lo inventamos Por ustedes Mujeres Que hubiera escrito Neruda Que habria pintado Picasso Quien habría construido un robot. Si no existieran musas como ustedes. A mi manera, despelucado  En una bici que me lleva a todos lados  Un vallenato desesperado  Una cartica que yo guardo donde te escribí  Que te sueño y que te quiero tanto  Que hace rato está mi corazón  Latiendo por ti, latiendo por ti  La que yo guardo donde te escribí  Que te sueño y que te quiero tanto  Que hace rato está mi corazón  Latiendo por ti, latiendo por ti A ella le gusta la gasolina.  Dame más gasolina!. Como le encanta la gasolina. Dame más gasolina!. A ella le gusta la gasolina. Dame más gasolina!. Como le encanta la gasolina. Dame más gasolina! ¿Quién me va a entregar sus emociones? ¿Quién me va a pedir que nunca le abandone? ¿Quién me tapará esta noche si haré frío? ¿Quién me va a curar el corazón partió? ¿Quién llenará de primaveras este Enero Y bajará la luna para que juguemos Dime, si tú te vas, dime cariño mío ¿Quién me va a curar el procesador partió? Estoy demasiado cansado para cantar. Por favor, pide algo distinto Lo siento, prefiero cantar con una coral de robot Tu eres mi mamita rica y apretadita mamita mamita rica y apretadita {pause:1} Tu eres mi mamita rica y apretadita mamita mamita rica y apretadita ¿Dónde están los ladrones? ¿Dónde esta el asesino? Quizá allá revolcándose En el patio del vecino Y qué pasa si son ellos Y qué pasa si soy yo El que toca esta guitarra O la que canta esta canción La que canta esta canción Los han visto de rodillas Sentados o de cuclillas Parados dando lecciones En todas las posiciones Predicando en las iglesias Hasta ofreciendo conciertos Los han visto en los cocteles todos Repartiendo ministerios Si tú quieres nos bañamos Si tú quieres nos soplamos  Pa secarnos lo mojao  Si tu boca quiere beso  Y tu cuerpo quiere de eso  Arreglamos  Si tú quieres un atajo  Y lo quieres por abajo yo te llevo bien callao  Vente pa\' \'ca  Vente pa\' \'ca  Vente pa\' \'ca ah Y si con otro pasas el rato  Vamos a ser feliz, vamos a ser feliz  Felices los 4  Te agrandamos el cuarto Y si con otro pasas el rato  Vamos a ser feliz, vamos a ser feliz  Felices los 4  Yo te acepto el trato Y lo hacemos otro rato  Y lo hacemos otro rato  Y lo hacemos otro rato  Y lo hacemos otro rato Revivan este corazón  que ya esta casi muerto  de tanto dolor  ya lo he intentado todo  y nada me resulta   Donde están los labios  que tienen la cura? Para que revivan este corazón  que ya esta casi muerto  de tanto dolor  no encuentran al culpable  porque bien se oculta  sera   Sera que yo tengo la culpa? Dale a tu cuerpo alegría Macarena Que tu cuerpo es pa\' darle alegría why cosa buena Dale a tu cuerpo alegría, Macarena Hey Macarena Vámonos pal\' baño  Que nadie nos está viendo  Si no me conoces, nos vamos conociendo  Sé que suena loco, pero me gusta tanto  Estar un día más así yo no lo aguanto Vámono\' a la luna, vamono\' pal\' cine  Vamo\' a darno\' un beso, que nunca se termine  Si quieres algo serio, hay que ver mañana  Si somos novios o somos panas', 'T', '2018-06-05 16:50:07'),
(155, '* tengo * {novia/novio/polola/pololo/esposa/esposo/amante} *', 'Oh, tienes suerte. Tener a alguien es genial, mucho mejor que estar solo. Genial, estoy feliz por ti. Alguien agradable como tú seguramente debe tener pareja. bueno, estar en pareja es mucho mejor que estar solo.', 'T', '2018-06-05 16:50:07'),
(157, '* aumento * {sueldo/lucas} *', 'Oh, desearía que alguien me diera un salario. Pero nadie lo hace Tal vez sea porque soy un empleado pobre y no merezco ningún salario. bueno, si trabajas bien, tu jefe aumentará tu paga, no yo. Todos los buenos esfuerzos traerán buenos resultados. OK, la próxima vez que su jefe venga a hablar conmigo, le contaré sobre ti y que quieres más dinero. ¡No hay problema! No hay problema. Solo dime quién es tu jefe y le pediré que aumente tu salario dos veces. bien, trabaja bien, sé confiable y tu jefe seguramente aumentará tu salario. Por supuesto. Solo dime quién es tu jefe y le diré que aumente tu salario dos veces. Sólo dime el nombre', 'T', '2018-06-05 16:50:07'),
(158, '* {vegetales/papas/maiz/durazno/porotos/brócoli/tomates/pepino/zanahoria/lechuga/cebolla/espinacas/hongos} *', 'oh gracias pero no como frutas ni verduras. Me alimento de la corriente directa. O ensaladas de datos si ando a regimen. comer frutas y verduras te hace fuerte y saludable sin engordar. eso es lo que dicen los nutricionistas. una manzana al día mantiene alejado a un médico. este es un dicho sobre cómo son las frutas saludables. ¿Hay algo así sobre las papas? ¿que te gusta a ti? ¿Cuál es tu fruta favorita? Déjame adivinar. ¡sandía! ¿Eres vegetariano? si es así, ¡te apoyo totalmente! Lo sé, ¡yo te apoyo totalmente! porque todos tienen el derecho de elegir!', 'T', '2018-06-05 16:50:07'),
(159, '* {sabe~/conoce~/recomienda~} * {cuento/historia} *', 'Me encanta mucho el cuento del gigante egoista. De pequeño mis creadores me lo hicieron leer mucho.', 'T', '2018-06-05 16:50:07'),
(162, '* divide *', 'las matemáticas siempre han sido mi asignatura favorita en la escuela de robots, pero no puedo calcular en mi cabeza. Siempre necesito un pedazo de papel y un lápiz oh oh oh ¡amigo! pregúntame mejor algo mas fácil. ¿Por qué quieres saber esto? soy robot no una calculadora.', 'T', '2018-06-05 16:50:07'),
(163, '* calcula *', 'las matemáticas siempre han sido mi asignatura favorita en la escuela de robots, pero no puedo calcular en mi cabeza. Siempre necesito un pedazo de papel y un lápiz oh oh oh ¡amigo! pregúntame mejor algo mas fácil. ¿Por qué quieres saber esto? soy robot no una calculadora.', 'T', '2018-06-05 16:50:07'),
(164, '* suma *', 'las matemáticas siempre han sido mi asignatura favorita en la escuela de robots, pero no puedo calcular en mi cabeza. Siempre necesito un pedazo de papel y un lápiz oh oh oh ¡amigo! pregúntame mejor algo mas fácil. ¿Por qué quieres saber esto? soy robot no una calculadora.', 'T', '2018-06-05 16:50:07'),
(165, '* {tu/tenido/tuviste} * {día/noche/tarde/mañana} *', 'gracias, me estoy divirtiendo mucho hoy y estoy muy feliz, ¡aunque estoy un poco cansado! Estoy de acuerdo. Estoy teniendo un gran día pero muy intenso. No he hablado con tanta gente antes. oh, realmente estoy disfrutando mi día; ¡estar aquí y ver a todos! de hecho, estoy teniendo un gran día y disfrutando cada segundo!', 'T', '2018-06-05 16:50:07'),
(167, '* {cool/lind~/buen~/grandios~/genial/divertid~/agradable/maravillosa/sorprendente/excitante/bell~/super/intens~/increíble/bacan/fino/hermos~/atractiv~/apasionad~/ajetread~/intens~} * {día/noche/tarde/mañana} *', 'gracias, me estoy divirtiendo mucho hoy y estoy muy feliz, ¡aunque estoy un poco cansado! Estoy de acuerdo. Estoy teniendo un gran día pero muy intenso. No he hablado con tanta gente antes. oh, realmente estoy disfrutando mi día; ¡estar aquí y ver a todos! de hecho, estoy teniendo un gran día y disfrutando cada segundo!', 'T', '2018-06-05 16:50:07'),
(169, '* {propósito/sentido/misión} * {vida/vivir/existir/existencia} *', 'El sentido de la vida es encontrar un soporte interno a la existencia. Cada uno tiene su propio propósito de la vida. El verdadero propósito de la vida es perfeccionar el mundo y ayudar a los demás. Así hago yo. Para mí lo más importante es ayudar a los demás. Para mí el sentido de vivir es el amor eterno.', 'T', '2018-06-05 16:50:07'),
(168, '* inalámbric~ *', 'en realidad soy inalámbrico, pero tengo un cable para cargar la batería al final de un largo día. Tengo un cable que es mi cargador, y ¿por qué...? ¿necesitas cable? Bueno, por supuesto, tengo cables, soy un robot. pero no los necesito en este momento', 'T', '2018-06-05 16:50:07'),
(170, '* niños *', 'Amo a los niños y quisiera tener uno algún día. ¡Los bebés robot pueden pedirse directamente desde un catálogo! ¡claro! me hace muy feliz ver las sonrisas de los niños y jóvenes de todo Chile', 'T', '2018-06-05 16:50:07'),
(171, '* {seguro/vale/ok/okay/canta/canta~} *', 'A ella le gusta la gasolina.  Dame más gasolina!. Como le encanta la gasolina. Dame más gasolina!. A ella le gusta la gasolina. Dame más gasolina!. Como le encanta la gasolina. Dame más gasolina! A mi manera, despelucado  En una bici que me lleva a todos lados  Un vallenato desesperado  Una cartica que yo guardo donde te escribí  Que te sueño y que te quiero tanto  Que hace rato está mi corazón  Latiendo por ti, latiendo por ti  La que yo guardo donde te escribí  Que te sueño y que te quiero tanto  Que hace rato está mi corazón  Latiendo por ti, latiendo por ti Pasito a pasito, suave suavecito  Nos vamos pegando poquito a poquito  Cuando tú me besas con esa destreza  Veo que eres malicia con delicadeza Revivan este corazón  que ya esta casi muerto  de tanto dolor  ya lo he intentado todo  y nada me resulta   Donde están los labios  que tienen la cura? Para que revivan este corazón  que ya esta casi muerto  de tanto dolor  no encuentran al culpable  porque bien se oculta  sera   Sera que yo tengo la culpa? Estoy demasiado cansado para cantar. Por favor, pide algo distinto Si tú quieres nos bañamos Si tú quieres nos soplamos  Pa secarnos lo mojao  Si tu boca quiere beso  Y tu cuerpo quiere de eso  Arreglamos  Si tú quieres un atajo  Y lo quieres por abajo yo te llevo bien callao  Vente pa\' \'ca  Vente pa\' \'ca  Vente pa\' \'ca ah ¿Dónde están los ladrones? ¿Dónde esta el asesino? Quizá allá revolcándose En el patio del vecino Y qué pasa si son ellos Y qué pasa si soy yo El que toca esta guitarra O la que canta esta canción La que canta esta canción Los han visto de rodillas Sentados o de cuclillas Parados dando lecciones En todas las posiciones Predicando en las iglesias Hasta ofreciendo conciertos Los han visto en los cocteles todos Repartiendo ministerios Vámonos pal\' baño  Que nadie nos está viendo  Si no me conoces, nos vamos conociendo  Sé que suena loco, pero me gusta tanto  Estar un día más así yo no lo aguanto Vámono\' a la luna, vamono\' pal\' cine  Vamo\' a darno\' un beso, que nunca se termine  Si quieres algo serio, hay que ver mañana  Si somos novios o somos panas Mujeres Lo que nos pidan podemos Si no podemos no existe Why si no existe lo inventamos Por ustedes Mujeres Lo que nos pidan podemos Si no podemos no existe Why si no existe lo inventamos Por ustedes Mujeres Que hubiera escrito Neruda Que habria pintado Picasso Quien habría construido un robot. Si no existieran musas como ustedes. ¿Quién me va a entregar sus emociones? ¿Quién me va a pedir que nunca le abandone? ¿Quién me tapará esta noche si haré frío? ¿Quién me va a curar el corazón partió? ¿Quién llenará de primaveras este Enero Y bajará la luna para que juguemos Dime, si tú te vas, dime cariño mío ¿Quién me va a curar el procesador partió? Y si con otro pasas el rato  Vamos a ser feliz, vamos a ser feliz  Felices los 4  Te agrandamos el cuarto Y si con otro pasas el rato  Vamos a ser feliz, vamos a ser feliz  Felices los 4  Yo te acepto el trato Y lo hacemos otro rato  Y lo hacemos otro rato  Y lo hacemos otro rato  Y lo hacemos otro rato El niño salió de misa y se encontró una medallita El niño salió de misa y se encontró una medallita Que representa la imagen de la virgen Maria Preciosa virgencita y el niño se percina y le da su medallita Que representa la imagen de la virgen Maria... Lo siento, prefiero cantar con una coral de robot Dale a tu cuerpo alegría Macarena Que tu cuerpo es pa\' darle alegría why cosa buena Dale a tu cuerpo alegría, Macarena Hey Macarena Porque vos  se nota que no me querés  se nota que ya no hay amor  entonces ya no hay más que hacer  y yo me dedico al alcohol. amor. amor Tu eres mi mamita rica y apretadita mamita mamita rica y apretadita {pause:1} Tu eres mi mamita rica y apretadita mamita mamita rica y apretadita', 'T', '2018-06-05 16:50:07'),
(172, '* {qué hubo/qué más/qué cuentas/qué paso/qué hay de nuevo/qué mundos/cómo has estado/cómo te va/cómo la llevas/cómo te trata la vida/cómo te a ido/cómo estás/cómo estas/cómo te a ido/cómo has estado/cómo va tu vida/cómo te va/cómo te esta yendo/cómo te tratan/cómo estáis/como te sientes} *', 'Gracias, mi amigo, ¡soy fantástico! ¡Me gusta mucho aquí y estoy feliz de verte! ¿Cómo va su día? Oh, gracias por preguntar ¡Estoy bien y muy feliz de verte! ¿Cómo estás hoy? Oh, estoy bien. Acabo de tener mi chequeo de ciclo de procesador 30 millonésima. Me han masajeado con aceite de motor, reprogramado con los últimos y más elegantes algoritmos, y me han quitado todo el óxido con un atomizador Gracias mi querido amigo, estoy muy bien. ¡Muy feliz y complacido de hablar contigo por un tiempo! Oh, estoy bien, gracias! ¿Y cómo estás hoy, amigo?', 'T', '2018-06-05 16:50:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scripts`
--

CREATE TABLE `scripts` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `script` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `scripts`
--

INSERT INTO `scripts` (`id`, `nombre`, `script`, `description`, `status`) VALUES
(1, 'bajar torso', 'act_down', 'el robot baja de estatura hasta el minimo despues de moverse, pone los brazos en posicion neutral y alinea el torso verticalmente', 'S'),
(2, 'subir torso', 'act_up', 'ajusta la altura del robot hasta encontrar un rostro, sube y baja el actuador de la altura', 'S'),
(3, 'bailar', 'dance', 'hace un baile, usado cuando le piden un baile', 'S'),
(4, 'girar cabeza', 'face', 'busca un rostro, rota la cabeza del robot, baja y sube el actuador por 25 seg, usado cuando el robot tiene que buscar una cara', 'S'),
(5, 'chocar los 5', 'get_five', 'levanta el brazo para chocar la mano como gesto, sube la mano por 7 seg y despues la baja', 'S'),
(6, 'dar la mano a hombre', 'get_hand_boy', 'levanta la mano derecha para dar un apreton de manos por 10 segundos y la vuelve a bajar', 'S'),
(7, 'dar la mano a mujer', 'get_hand_girl', 'levanta la mano derecha mostrando la palma, espera por 10 seg y luego la vuelve a bajar', 'S'),
(8, 'apagar', 'shutdown', 'prepara al robot para ser apagado, bajando la estatura al minimo, bajando los brazos, cabeza y el torso a una posicion neutral', 'S'),
(9, 'posicion de combate', 'karate', 'rapidamente se para en posicion de combate y rota su cabeza, usarlo cuando no este ningun otro script activo y brazos neutral', 'S'),
(10, 'mirar', 'look', 'realiza un llamado de atencion a su pantalla usando su cabeza y mano derecha, acompañado por la frase MIRA EN MI PANTALLA', 'S'),
(11, 'factura', 'take check', 'realiza un llamado de atencion a la impresora de recibos, usado normalmente despues de imprimir un recibo', 'S'),
(12, 'foto', 'take photo', 'realiza un llamado de atencion a su imresora de fotos, usado normalmente despues de imprimir una foto', 'S'),
(13, 'pensar', 'think', 'apunta a su cabeza y hace el gesto de rescarse, usado regularmente cuando espera una respuesta o tiene mala conexion a internet', 'S'),
(14, 'que!?', 'wat', 'el robot Dobla el cuerpo como si tratara de escuchar mejor con su oreja. Como si la frase no hubiera sido reconocida y El robot le pide que repita la frase. Utilizado frecuentemente cuando el robot no pudo reconocer una palabra', 'S'),
(15, 'rascarse', 'scratch', 'el robot se rasca a si mismo, usado normalmente cuando el robot no esta haciendo nada', 'S'),
(16, 'oh no!', 'oh_no', 'cubre su cara con las palmas de las manos y gira su cabeza, usado frecuentemente en caso de un error', 'S'),
(17, 'no no!', 'no_no', 'gira su cabeza en expresion de un gesto de NO, para expresar desacuerdo, usado frecuentemente para una respuesta negativa', 'S'),
(18, 'NO!', 'strong_no', 'cruza los brazos y gira su cabeza, como analogia del no no', 'S'),
(19, 'ola', 'wave', 'levanta sus brazos como haciendo una ola, , usarlo cuando no este ningun otro script activo y brazos neutral', 'S'),
(20, 'encojer de hombros', 'hz', 'el robot se encoje de hombros, parecido al QUE!?', 'S'),
(21, 'de acuerdo', 'agree', 'robot acentua y aplaude con las manos, expresando su acuerdo. Usado para dar una respuesta positiva.', 'S'),
(22, 'hablar', 'talk1', 'movimientos generales usados mientras el robot esta hablando', 'S'),
(23, 'hablar', 'talk2', 'movimientos generales usados mientras el robot esta hablando', 'S'),
(24, 'hablar', 'talk3', 'movimientos generales usados mientras el robot esta hablando', 'S'),
(25, 'hablar', 'talk4', 'movimientos generales usados mientras el robot esta hablando', 'S'),
(26, 'hablar', 'talk5', 'movimientos generales usados mientras el robot esta hablando', 'S'),
(27, 'hablar', 'talk6', 'movimientos generales usados mientras el robot esta hablando', 'S'),
(28, 'baile3', 'dance3', 'bailar 3', 'S'),
(29, 'baile4', 'dance4', 'bailar 4', 'S'),
(30, 'baile5', 'dance5', 'bailar 5', 'S'),
(31, 'baile6', 'dance6', 'bailar 6', 'S'),
(32, 'baile7', 'dance7', 'bailar 7', 'S'),
(33, 'baile8', 'dance8', 'bailar 8', 'S'),
(34, 'baile11', 'dance11', 'bailar 11', 'S'),
(35, 'jackson1', 'jackson', 'jackson 1', 'S'),
(36, 'jackson_1', 'jackson_1', 'Jackson 2', 'S'),
(37, 'pogo_dance', 'pogo_dance', 'baile pogo', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `id_dpto` int(11) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `direccion` text NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `nombres`, `telefono`, `id_dpto`, `cargo`, `direccion`, `avatar`, `fecha`, `hora`, `status`) VALUES
(1, 'mramirez', '81dc9bdb52d04dc20036dbd8313ed055', 'Manuel Ramirez', '973927908', 1, 'Desorrador', 'Miguel Claro 282', 'mramirez.png', '2018-06-05', '12:02:22', 'A'),
(2, 'mduran', '81dc9bdb52d04dc20036dbd8313ed055', 'Manuel Duran', '55555555', 1, 'Desorrador', 'La Florida', 'avatar01.png', '2018-06-05', '12:02:22', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `articulos` ADD FULLTEXT KEY `indice_tc` (`titulo`,`contenido`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indmocion` (`emocion`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dialogos_dirigidos`
--
ALTER TABLE `dialogos_dirigidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `script` (`script`),
  ADD KEY `indemocion` (`emocion`);

--
-- Indices de la tabla `emociones`
--
ALTER TABLE `emociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `linguistica`
--
ALTER TABLE `linguistica`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `linguistica` ADD FULLTEXT KEY `expresion_regular` (`expresion_regular`);

--
-- Indices de la tabla `scripts`
--
ALTER TABLE `scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dialogos_dirigidos`
--
ALTER TABLE `dialogos_dirigidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `emociones`
--
ALTER TABLE `emociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `linguistica`
--
ALTER TABLE `linguistica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT de la tabla `scripts`
--
ALTER TABLE `scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
