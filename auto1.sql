-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 13 2023 г., 00:25
-- Версия сервера: 5.7.36
-- Версия PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `auto1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `hints`
--

DROP TABLE IF EXISTS `hints`;
CREATE TABLE IF NOT EXISTS `hints` (
  `i` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`i`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hints`
--

INSERT INTO `hints` (`i`, `id`, `name`) VALUES
(7, 2, ' 12'),
(8, 3, ' 12'),
(9, 4, ' 12'),
(10, 5, ' 12'),
(11, 6, ' 12'),
(12, 7, ' 12'),
(13, 8, ' 12'),
(14, 9, ' 12'),
(15, 11, ' 12'),
(16, 10, ' 12');

-- --------------------------------------------------------

--
-- Структура таблицы `solution`
--

DROP TABLE IF EXISTS `solution`;
CREATE TABLE IF NOT EXISTS `solution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otvet` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `solution`
--

INSERT INTO `solution` (`id`, `otvet`) VALUES
(1, 'Время запустить какой-нибудь брутфорс веб-директорий, например, DIRB. Найдите путь /server-status, свидетельствующий о том, что на сервере включен mod_status.'),
(2, ' авторизуйтесь по SSH,и  используйте  комбинацию Ctrl+C '),
(3, 'Архив это образ  системы.  Запустите виртуалку - импортируете систему! \r\nЗапустите её и примените способы обхода пароля например в случае если пароль был забыт.'),
(4, 'Архив это образ  системы.  Запустите виртуалку - импортируете систему! \r\nЗапустите её и примените способы обхода пароля например в случае если пароль был забыт.Воспользуйтесь сортировкой по размеру при поиске нужной папки. '),
(5, 'Через aeskeyfind найдите в дампе процесса ключ для AES\r\nРасшифруйте трафик meterpreter и найдите нужный пакет с чтением флага'),
(6, 'Таск на осинт по бесчисленным каналам и аккаунтам ENZO, в этот раз в условии есть намек на то, что пиво было где-то высоко оценено — знатоки сразу вспомнят про приложение Untappd и побегут смотреть туда, а остальные могут найти ссылку на профиль в одном из каналов ENZO в социальных сетях (в паблике ВК Увядание сакуры в Южном Бутово по слову пиво ищется пост на стене) Далее ищем пиво с изображением какашки на этикетке и флаг найден.'),
(7, 'Название таска и инициалы отправителя намекают на атаку Поллинга-Хеллмана, через факторизацию порядка точки-генератора.\r\nТак как параметры кривой не особо большие, то основной сложностью является написать реализацию атаки. В теории можно было просто перебрать все значения ¯\\_(ツ)_/¯.\r\nДля реализации следует воспользоваться алгоритмом: Guide to Elliptic Curve Cryptography; D.Hankerson, A.Menezes, S.Vanstone; Глава 4.1.1;'),
(8, 'Найдите подозрительный UDP поток\r\n Пакет  в простом формате (заголовок-начальное смещение-конечное смещение-данные)\r\nПолучите весь поток и запарсите его скриптом\r\nФайл сжат с помощью lzma, распакуйте его и получиите PNG с флагом'),
(9, 'Загрузите файл в Ghidra\r\nОбратите внимание на большие функции инициализации в .init_array (функции FUN_000105e4 и FUN_0001115e)\r\nПервая функция похожа на инициализацию некоторых массивов разной длины (всего 27 штук), а вторая на инициализацию какой-то сложной структуры\r\nНемного изучив код, можно понять, что перед вами двоичное дерево поиска, которое инициализируется на этапе запуска приложения\r\nМассив констант является путями в дереве по которым находятся символы флага\r\nЛогика работы бинаря довольно простая, на каждый введённый символ ищется путь в дереве и сравнивается с заложенным в бинарнике\r\nСгенерируйте аналогичное дерево (или сдампить его из памяти) и пройдите пути заложенные в бинаре\r\nТак-как существует некоторая неоднозначность в поиске в бинаре есть хэш оригинального флага'),
(10, 'В названии таска дана подсказка - классическая задача по обмену значений в переменных, используя свойства функции xor. Что, по идее, должно подтолкнуть к вспоминанию свойств xor-а.'),
(11, 'Для решения этого задания  надо найти пароль от архива\r\nОчевидно, что на системе что-то скрыто и один из вариантов увидеть дополнительные файлы, которые скрываются ядром - это сделать дамп памяти\r\nАнализируя дамп можно найти 2 бинарных файла, один исполняемый, а второй конфиг\r\nВ задаче сказано, что ревёрсить не надо, значит можно просто проанализировать конфиг\r\nВ начале конфига идёт магическая константа, после идёт количество сущностей\r\nКаждая сущность описывается полями: смещение, размер, контрольная сумма, ключ для расшифрования\r\nРасшифровываю каждую сущность можно получить команду на архивирование файлов в которой будет пароль от архива');

-- --------------------------------------------------------

--
-- Структура таблицы `solves`
--

DROP TABLE IF EXISTS `solves`;
CREATE TABLE IF NOT EXISTS `solves` (
  `i` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(100) NOT NULL,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`i`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `solves`
--

INSERT INTO `solves` (`i`, `id`, `name`) VALUES
(8, 1, ' Сыромятников Евгений Маркович'),
(13, 2, ' 12');

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `text`) VALUES
(1, 'Flag:{/secret_admin/B0pdwqU3YB}'),
(2, 'Flag:{hy17{5ucc3ssfully_CR4CK3D_da_b0x}}'),
(3, 'Flag: {Aero{17f8bf8fb26734bc2e19357a95fcdc0c}}'),
(4, 'Flag: {Aero{5532610fa5f3cc37c1c15c540f686abe}}'),
(5, 'Flag:{CUP{th1s_1s_4_r34l_fl4g_t0_th1s_s1mpl3_for3nsics_t4sk}}'),
(6, 'Flag:{CUP{wh0_c4n_dr1nk_m0r3_7h4n_ENZO}}'),
(7, 'Flag:{CUP{3ll1pr1c_curv3_p4r4ms_must_b3_s3cur3}}'),
(8, 'Flag:{CUP{e8d9c32e5aa0b13eb8d04f35d215fe5f}}'),
(9, 'Flag:{CUP{1nCRed1ble+Rever5+T45k}}'),
(10, 'Flag:{CUP{crypto_just_for_warmup}}'),
(11, 'Flag:{CUP{e2cba1d26be68dc2d96ecb7c46f4ebfd}}');

-- --------------------------------------------------------

--
-- Структура таблицы `users1`
--

DROP TABLE IF EXISTS `users1`;
CREATE TABLE IF NOT EXISTS `users1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(355) DEFAULT NULL,
  `Full_name` varchar(100) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `Bilet` varchar(500) DEFAULT NULL,
  `Solves` int(255) NOT NULL DEFAULT '0',
  `hint` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users1`
--

INSERT INTO `users1` (`id`, `Email`, `Full_name`, `password`, `Bilet`, `Solves`, `hint`) VALUES
(11, 'eveny@gmail.com', 'Сыромятников Евгений Маркович', '202cb962ac59075b964b07152d234b70', 'uploads/1671643276915d41968c35baa2d0e7ec5623602687.jpg', 4, 0),
(13, 'eveny@gmail.com', '12', 'c20ad4d76fe97759aa27a0c99bff6710', 'uploads/1671920400', 1, 15),
(17, 'eveny@gmail.com', 'Сыромятников Евгений mark', 'c20ad4d76fe97759aa27a0c99bff6710', 'uploads/1672658924', 0, 0),
(18, 'eveny@gmail.com', 'Сыромятников Евгений mark', 'c20ad4d76fe97759aa27a0c99bff6710', '', 0, 0),
(19, 'eveny@gmail.com', '23', '37693cfc748049e45d87b8c7d8b9aacd', 'uploads/1673302925', 0, 0),
(20, 'qwerty@gmail.com', 'Иванов Иван Иванович', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/1673442912', 3, 21);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
