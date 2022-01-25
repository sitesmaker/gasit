-- Started: 2021-09-03 17:40:08
SET NAMES 'utf8';
-- -----------------------------------
-- Dumping table alsem_area_def_prop
-- -----------------------------------
DROP TABLE IF EXISTS `alsem_area_def_prop`;
CREATE TABLE `alsem_area_def_prop` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT 0,
  `ROW_COUNT` int(11) DEFAULT NULL,
  `COL_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `alsem_area_def_prop` VALUES
(1, 'Строка', NULL, NULL, 'S', 'L', '', 'N', 1, 'N', 0, 1, 70),
(2, 'Файл', NULL, NULL, 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70),
(3, 'Текст', 'HTML', NULL, 'S', 'L', '', 'N', 1, 'N', 0, 1, 70),
(4, 'Координата на яндекс карте', 'map_yandex', NULL, 'S', 'L', '', 'N', 1, 'N', 0, 1, 70),
(5, 'Дата', 'Date', NULL, 'S', 'L', '', 'N', 1, 'N', 0, 1, 70),
(6, 'Дата/время', 'DateTime', NULL, 'S', 'L', '', 'N', 1, 'N', 0, 1, 70),
(7, 'Описание поля', 'alsemAreasHelper', NULL, 'S', 'L', '', 'N', 1, 'N', 0, 1, 70),
(8, 'Привязка к элементу инфоблока', NULL, NULL, 'E', 'L', NULL, 'N', 1, 'N', 0, 1, 70),
(9, 'Привязка к элементу инфоблока в виде списка', 'EList', '{\"size\":1,\"width\":0,\"group\":\"N\",\"multiple\":\"N\"}', 'E', 'L', NULL, 'N', 1, 'N', 0, 1, 70),
(10, 'Привязка к элементу инфоблока с автозаполнением', 'EAutocomplete', '{\"VIEW\":\"E\",\"SHOW_ADD\":\"Y\",\"MAX_WIDTH\":0,\"MIN_HEIGHT\":24,\"MAX_HEIGHT\":1000,\"BAN_SYM\":\",;\",\"REP_SYM\":\" \",\"OTHER_REP_SYM\":\"\",\"IBLOCK_MESS\":\"Y\"}', 'E', 'L', NULL, 'N', 1, 'N', 0, 1, 70),
(11, 'Справочник', 'directory', '{\"size\":1,\"width\":0,\"group\":\"N\",\"multiple\":\"N\",\"TABLE_NAME\":\"\"}', 'S', 'L', NULL, 'N', 1, 'N', 0, 1, 70),
(12, 'Название-описание', 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', NULL, 'N', 1, 'N', 0, 1, 70),
(13, 'Название-значение', 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"40x1\",\"HINT\":\"\"},{\"NAME\":\"Значение\",\"CODE\":\"VALUE\",\"SIZE\":\"40x1\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"row\",\"HIDE_NAMES\":\"Y\"}', 'S', 'L', NULL, 'N', 1, 'N', 0, 1, 70),
(14, 'Настраиваемое поле', 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"\",\"CODE\":\"\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"\",\"CODE\":\"\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', NULL, 'N', 1, 'N', 0, 1, 70);
-- -----------------------------------
-- Dumping table alsem_area_item
-- -----------------------------------
DROP TABLE IF EXISTS `alsem_area_item`;
CREATE TABLE `alsem_area_item` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CODE` (`CODE`),
  KEY `NAME` (`NAME`),
  KEY `ACTIVE` (`ACTIVE`),
  KEY `SITE_ID` (`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `alsem_area_item` VALUES
(1, 'JS сеошников и маркетологов', 'seo_js', '', 'Y', '2020-06-26 06:47:54', '2019-12-01 14:42:33'),
(2, 'Меню', 'menu', '', 'Y', '2021-01-25 15:01:21', '2019-12-01 14:44:29'),
(3, 'Блок «Главный»', 'home.section_main', '', 'Y', '2020-08-04 16:50:34', '2019-12-01 16:37:44'),
(4, 'Блок «Преимущества»', 'home.advatages', '', 'Y', '2020-08-04 16:20:17', '2019-12-01 17:22:28'),
(5, 'Блок «Миссия»', 'home.mission', '', 'Y', '2019-12-01 18:39:10', '2019-12-01 18:36:37'),
(6, 'Блок «Контакты»', 'home.contacts', '', 'Y', '2020-08-04 15:29:51', '2019-12-02 18:10:21'),
(7, 'Политика конфиденциальности', 'privacy_policy', '', 'Y', '2019-12-03 15:27:53', '2019-12-03 15:27:23'),
(8, 'Состав', 'composition', '', 'Y', '2019-12-03 17:00:30', '2019-12-03 16:48:22'),
(10, 'Где купить', 'wherebuy', 'a1', 'Y', '2020-07-13 11:56:55', '2020-05-27 18:13:36'),
(11, 'Мобильное меню', 'menu_mobile', '', 'Y', '2021-01-26 10:23:08', '2020-07-31 16:24:14'),
(12, 'Мобильный блок «Главный»', 'home.section_main_mobile', '', 'Y', '2020-08-24 15:20:29', '2020-08-07 10:42:32'),
(13, 'Мобильный блок «Преимущества»', 'home.advatages_mobile', '', 'Y', '2020-08-24 15:13:11', '2020-08-07 10:48:18'),
(14, 'Мобильный блок «Контакты»', 'home.contacts_mobile', '', 'Y', '2020-08-07 10:53:32', '2020-08-07 10:53:05'),
(15, 'Блок \"Блог\"', 'home.blog', 'a1', 'Y', '2021-01-25 15:00:17', '2021-01-25 15:00:17');
-- -----------------------------------
-- Dumping table alsem_area_item_prop
-- -----------------------------------
DROP TABLE IF EXISTS `alsem_area_item_prop`;
CREATE TABLE `alsem_area_item_prop` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ID_ITEM` int(18) NOT NULL,
  `ID_DEF_PROP` int(18) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 0,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORM_TAB` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORM_TAB_SORT` int(11) NOT NULL DEFAULT 0,
  `FORM_GROUP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORM_GROUP_SORT` int(11) NOT NULL DEFAULT 0,
  `USER_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT 0,
  `ROW_COUNT` int(11) DEFAULT NULL,
  `COL_COUNT` int(11) DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SORT` (`SORT`),
  KEY `ID_ITEM` (`ID_ITEM`),
  KEY `ID_ITEM_CODE` (`ID_ITEM`,`CODE`),
  KEY `FORM_TAB` (`FORM_TAB`),
  KEY `FORM_TAB_SORT` (`FORM_TAB_SORT`),
  KEY `FORM_GROUP` (`FORM_GROUP`),
  KEY `FORM_GROUP_SORT` (`FORM_GROUP_SORT`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `alsem_area_item_prop` VALUES
(1, 1, 1, 0, 'HEAD', 'Js внутри head', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 20, 70, '', ''),
(2, 1, 1, 0, 'BODY', 'Js вначале body', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 20, 70, '', ''),
(3, 2, 14, 0, 'ITEMS', 'Меню', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"40x1\",\"HINT\":\"\"},{\"NAME\":\"Ссылка\",\"CODE\":\"URL\",\"SIZE\":\"40x1\",\"HINT\":\"\"},{\"NAME\":\"CSS класс\",\"CODE\":\"CSS_CLASS\",\"SIZE\":\"20x1\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"row\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'Y', 1, 'N', 0, 1, 70, '', ''),
(4, 3, 1, 0, 'TITLE', 'Заголовок', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(5, 3, 1, 0, 'DESCRIPTION', 'Описание под заголовком', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 5, 70, '', 'br здесь не баг, а специальная метка для анимации текста по строкам'),
(6, 3, 2, 0, 'AVARDS_ICONS', 'Медальки - иконки', '', 0, '', 0, '', '', 'F', 'L', '', 'Y', 1, 'Y', 0, 1, 70, '', 'Положение иконки соответствует медальки'),
(7, 3, 2, 0, 'AVARDS', 'Медальки', '', 0, '', 0, '', '', 'F', 'L', '', 'Y', 1, 'Y', 0, 1, 70, '', 'Положение медальки соответствует иконке'),
(9, 3, 1, 0, 'ABILITIES', 'Преимущества', '', 0, '', 0, '', '', 'S', 'L', '', 'Y', 1, 'N', 0, 2, 70, '', ''),
(10, 4, 12, 0, 'ABIL_01', 'Нежные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(11, 4, 12, 0, 'ABIL_02', 'Современные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(12, 4, 12, 0, 'ABIL_03', 'Надежные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(13, 4, 12, 0, 'ABIL_04', 'Многослойные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(14, 4, 12, 0, 'ABIL_05', 'Незаметные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(15, 5, 1, 0, 'TITLE', 'Заголовок', 'Описание', 1000, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(16, 5, 1, 0, 'DESCRIPTIONS', 'Описание', 'Описание', 1000, '', 0, '', '', 'S', 'L', '', 'Y', 1, 'N', 0, 5, 70, '', ''),
(17, 5, 1, 0, 'ABIL_TITLE', 'Заголовок', 'Преимущества', 950, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(18, 5, 13, 0, 'ABIL_ITEMS', 'Преимущества', 'Преимущества', 950, '', 0, '', '', 'S', 'L', '', 'Y', 1, 'N', 0, 2, 70, '', ''),
(19, 5, 1, 0, 'VIDEO_IMAGE', 'Превью', 'Видео', 900, '', 0, '', '', 'F', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(20, 5, 2, 0, 'VIDEO', 'Видео', 'Видео', 900, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(21, 6, 14, 900, 'CONTACTS', 'Контакты', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Группа\",\"CODE\":\"GROUP_NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"E-mail\",\"CODE\":\"EMAIL\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Подпись к e-mail\",\"CODE\":\"EMAIL_DESCRIPTION\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Телефон\",\"CODE\":\"PHONE\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Подпись к телефону\",\"CODE\":\"PHONE_DESCRIPTION\",\"SIZE\":\"70x1\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'Y', 1, 'N', 0, 1, 70, '', ''),
(23, 6, 1, 1000, 'TITLE', 'Заголовок', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(24, 6, 1, 950, 'DESCRIPTION', 'Описание', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 3, 70, '', ''),
(25, 6, 1, 850, 'COPYRIGHT', 'Copyright', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(26, 7, 2, 0, 'FILE', 'Файл', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(27, 8, 3, 0, 'TEXT', 'О составе Nuage', '', 0, '', 0, 'HTML', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(28, 8, 14, 0, 'ITEMS', 'Таблица', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Конструктивная часть\",\"CODE\":\"COSTRUCT_PART\",\"SIZE\":\"40x3\",\"HINT\":\"\"},{\"NAME\":\"Материал состава\",\"CODE\":\"MATERIAL\",\"SIZE\":\"40x3\",\"HINT\":\"\"},{\"NAME\":\"Почему это сделано так?\",\"CODE\":\"WHY\",\"SIZE\":\"40x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"row\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'Y', 1, 'N', 0, 1, 70, '', ''),
(30, 10, 1, 0, 'PARTNERS_TITLE', 'Заголовок', 'Аптечные сети', 1000, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 2, 70, '', ''),
(31, 10, 1, 0, 'PARTNERS_DESCRIPTION', 'Описание', 'Аптечные сети', 1000, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 3, 70, '', ''),
(32, 10, 2, 0, 'PARTNERS_LOGO', 'Логотипы', 'Аптечные сети', 1000, '', 0, '', '', 'F', 'L', '', 'Y', 1, 'Y', 0, 1, 70, '', ''),
(33, 10, 1, 0, 'BUY_TITLE', 'Заголовок', 'Купить онлайн', 950, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 2, 70, '', ''),
(34, 10, 1, 0, 'BUY_DESCRIPTION', 'Описание', 'Купить онлайн', 950, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 3, 70, '', ''),
(35, 10, 7, 0, '', 'Продукция', 'Купить онлайн', 950, '', 0, 'alsemAreasHelper', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '<a href=\"/bitrix/admin/iblock_list_admin.php?IBLOCK_ID=12&type=nuage&lang=ru&find_section_section=0\">Редактировать</a>', ''),
(36, 10, 1, 0, 'MAP_IMAGE', 'Изображение', 'Nuage в России', 900, '', 0, '', '', 'F', 'L', '', 'N', 1, 'N', 0, 1, 70, '', 'Оптимально 1124px x 564px'),
(37, 10, 1, 100, 'PARTNERS_TABNAME', 'Название вкладки', 'Аптечные сети', 1000, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(38, 10, 1, 95, 'PARTNERS_ACTIVE', 'Показывать вкладку', 'Аптечные сети', 1000, '', 0, 'alse_checkbox', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(39, 10, 1, 100, 'BUY_TABNAME', 'Название вкладки', 'Купить онлайн', 950, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(40, 10, 1, 95, 'BUY_ACTIVE', 'Показывать вкладку', 'Купить онлайн', 950, '', 0, 'alse_checkbox', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(41, 10, 1, 100, 'MAP_TABNAME', 'Название вкладки', 'Nuage в России', 900, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(42, 10, 1, 95, 'MAP_ACTIVE', 'Показывать вкладку', 'Nuage в России', 900, '', 0, 'alse_checkbox', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(43, 10, 1, 90, 'MAP_TITLE', 'Заголовок', 'Nuage в России', 900, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 2, 70, '', ''),
(44, 10, 1, 85, 'MAP_DESCRIPTION', 'Описание', 'Nuage в России', 900, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 3, 70, '', ''),
(45, 11, 14, 0, 'ITEMS', 'Меню', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"40x1\",\"HINT\":\"\"},{\"NAME\":\"Ссылка\",\"CODE\":\"URL\",\"SIZE\":\"40x1\",\"HINT\":\"\"},{\"NAME\":\"CSS класс\",\"CODE\":\"CSS_CLASS\",\"SIZE\":\"20x1\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"row\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'Y', 1, 'N', 0, 1, 70, '', ''),
(46, 4, 2, 0, 'ABIL_01_FILE', 'Картинка Нежные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(47, 4, 2, 0, 'ABIL_02_FILE', 'Картинка Современные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(48, 4, 2, 0, 'ABIL_03_FILE', 'Картинка Надежные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(49, 4, 2, 0, 'ABIL_04_FILE', 'Картинка Многослойные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(50, 4, 2, 0, 'ABIL_05_FILE', 'Картинка Незаметные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(51, 6, 1, 890, 'MOBILE_EMAIL', 'Контакт для мобильной версии', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(52, 6, 1, 895, 'MOBILE_TITLE', 'Заголовок контакта мобильный', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(53, 6, 1, 885, 'MOBILE_DESCRIPTION', 'Подпись контакта мобильный', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(54, 12, 1, 0, 'TITLE', 'Заголовок', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(55, 12, 1, 0, 'DESCRIPTION', 'Описание под заголовком', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 5, 70, '', 'br здесь не баг, а специальная метка для анимации текста по строкам'),
(56, 12, 2, 0, 'AVARDS', 'Медальки', '', 0, '', 0, '', '', 'F', 'L', '', 'Y', 1, 'Y', 0, 1, 70, '', 'Положение медальки соответствует иконке'),
(57, 12, 2, 0, 'BANNER', 'Баннер', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(58, 13, 12, 0, 'ABIL_01', 'Нежные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(59, 13, 12, 0, 'ABIL_02', 'Современные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(60, 13, 12, 0, 'ABIL_03', 'Надежные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(61, 13, 12, 0, 'ABIL_04', 'Многослойные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(62, 13, 12, 0, 'ABIL_05', 'Незаметные', '', 0, '', 0, 'alsemAreasCustom', '{\"FIELDS\":[{\"NAME\":\"Название\",\"CODE\":\"NAME\",\"SIZE\":\"70x1\",\"HINT\":\"\"},{\"NAME\":\"Описание\",\"CODE\":\"TEXT\",\"SIZE\":\"70x3\",\"HINT\":\"\"}],\"FIELDS_DIRECTION\":\"column\",\"HIDE_NAMES\":\"N\"}', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(63, 13, 2, 0, 'ABIL_01_FILE', 'Картинка Нежные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(64, 13, 2, 0, 'ABIL_02_FILE', 'Картинка Современные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(65, 13, 2, 0, 'ABIL_03_FILE', 'Картинка Надежные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(66, 13, 2, 0, 'ABIL_04_FILE', 'Картинка Многослойные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(67, 13, 2, 0, 'ABIL_05_FILE', 'Картинка Незаметные', '', 0, '', 0, '', '', 'F', 'L', '', 'N', 1, 'Y', 0, 1, 70, '', ''),
(68, 14, 1, 895, 'MOBILE_TITLE', 'Заголовок контакта мобильный', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(69, 14, 1, 890, 'MOBILE_EMAIL', 'Контакт для мобильной версии', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(70, 14, 1, 885, 'MOBILE_DESCRIPTION', 'Подпись контакта мобильный', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', ''),
(71, 14, 1, 850, 'COPYRIGHT', 'Copyright', '', 0, '', 0, '', '', 'S', 'L', '', 'N', 1, 'N', 0, 1, 70, '', '');
-- -----------------------------------
-- Dumping table alsem_area_item_val
-- -----------------------------------
DROP TABLE IF EXISTS `alsem_area_item_val`;
CREATE TABLE `alsem_area_item_val` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ID_ITEM` int(18) NOT NULL DEFAULT 0,
  `ID_ITEM_PROP` int(18) NOT NULL DEFAULT 0,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_ITEM` (`ID_ITEM`),
  KEY `ID_ITEM_ID_ITEM_PROP` (`ID_ITEM`,`ID_ITEM_PROP`)
) ENGINE=InnoDB AUTO_INCREMENT=724 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `alsem_area_item_val` VALUES
(3, 2, 3, 'a:3:{s:4:\"NAME\";s:24:\"Преимущества\";s:3:\"URL\";s:12:\"/#advantages\";s:9:\"CSS_CLASS\";s:10:\"advantages\";}', NULL),
(4, 2, 3, 'a:3:{s:4:\"NAME\";s:22:\"Ассортимент\";s:3:\"URL\";s:12:\"/#assortment\";s:9:\"CSS_CLASS\";s:10:\"assortment\";}', NULL),
(5, 2, 3, 'a:3:{s:4:\"NAME\";s:12:\"Миссия\";s:3:\"URL\";s:9:\"/#mission\";s:9:\"CSS_CLASS\";s:7:\"mission\";}', NULL),
(6, 2, 3, 'a:3:{s:4:\"NAME\";s:8:\"Блог\";s:3:\"URL\";s:6:\"/#blog\";s:9:\"CSS_CLASS\";s:4:\"blog\";}', NULL),
(8, 2, 3, 'a:3:{s:4:\"NAME\";s:27:\"Вопрос – ответ\";s:3:\"URL\";s:5:\"/#faq\";s:9:\"CSS_CLASS\";s:3:\"faq\";}', NULL),
(9, 3, 4, 'Nuage', NULL),
(10, 3, 5, 'Консультации с врачами - гинекологами br\r\nи экспертная работа лабораторий Renewal br\r\nпозволили создать эффективные, надежные br\r\nи безопасные средства личной гигиены Nuage.', NULL),
(32, 3, 9, 'Не содержат\r\nкрасителей и ароматизаторов', NULL),
(33, 3, 9, 'Ультратонкие\r\nи гипоаллергенные', NULL),
(34, 3, 9, 'Призваны\r\nоберегать женское здоровье', NULL),
(41, 4, 10, 'a:2:{s:4:\"NAME\";s:35:\"Нежная поверхность\";s:4:\"TEXT\";s:317:\"Нежный микроперфорированный верхний слой прокладок br обеспечивает естественное дыхание кожи без парникового эффекта, br что сохраняет  кожные покровы в здоровом состоянии.\";}', NULL),
(42, 4, 11, 'a:2:{s:4:\"NAME\";s:37:\"Распределяющий слой\";s:4:\"TEXT\";s:401:\"Ультрасовременный распределяющий влагу слой. Многослойная конструкция  прокладок Nuage содержит слой, равномерно распределяющий влагу и не позволяющий ей скапливаться локально, в одном месте. Предотвращает  протекание.\";}', NULL),
(43, 4, 12, 'a:2:{s:4:\"NAME\";s:31:\"Впитывающие слои\";s:4:\"TEXT\";s:115:\"Композиция впитывающих оборачивающих слоев для лучшей защиты.\";}', NULL),
(44, 4, 13, 'a:2:{s:4:\"NAME\";s:63:\"Мелкомолекулярный суперабсорбент\";s:4:\"TEXT\";s:359:\"Ультратонкие прокладки Nuage выполнены из ультрасовременных материалов, что позволило создать многослойную конструкцию толщиной до 3 мм с мелкомолекулярным суперабсорбентом (превращается в гель).\";}', NULL),
(45, 4, 14, 'a:2:{s:4:\"NAME\";s:48:\"Ультратонкие и незаметные\";s:4:\"TEXT\";s:299:\"Ультратонкие прокладки Nuage разработаны с учетом анатомических особенностей женщины, поэтому Nuage остаются незаметными в любой ситуации. Nuage – защита без стеснения.\";}', NULL),
(46, 5, 15, 'Самое дорогое – женское здоровье', NULL),
(47, 5, 16, 'Мы стали тщательно продумывать покупки продуктов для семьи, отдавая предпочтение натуральным. Мы ищем на полках магазинов безопасную, но эффективную  бытовую химию и косметику.', NULL),
(48, 5, 16, 'Несколько сотен прокладок используются женщиной за год ее жизни, тысячи женщин  по всему миру не задумываются о том, что средства гигиены могут непосредственно влиять  на самое дорогое – женское здоровье.', NULL),
(49, 5, 17, 'Разрабатывая прокладки Nuage, мы взяли за основу:', NULL),
(52, 5, 18, '«Аптечное» качество\r\nВысокое «аптечное» качество продукции.', NULL),
(53, 5, 18, 'Медицинские компетенции\r\nОтсутствие небезопасных материалов и красителей.', NULL),
(54, 5, 18, 'Максимальное соответствие\r\nКонцепции здорового образа жизни.', NULL),
(55, 5, 18, 'Максимальный комфорт\r\nДля женщин любого возраста и любых потребностей.', NULL),
(58, 5, 19, '262', NULL),
(59, 5, 20, '263', ''),
(60, 6, 21, 'a:5:{s:10:\"GROUP_NAME\";s:25:\"Горячая линия\";s:5:\"EMAIL\";s:14:\"hello@nuage.su\";s:17:\"EMAIL_DESCRIPTION\";s:38:\"Всегда рады ответить\";s:5:\"PHONE\";s:14:\"8-800-200-0995\";s:17:\"PHONE_DESCRIPTION\";s:49:\"Звонки по России бесплатно\";}', NULL),
(62, 6, 21, 'a:5:{s:10:\"GROUP_NAME\";s:18:\"Партнерам\";s:5:\"EMAIL\";s:17:\"partners@nuage.su\";s:17:\"EMAIL_DESCRIPTION\";s:38:\"Всегда рады ответить\";s:5:\"PHONE\";s:14:\"8-800-200-0995\";s:17:\"PHONE_DESCRIPTION\";s:49:\"Звонки по России бесплатно\";}', NULL),
(64, 6, 23, 'Свяжитесь с нами', NULL),
(65, 6, 24, 'Вы можете поделиться опытом использования или задать вопрос специалисту через форму обратной связи', NULL),
(66, 6, 25, 'АО \"ПФК ОБНОВЛЕНИЕ\" \"ВСЕ ПРАВА ЗАЩИЩЕНЫ\" (c) 2017', NULL),
(67, 7, 26, '267', NULL),
(68, 8, 27, 'a:2:{s:4:\"TEXT\";s:4433:\"<p>\r\n	 Сегодня мы все чаще задумываемся о составе средств, которые используем ежедневно в уходе за собой и для своей семьи. Средства бытовой химии, косметические средства – от многих мы стали отказываться по причине наличия сомнительных компонентов в составе. Но если всасыванию вредных веществ через кожу препятствует жировой слой, образующийся на ее поверхности в результате секреторной деятельности сальных желез, то что препятствует их всасыванию через интимную зону (влагалище женщины)?\r\n</p>\r\n<p>\r\n	 Через слизистые всасывание всех веществ происходит гораздо быстрее, быстрее они поступают и в кровь. Неслучайно, ежегодно выходят исследования на тему использования в прокладках и тампонах различных веществ, представляющих потенциальную опасность для здоровья женщины. А механические повреждения кожи и в результате появление раздражения, дерматитов от конструктивных особенностей или грубых материалов прокладок&nbsp; – дополнительный риск.\r\n</p>\r\n<p>\r\n	 Разрабатывая Nuage, наши специалисты тесно сотрудничали с врачебным сообществом, чтобы создать безопасный продукт, оберегающий женское здоровье. Материалы, используемые в составе, тщательно подобраны и протестированы.<br>\r\n	 В процессе производства они проходят лабораторную проверку службой контроля качества по международным стандартам.\r\n</p>\r\n<p>\r\n	 Открывая вам состав гигиенических прокладок Nuage, мы делаем это с заботой <br>\r\n	 о женском здоровье, – залоге будущего.\r\n</p>\r\n<p>\r\n	 Несмотря на многослойность композиции конструктивной части, современные технологии производства позволили нам создать ультратонкие прокладки Nuage (толщиной 1 – 3 мм), их плотная структура обеспечивает надежную защиту, при этом они остаются тонкими, мягкими, гибкими и очень комфортными для тела.\r\n</p>\r\n<p>\r\n	 Можно ли еще что-то добавить?\r\n</p>\r\n<p>\r\n	 Можно. И даже нужно. Внешняя упаковка Nuage выполнена из современного фольгированного материала, который предохраняет материалы прокладки <br>\r\n	 от перепадов температур, влажной среды (при хранении в ванной комнате), пыли, бактерий и прочих внешних неблагоприятных воздействий, способствующих размножению патогенной флоры. Кроме того, упаковку можно открывать и закрывать неоднократно, носить с собой в сумочке и брать в поездки, так как она снабжена специальным защитным клапаном.\r\n</p>\r\n<p>\r\n	 Позаботьтесь о своем здоровье уже сегодня, выбирая средства гигиены, созданные с экспертным подходом. Nuage – разумный выбор. Доступны в аптеках<br>\r\n	 и в супермаркетах.\r\n</p>\";s:4:\"TYPE\";s:4:\"HTML\";}', NULL),
(69, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:93:\"Поверхность ежедневных\r\nи гигиенических прокладок\";s:8:\"MATERIAL\";s:182:\"Нетканый материал (полотно), изготовленный с применением этилпропиленовых волокон или полиэтилена\";s:3:\"WHY\";s:628:\"Верхний слой способствует максимально быстрому впитыванию влаги в следующие за ним слои и препятствует обратному оттоку жидкости. Натуральные материалы (хлопок) не применяются для верхнего слоя по причине низкой абсорбции, в таких материалах выделяемая жидкость долгое время остается на поверхности, что способствует размножению бактерий.\";}', NULL),
(70, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:43:\"Распределительный слой\";s:8:\"MATERIAL\";s:90:\"Дополнительный слой мягкого нетканого материала\";s:3:\"WHY\";s:176:\"Равномерно распределяет жидкость, способствуя активному впитыванию, предотвращает растекание.\";}', NULL),
(71, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:83:\"Композиция впитывающих (абсорбирующих) слоев\";s:8:\"MATERIAL\";s:261:\"Древесная целлюлоза, влагоустойчивая бумага, распушённая целлюлоза, влагопоглотительные гранулы (суперабсорбент), этил-пропиленовые волокна\";s:3:\"WHY\";s:848:\"В специальной композиции влагопоглощающих слоев использованы самые современные технологии для обеспечения многоступенчатой защиты от протеканий и лишних запахов. Жидкость внутри прокладки превращается в гель, но это не влияет на ее толщину. За счет использования гранул мелкомолекулярного суперабсорбента, на этапе впитывания происходит нейтрализация запаха.\r\nС помощью специальных оборачивающих слоев, прокладка надежно защищена от комкования и разрывов.\";}', NULL),
(72, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:35:\"Красители (чернила)\";s:8:\"MATERIAL\";s:21:\"НЕ СОДЕРЖИТ\";s:3:\"WHY\";s:258:\"Прокладки NUAGE не содержат в своем составе красителей (для выделения впитывающих зон, разнообразных рисунков на поверхности). Гипоаллергенно.\";}', NULL),
(73, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:26:\"Ароматизаторы\";s:8:\"MATERIAL\";s:21:\"НЕ СОДЕРЖИТ\";s:3:\"WHY\";s:188:\"Прокладки NUAGE не содержат отдушек, ароматизаторов, которые могут провоцировать аллергические реакции.\";}', NULL),
(74, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:38:\"Защитный нижний слой\";s:8:\"MATERIAL\";s:35:\"Полиэтилен (пленка)\";s:3:\"WHY\";s:195:\"Гигиеничный, водонепроницаемый нижний слой является надежной основой для крепления всех слоев прокладки.\";}', NULL),
(75, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:31:\"Фиксирующий слой\";s:8:\"MATERIAL\";s:66:\"Композиция эластомеров\r\nи полимеров\";s:3:\"WHY\";s:218:\"Клеящий слой обеспечивает фиксацию прокладки на нижнем белье, не оставляя следов и не повреждая белье. Гипоаллергенно.\";}', NULL),
(76, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:89:\"Антиадгезионный слой Силиконизированная бумага\";s:8:\"MATERIAL\";s:63:\"Бумага, силиконизированная резина\";s:3:\"WHY\";s:248:\"Прослойка между изделием и клеем (бумага, которая клеится на клеящий слой прокладки, при устранении которой прокладка клеится на белье)\";}', NULL),
(77, 8, 28, 'a:3:{s:13:\"COSTRUCT_PART\";s:45:\"Индивидуальная упаковка\";s:8:\"MATERIAL\";s:59:\"Полиэтилен, цветные концентраты\";s:3:\"WHY\";s:269:\"Все наши прокладки (включая ежедневные) имеют индивидуальную упаковку с фирменным принтом, что обеспечивает гигиеничное хранение и использование\";}', NULL),
(79, 2, 3, 'a:3:{s:4:\"NAME\";s:19:\"Где купить\";s:3:\"URL\";s:5:\"/#buy\";s:9:\"CSS_CLASS\";s:3:\"buy\";}', NULL),
(80, 1, 1, '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-55732755-4\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-55732755-4\');\r\n</script>\r\n\r\n\r\n<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-TDGF5LG\');</script>\r\n<!-- End Google Tag Manager -->\r\n\r\n<meta name=\"yandex-verification\" content=\"345046274d06a45c\" />\r\n<!-- Yandex.Metrika counter -->\r\n<script type=\"text/javascript\" >\r\n   (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};\r\n   m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})\r\n   (window, document, \"script\", \"https://mc.yandex.ru/metrika/tag.js\", \"ym\");\r\n\r\n   ym(61343857, \"init\", {\r\n        clickmap:true,\r\n        trackLinks:true,\r\n        accurateTrackBounce:true,\r\n        webvisor:true\r\n   });\r\n</script>\r\n<noscript><div><img src=\"https://mc.yandex.ru/watch/61343857\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript>\r\n<!-- /Yandex.Metrika counter -->\r\n', NULL),
(81, 1, 2, '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-TDGF5LG\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->\r\n\r\n<!-- Yandex.Metrika counter --> <script type=\"text/javascript\" > (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)}; m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)}) (window, document, \"script\", \"https://mc.yandex.ru/metrika/tag.js\", \"ym\"); ym(61343857, \"init\", { clickmap:true, trackLinks:true, accurateTrackBounce:true, webvisor:true }); </script> <noscript><div><img src=\"https://mc.yandex.ru/watch/61343857\" style=\"position:absolute; left:-9999px;\" alt=\"\" /></div></noscript> <!-- /Yandex.Metrika counter -->\r\n', NULL),
(82, 10, 30, 'Где купить средства личной гигиены NUAGE', NULL),
(83, 10, 31, 'Женские гигиенические прокладки NUAGE представлены эксклюзивно в аптеках', NULL),
(104, 10, 33, 'Где можно приобрести продукцию', NULL),
(105, 10, 34, 'Посмотреть наличие и выбрать наиболее удобный пункт выдачи вы сможете самостоятельно и уже сейчас, нужно лишь воспользоваться аптечной поисковой системой, которая доступна в вашем городе', NULL),
(146, 10, 37, 'Аптечные сети', NULL),
(147, 10, 38, 'Y', NULL),
(166, 10, 39, 'Купить онлайн', NULL),
(167, 10, 40, 'Y', NULL),
(168, 10, 41, 'Nuage в России', NULL),
(169, 10, 42, 'Y', NULL),
(170, 10, 43, 'Где можно приобрести продукцию', NULL),
(600, 10, 32, '323', 'http://edelpharm.ru/'),
(601, 10, 32, '324', 'https://lek54.ru/'),
(602, 10, 32, '325', 'https://lek54.ru/'),
(603, 10, 32, '326', 'http://aptekaf.ru/'),
(604, 10, 32, '327', 'https://lek54.ru/'),
(605, 10, 32, '329', 'http://ooofarm.ru/'),
(606, 10, 36, '289', NULL),
(607, 11, 45, 'a:3:{s:4:\"NAME\";s:24:\"Преимущества\";s:3:\"URL\";s:12:\"/#advantages\";s:9:\"CSS_CLASS\";s:0:\"\";}', NULL),
(608, 11, 45, 'a:3:{s:4:\"NAME\";s:12:\"Миссия\";s:3:\"URL\";s:9:\"/#mission\";s:9:\"CSS_CLASS\";s:0:\"\";}', NULL),
(609, 11, 45, 'a:3:{s:4:\"NAME\";s:22:\"Ассортимент\";s:3:\"URL\";s:12:\"/#assortment\";s:9:\"CSS_CLASS\";s:0:\"\";}', NULL),
(610, 11, 45, 'a:3:{s:4:\"NAME\";s:8:\"Блог\";s:3:\"URL\";s:6:\"/#blog\";s:9:\"CSS_CLASS\";s:0:\"\";}', NULL),
(611, 11, 45, 'a:3:{s:4:\"NAME\";s:27:\"Вопрос – ответ\";s:3:\"URL\";s:5:\"/#faq\";s:9:\"CSS_CLASS\";s:0:\"\";}', NULL),
(612, 11, 45, 'a:3:{s:4:\"NAME\";s:19:\"Где купить\";s:3:\"URL\";s:5:\"/#buy\";s:9:\"CSS_CLASS\";s:0:\"\";}', NULL),
(625, 6, 52, 'Пишите нам', NULL),
(626, 6, 51, 'hello@nuage.su', NULL),
(627, 6, 53, 'Всегда рады ответить', NULL),
(663, 4, 46, '341', ''),
(664, 4, 47, '343', ''),
(665, 4, 48, '340', ''),
(666, 4, 49, '344', NULL),
(667, 4, 50, '339', ''),
(676, 3, 6, '256', 'РОАГ'),
(677, 3, 6, '257', 'ISO'),
(678, 3, 6, '258', 'GMP'),
(679, 3, 7, '259', 'Одобрено Российским обществом акушеров-гинекологов'),
(680, 3, 7, '345', 'Не содержит красителей и ароматизаторов'),
(681, 3, 7, '260', 'Сертифицировано ISO 9001'),
(682, 3, 7, '261', 'Производство и контроль качества по стандартам GMP'),
(683, 12, 54, 'Nuage', NULL),
(684, 12, 55, 'Консультации с врачами - гинекологами и экспертная работа лабораторий Renewal\r\nпозволили создать эффективные, надежные и безопасные средства личной гигиены Nuage.', NULL),
(698, 13, 58, 'a:2:{s:4:\"NAME\";s:35:\"Нежная поверхность\";s:4:\"TEXT\";s:311:\"Нежный микроперфорированный верхний слой прокладок обеспечивает естественное дыхание кожи без парникового эффекта, что сохраняет  кожные покровы в здоровом состоянии.\";}', NULL),
(699, 13, 59, 'a:2:{s:4:\"NAME\";s:37:\"Распределяющий слой\";s:4:\"TEXT\";s:401:\"Ультрасовременный распределяющий влагу слой. Многослойная конструкция  прокладок Nuage содержит слой, равномерно распределяющий влагу и не позволяющий ей скапливаться локально, в одном месте. Предотвращает  протекание.\";}', NULL),
(700, 13, 60, 'a:2:{s:4:\"NAME\";s:31:\"Впитывающие слои\";s:4:\"TEXT\";s:115:\"Композиция впитывающих оборачивающих слоев для лучшей защиты.\";}', NULL),
(701, 13, 61, 'a:2:{s:4:\"NAME\";s:63:\"Мелкомолекулярный суперабсорбент\";s:4:\"TEXT\";s:359:\"Ультратонкие прокладки Nuage выполнены из ультрасовременных материалов, что позволило создать многослойную конструкцию толщиной до 3 мм с мелкомолекулярным суперабсорбентом (превращается в гель).\";}', NULL),
(702, 13, 62, 'a:2:{s:4:\"NAME\";s:48:\"Ультратонкие и незаметные\";s:4:\"TEXT\";s:299:\"Ультратонкие прокладки Nuage разработаны с учетом анатомических особенностей женщины, поэтому Nuage остаются незаметными в любой ситуации. Nuage – защита без стеснения.\";}', NULL),
(708, 14, 68, 'Пишите нам', NULL),
(709, 14, 69, 'hello@nuage.su', NULL),
(710, 14, 70, 'Всегда рады ответить', NULL),
(711, 14, 71, 'АО \"ПФК ОБНОВЛЕНИЕ\" \"ВСЕ ПРАВА ЗАЩИЩЕНЫ\" (c) 2017', NULL),
(712, 13, 63, '351', ''),
(713, 13, 64, '352', ''),
(714, 13, 65, '353', ''),
(715, 13, 66, '354', ''),
(716, 13, 67, '355', ''),
(717, 12, 56, '349', 'Одобрено Российским обществом акушеров-гинекологов'),
(718, 12, 56, '348', 'Не содержит красителей и ароматизаторов'),
(719, 12, 56, '347', 'Сертифицировано ISO 9001'),
(720, 12, 56, '346', 'Производство и контроль качества по стандартам GMP'),
(721, 12, 57, '350', ''),
(722, 2, 3, 'a:3:{s:4:\"NAME\";s:24:\"Консультация\";s:3:\"URL\";s:14:\"/#consultation\";s:9:\"CSS_CLASS\";s:12:\"consultation\";}', NULL),
(723, 11, 45, 'a:3:{s:4:\"NAME\";s:16:\"Контакты\";s:3:\"URL\";s:10:\"/#contacts\";s:9:\"CSS_CLASS\";s:0:\"\";}', NULL);
-- -----------------------------------
-- Dumping table b_admin_notify
-- -----------------------------------
DROP TABLE IF EXISTS `b_admin_notify`;
CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_AD_TAG` (`TAG`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_admin_notify_lang
-- -----------------------------------
DROP TABLE IF EXISTS `b_admin_notify_lang`;
CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  KEY `IX_ADM_NTFY_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_agent
-- -----------------------------------
DROP TABLE IF EXISTS `b_agent`;
CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT 100,
  `NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT 86400,
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  KEY `ix_agent_user_id` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_agent` VALUES
(1, 'main', 100, 'CEvent::CleanUpAgent();', 'Y', '2021-09-03 10:57:02', '2021-09-04 00:00:00', NULL, 86400, 'Y', NULL, 'N'),
(2, 'main', 100, 'CUser::CleanUpHitAuthAgent();', 'Y', '2021-09-03 10:57:02', '2021-09-04 00:00:00', NULL, 86400, 'Y', NULL, 'N'),
(3, 'main', 100, 'CCaptchaAgent::DeleteOldCaptcha(3600);', 'Y', '2021-09-03 17:15:45', '2021-09-03 18:15:45', NULL, 3600, 'N', NULL, 'N'),
(4, 'main', 100, 'CUndo::CleanUpOld();', 'Y', '2021-09-03 10:57:02', '2021-09-04 00:00:00', NULL, 86400, 'Y', NULL, 'N'),
(5, 'main', 100, 'CSiteCheckerTest::CommonTest();', 'Y', '2021-09-03 15:53:45', '2021-09-04 15:53:45', NULL, 86400, 'N', NULL, 'N'),
(6, 'main', 100, '\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();', 'Y', '2021-09-03 17:39:22', '2021-09-03 17:40:22', NULL, 60, 'N', NULL, 'N'),
(7, 'search', 10, 'CSearchSuggest::CleanUpAgent();', 'Y', '2021-09-03 15:53:45', '2021-09-04 15:53:45', NULL, 86400, 'N', NULL, 'N'),
(8, 'search', 10, 'CSearchStatistic::CleanUpAgent();', 'Y', '2021-09-03 15:53:45', '2021-09-04 15:53:45', NULL, 86400, 'N', NULL, 'N'),
(9, 'seo', 100, 'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();', 'Y', '2021-09-03 17:15:45', '2021-09-03 18:15:45', NULL, 3600, 'N', NULL, 'N'),
(10, 'seo', 100, 'Bitrix\\Seo\\Adv\\LogTable::clean();', 'Y', '2021-09-03 15:53:45', '2021-09-04 15:53:45', NULL, 86400, 'N', NULL, 'N'),
(11, 'seo', 100, 'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();', 'Y', '2021-09-03 17:15:45', '2021-09-03 18:15:45', NULL, 3600, 'N', NULL, 'N'),
(25, 'main', 100, 'CEventLog::CleanUpAgent();', 'Y', '2021-09-03 15:53:45', '2021-09-04 15:53:45', NULL, 86400, 'N', NULL, 'N'),
(75, 'main', 100, 'CUser::AuthActionsCleanUpAgent();', 'Y', '2021-09-03 15:53:45', '2021-09-04 15:53:45', NULL, 86400, 'N', NULL, 'N');
-- -----------------------------------
-- Dumping table b_app_password
-- -----------------------------------
DROP TABLE IF EXISTS `b_app_password`;
CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_app_password_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_b24connector_buttons
-- -----------------------------------
DROP TABLE IF EXISTS `b_b24connector_buttons`;
CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_bitrixcloud_option
-- -----------------------------------
DROP TABLE IF EXISTS `b_bitrixcloud_option`;
CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_bitrixcloud_option_1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_bitrixcloud_option` VALUES
(4, 'monitoring_expire_time', 0, '0', '1630677527'),
(59, 'backup_quota', 0, '0', '0'),
(60, 'backup_total_size', 0, '0', '0'),
(61, 'backup_last_backup_time', 0, '0', '1596793924');
-- -----------------------------------
-- Dumping table b_cache_tag
-- -----------------------------------
DROP TABLE IF EXISTS `b_cache_tag`;
CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  KEY `ix_b_cache_tag_1` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_cache_tag` VALUES
(NULL, NULL, '0:1630679983', '**'),
('a1', '/e25', '/a1/bitrix/news.list/e25', 'iblock_id_10'),
('a1', '/e25', '/a1/bitrix/news.list/e25', 'iblock_id_9'),
('a1', '/e25', '/a1/bitrix/news.list/e25', 'iblock_id_12'),
('kf', '/7d1', '/kf/bitrix/news.detail/7d1', 'iblock_id_23');
-- -----------------------------------
-- Dumping table b_captcha
-- -----------------------------------
DROP TABLE IF EXISTS `b_captcha`;
CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  UNIQUE KEY `UX_B_CAPTCHA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_checklist
-- -----------------------------------
DROP TABLE IF EXISTS `b_checklist`;
CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_checklist` VALUES
(2, '10.10.2017 17:31:10', 'Даниленко Константин Евгеньевич', 'ООО \"Студия ЯЛ\"', NULL, 66, 66, 0, 0, NULL, 'a:66:{s:6:\"QD0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0030\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0040\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0050\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0060\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0070\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0080\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0090\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0100\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0110\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QD0120\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QM0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QM0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QS0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QS0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QS0030\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QS0040\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0030\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0040\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0050\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0060\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0070\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0080\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0090\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0100\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0110\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0120\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0130\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0140\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0150\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QC0160\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QE0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QE0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QE0030\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QE0040\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:8:\"QSEC0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:8:\"QSEC0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:8:\"QSEC0030\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:8:\"QSEC0040\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:8:\"QSEC0050\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:8:\"QSEC0060\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:8:\"QSEC0070\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:8:\"QSEC0080\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0030\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0040\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0050\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0060\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0070\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0080\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0090\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QP0100\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QH0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QH0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QH0030\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QH0040\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QH0050\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QH0060\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QJ0010\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QJ0020\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QJ0030\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}s:6:\"QJ0040\";a:2:{s:8:\"COMMENTS\";a:1:{s:8:\"PERFOMER\";s:18:\"Выполнено\";}s:6:\"STATUS\";s:1:\"A\";}}', NULL, 'Y', 'dke@yalstudio.ru', NULL, 'Y', 'N');
-- -----------------------------------
-- Dumping table b_clouds_file_bucket
-- -----------------------------------
DROP TABLE IF EXISTS `b_clouds_file_bucket`;
CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT 500,
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT 0,
  `FILE_SIZE` float DEFAULT 0,
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_RULES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_clouds_file_resize
-- -----------------------------------
DROP TABLE IF EXISTS `b_clouds_file_resize`;
CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  KEY `ix_b_file_resize_file` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_clouds_file_upload
-- -----------------------------------
DROP TABLE IF EXISTS `b_clouds_file_upload`;
CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_component_params
-- -----------------------------------
DROP TABLE IF EXISTS `b_component_params`;
CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_component_params` VALUES
(11, 's1', 'bitrix:menu', 'seo_menu', '/local/php_interface/page_parts/header.php', 'N', NULL, 1684, 2091, 'a:11:{s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";N;s:9:\"MAX_LEVEL\";s:1:\"2\";s:15:\"CHILD_MENU_TYPE\";s:7:\"submenu\";s:7:\"USE_EXT\";s:1:\"N\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:8:\"seo_menu\";}'),
(16, 's1', 'bitrix:menu', 'bottom_menu', '/local/php_interface/page_parts/footer.php', 'N', NULL, 984, 1393, 'a:11:{s:14:\"ROOT_MENU_TYPE\";s:6:\"bottom\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"Y\";s:19:\"MENU_CACHE_GET_VARS\";N;s:9:\"MAX_LEVEL\";s:1:\"1\";s:15:\"CHILD_MENU_TYPE\";s:0:\"\";s:7:\"USE_EXT\";s:1:\"N\";s:5:\"DELAY\";s:1:\"N\";s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:11:\"bottom_menu\";}'),
(64, 's1', 'bitrix:search.form', 'flat', '/local/templates/.default/components/bitrix/news/articles/news.php', 'N', NULL, 1065, 1224, 'a:1:{s:4:\"PAGE\";s:59:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"search\"]}\";}'),
(65, 's1', 'bitrix:catalog.filter', '', '/local/templates/.default/components/bitrix/news/articles/news.php', 'N', NULL, 1284, 1800, 'a:9:{s:11:\"IBLOCK_TYPE\";s:27:\"={$arParams[\"IBLOCK_TYPE\"]}\";s:9:\"IBLOCK_ID\";s:25:\"={$arParams[\"IBLOCK_ID\"]}\";s:11:\"FILTER_NAME\";s:27:\"={$arParams[\"FILTER_NAME\"]}\";s:10:\"FIELD_CODE\";s:33:\"={$arParams[\"FILTER_FIELD_CODE\"]}\";s:13:\"PROPERTY_CODE\";s:36:\"={$arParams[\"FILTER_PROPERTY_CODE\"]}\";s:10:\"CACHE_TYPE\";s:26:\"={$arParams[\"CACHE_TYPE\"]}\";s:10:\"CACHE_TIME\";s:26:\"={$arParams[\"CACHE_TIME\"]}\";s:12:\"CACHE_GROUPS\";s:28:\"={$arParams[\"CACHE_GROUPS\"]}\";s:17:\"PAGER_PARAMS_NAME\";s:33:\"={$arParams[\"PAGER_PARAMS_NAME\"]}\";}'),
(66, 's1', 'bitrix:news.list', '', '/local/templates/.default/components/bitrix/news/articles/news.php', 'N', NULL, 1823, 4343, 'a:46:{s:11:\"IBLOCK_TYPE\";s:27:\"={$arParams[\"IBLOCK_TYPE\"]}\";s:9:\"IBLOCK_ID\";s:25:\"={$arParams[\"IBLOCK_ID\"]}\";s:10:\"NEWS_COUNT\";s:26:\"={$arParams[\"NEWS_COUNT\"]}\";s:8:\"SORT_BY1\";s:24:\"={$arParams[\"SORT_BY1\"]}\";s:11:\"SORT_ORDER1\";s:27:\"={$arParams[\"SORT_ORDER1\"]}\";s:8:\"SORT_BY2\";s:24:\"={$arParams[\"SORT_BY2\"]}\";s:11:\"SORT_ORDER2\";s:27:\"={$arParams[\"SORT_ORDER2\"]}\";s:10:\"FIELD_CODE\";s:31:\"={$arParams[\"LIST_FIELD_CODE\"]}\";s:13:\"PROPERTY_CODE\";s:34:\"={$arParams[\"LIST_PROPERTY_CODE\"]}\";s:10:\"DETAIL_URL\";s:59:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"detail\"]}\";s:11:\"SECTION_URL\";s:60:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"section\"]}\";s:10:\"IBLOCK_URL\";s:57:\"={$arResult[\"FOLDER\"].$arResult[\"URL_TEMPLATES\"][\"news\"]}\";s:13:\"DISPLAY_PANEL\";s:29:\"={$arParams[\"DISPLAY_PANEL\"]}\";s:9:\"SET_TITLE\";s:25:\"={$arParams[\"SET_TITLE\"]}\";s:17:\"SET_LAST_MODIFIED\";s:33:\"={$arParams[\"SET_LAST_MODIFIED\"]}\";s:11:\"MESSAGE_404\";s:27:\"={$arParams[\"MESSAGE_404\"]}\";s:14:\"SET_STATUS_404\";s:30:\"={$arParams[\"SET_STATUS_404\"]}\";s:8:\"SHOW_404\";s:24:\"={$arParams[\"SHOW_404\"]}\";s:8:\"FILE_404\";s:24:\"={$arParams[\"FILE_404\"]}\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:41:\"={$arParams[\"INCLUDE_IBLOCK_INTO_CHAIN\"]}\";s:10:\"CACHE_TYPE\";s:26:\"={$arParams[\"CACHE_TYPE\"]}\";s:10:\"CACHE_TIME\";s:26:\"={$arParams[\"CACHE_TIME\"]}\";s:12:\"CACHE_FILTER\";s:28:\"={$arParams[\"CACHE_FILTER\"]}\";s:12:\"CACHE_GROUPS\";s:28:\"={$arParams[\"CACHE_GROUPS\"]}\";s:17:\"DISPLAY_TOP_PAGER\";s:33:\"={$arParams[\"DISPLAY_TOP_PAGER\"]}\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:36:\"={$arParams[\"DISPLAY_BOTTOM_PAGER\"]}\";s:11:\"PAGER_TITLE\";s:27:\"={$arParams[\"PAGER_TITLE\"]}\";s:14:\"PAGER_TEMPLATE\";s:30:\"={$arParams[\"PAGER_TEMPLATE\"]}\";s:17:\"PAGER_SHOW_ALWAYS\";s:33:\"={$arParams[\"PAGER_SHOW_ALWAYS\"]}\";s:20:\"PAGER_DESC_NUMBERING\";s:36:\"={$arParams[\"PAGER_DESC_NUMBERING\"]}\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:47:\"={$arParams[\"PAGER_DESC_NUMBERING_CACHE_TIME\"]}\";s:14:\"PAGER_SHOW_ALL\";s:30:\"={$arParams[\"PAGER_SHOW_ALL\"]}\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:38:\"={$arParams[\"PAGER_BASE_LINK_ENABLE\"]}\";s:15:\"PAGER_BASE_LINK\";s:31:\"={$arParams[\"PAGER_BASE_LINK\"]}\";s:17:\"PAGER_PARAMS_NAME\";s:33:\"={$arParams[\"PAGER_PARAMS_NAME\"]}\";s:12:\"DISPLAY_DATE\";s:28:\"={$arParams[\"DISPLAY_DATE\"]}\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:31:\"={$arParams[\"DISPLAY_PICTURE\"]}\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:36:\"={$arParams[\"DISPLAY_PREVIEW_TEXT\"]}\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:36:\"={$arParams[\"PREVIEW_TRUNCATE_LEN\"]}\";s:18:\"ACTIVE_DATE_FORMAT\";s:39:\"={$arParams[\"LIST_ACTIVE_DATE_FORMAT\"]}\";s:15:\"USE_PERMISSIONS\";s:31:\"={$arParams[\"USE_PERMISSIONS\"]}\";s:17:\"GROUP_PERMISSIONS\";s:33:\"={$arParams[\"GROUP_PERMISSIONS\"]}\";s:11:\"FILTER_NAME\";s:27:\"={$arParams[\"FILTER_NAME\"]}\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:40:\"={$arParams[\"HIDE_LINK_WHEN_NO_DETAIL\"]}\";s:11:\"CHECK_DATES\";s:27:\"={$arParams[\"CHECK_DATES\"]}\";}'),
(73, 's1', 'bitrix:news', 'articles', '/stati/index.php', 'N', NULL, 137, 2455, 'a:70:{s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:9:\"IBLOCK_ID\";s:1:\"2\";s:10:\"NEWS_COUNT\";s:1:\"8\";s:10:\"USE_SEARCH\";s:1:\"N\";s:7:\"USE_RSS\";s:1:\"N\";s:10:\"USE_RATING\";s:1:\"N\";s:14:\"USE_CATEGORIES\";s:1:\"N\";s:10:\"USE_REVIEW\";s:1:\"N\";s:10:\"USE_FILTER\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:8:\"SEF_MODE\";s:1:\"N\";s:10:\"SEF_FOLDER\";s:0:\"\";s:9:\"AJAX_MODE\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:11:\"CACHE_NOTES\";s:0:\"\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"Y\";s:9:\"SET_TITLE\";s:1:\"Y\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:17:\"ADD_ELEMENT_CHAIN\";s:1:\"N\";s:15:\"USE_PERMISSIONS\";s:1:\"N\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:23:\"LIST_ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:15:\"LIST_FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:18:\"LIST_PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:13:\"META_KEYWORDS\";s:1:\"-\";s:16:\"META_DESCRIPTION\";s:1:\"-\";s:13:\"BROWSER_TITLE\";s:1:\"-\";s:25:\"DETAIL_ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:17:\"DETAIL_FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:20:\"DETAIL_PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"DETAIL_DISPLAY_TOP_PAGER\";s:1:\"N\";s:27:\"DETAIL_DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:18:\"DETAIL_PAGER_TITLE\";s:16:\"Страница\";s:21:\"DETAIL_PAGER_TEMPLATE\";s:0:\"\";s:21:\"DETAIL_PAGER_SHOW_ALL\";s:1:\"Y\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:8:\"articles\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:9:\"USE_SHARE\";s:1:\"N\";s:24:\"DETAIL_SET_CANONICAL_URL\";s:1:\"N\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:8:\"FILE_404\";s:0:\"\";s:16:\"VARIABLE_ALIASES\";a:2:{s:10:\"SECTION_ID\";s:10:\"SECTION_ID\";s:10:\"ELEMENT_ID\";s:10:\"ELEMENT_ID\";}}'),
(103, 's1', 'bitrix:main.include', '.default', '/local/templates/renewal-common/header.php', 'N', NULL, 802, 1275, 'a:5:{s:14:\"AREA_FILE_SHOW\";s:4:\"page\";s:16:\"AREA_FILE_SUFFIX\";s:10:\"banner_inc\";s:19:\"AREA_FILE_RECURSIVE\";s:1:\"Y\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";}'),
(104, 's1', 'bitrix:breadcrumb', 'breadcrumbs', '/local/templates/renewal-common/header.php', 'N', NULL, 1418, 1611, 'a:4:{s:10:\"START_FROM\";s:1:\"0\";s:4:\"PATH\";s:0:\"\";s:7:\"SITE_ID\";s:2:\"s1\";s:18:\"COMPONENT_TEMPLATE\";s:11:\"breadcrumbs\";}'),
(257, 's1', 'bitrix:search.tags.input', '', '/local/templates/.default/components/bitrix/iblock.element.add.form/reviews_form/template.php', 'N', NULL, 4304, 4655, 'a:3:{s:5:\"VALUE\";s:36:\"={$arResult[\"ELEMENT\"][$propertyID]}\";s:4:\"NAME\";s:33:\"={\"PROPERTY[\".$propertyID.\"][0]\"}\";s:4:\"TEXT\";s:73:\"={\"size=\"\".$arResult[\"PROPERTY_LIST_FULL\"][$propertyID][\"COL_COUNT\"].\"\"\"}\";}'),
(258, 's1', 'bitrix:main.calendar', '', '/local/templates/.default/components/bitrix/iblock.element.add.form/reviews_form/template.php', 'N', NULL, 8612, 8926, 'a:3:{s:9:\"FORM_NAME\";s:10:\"iblock_add\";s:10:\"INPUT_NAME\";s:38:\"={\"PROPERTY[\".$propertyID.\"][\".$i.\"]\"}\";s:11:\"INPUT_VALUE\";s:9:\"={$value}\";}'),
(267, 's1', 'bitrix:iblock.element.add.form', 'questions_form', '/local/php_interface/page_parts/hidden.php', 'N', NULL, 29, 1268, 'a:31:{s:29:\"CUSTOM_TITLE_DATE_ACTIVE_FROM\";s:0:\"\";s:27:\"CUSTOM_TITLE_DATE_ACTIVE_TO\";s:0:\"\";s:27:\"CUSTOM_TITLE_DETAIL_PICTURE\";s:0:\"\";s:24:\"CUSTOM_TITLE_DETAIL_TEXT\";s:0:\"\";s:27:\"CUSTOM_TITLE_IBLOCK_SECTION\";s:0:\"\";s:17:\"CUSTOM_TITLE_NAME\";s:0:\"\";s:28:\"CUSTOM_TITLE_PREVIEW_PICTURE\";s:0:\"\";s:25:\"CUSTOM_TITLE_PREVIEW_TEXT\";s:0:\"\";s:17:\"CUSTOM_TITLE_TAGS\";s:0:\"\";s:18:\"DEFAULT_INPUT_SIZE\";s:2:\"30\";s:27:\"DETAIL_TEXT_USE_HTML_EDITOR\";s:1:\"N\";s:13:\"ELEMENT_ASSOC\";s:10:\"CREATED_BY\";s:6:\"GROUPS\";a:1:{i:0;s:1:\"2\";}s:9:\"IBLOCK_ID\";s:1:\"6\";s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:10:\"LEVEL_LAST\";s:1:\"N\";s:8:\"LIST_URL\";s:0:\"\";s:13:\"MAX_FILE_SIZE\";s:1:\"0\";s:10:\"MAX_LEVELS\";s:6:\"100000\";s:16:\"MAX_USER_ENTRIES\";s:6:\"100000\";s:28:\"PREVIEW_TEXT_USE_HTML_EDITOR\";s:1:\"N\";s:14:\"PROPERTY_CODES\";a:4:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:4:\"NAME\";i:3;s:12:\"PREVIEW_TEXT\";}s:23:\"PROPERTY_CODES_REQUIRED\";a:4:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:4:\"NAME\";i:3;s:12:\"PREVIEW_TEXT\";}s:13:\"RESIZE_IMAGES\";s:1:\"N\";s:8:\"SEF_MODE\";s:1:\"N\";s:6:\"STATUS\";s:8:\"INACTIVE\";s:10:\"STATUS_NEW\";s:3:\"ANY\";s:16:\"USER_MESSAGE_ADD\";s:0:\"\";s:17:\"USER_MESSAGE_EDIT\";s:0:\"\";s:11:\"USE_CAPTCHA\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:14:\"questions_form\";}'),
(333, 's1', 'bitrix:iblock.element.add.form', 'questions_form', '/questions/index.php', 'N', NULL, 207, 1420, 'a:31:{s:29:\"CUSTOM_TITLE_DATE_ACTIVE_FROM\";s:0:\"\";s:27:\"CUSTOM_TITLE_DATE_ACTIVE_TO\";s:0:\"\";s:27:\"CUSTOM_TITLE_DETAIL_PICTURE\";s:0:\"\";s:24:\"CUSTOM_TITLE_DETAIL_TEXT\";s:0:\"\";s:27:\"CUSTOM_TITLE_IBLOCK_SECTION\";s:0:\"\";s:17:\"CUSTOM_TITLE_NAME\";s:0:\"\";s:28:\"CUSTOM_TITLE_PREVIEW_PICTURE\";s:0:\"\";s:25:\"CUSTOM_TITLE_PREVIEW_TEXT\";s:0:\"\";s:17:\"CUSTOM_TITLE_TAGS\";s:0:\"\";s:18:\"DEFAULT_INPUT_SIZE\";s:2:\"30\";s:27:\"DETAIL_TEXT_USE_HTML_EDITOR\";s:1:\"N\";s:13:\"ELEMENT_ASSOC\";s:10:\"CREATED_BY\";s:6:\"GROUPS\";a:1:{i:0;s:1:\"2\";}s:9:\"IBLOCK_ID\";s:1:\"6\";s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:10:\"LEVEL_LAST\";s:1:\"N\";s:8:\"LIST_URL\";s:0:\"\";s:13:\"MAX_FILE_SIZE\";s:1:\"0\";s:10:\"MAX_LEVELS\";s:6:\"100000\";s:16:\"MAX_USER_ENTRIES\";s:6:\"100000\";s:28:\"PREVIEW_TEXT_USE_HTML_EDITOR\";s:1:\"N\";s:14:\"PROPERTY_CODES\";a:3:{i:0;s:1:\"4\";i:1;s:4:\"NAME\";i:2;s:12:\"PREVIEW_TEXT\";}s:23:\"PROPERTY_CODES_REQUIRED\";a:3:{i:0;s:1:\"4\";i:1;s:4:\"NAME\";i:2;s:12:\"PREVIEW_TEXT\";}s:13:\"RESIZE_IMAGES\";s:1:\"N\";s:8:\"SEF_MODE\";s:1:\"N\";s:6:\"STATUS\";s:8:\"INACTIVE\";s:10:\"STATUS_NEW\";s:3:\"ANY\";s:16:\"USER_MESSAGE_ADD\";s:0:\"\";s:17:\"USER_MESSAGE_EDIT\";s:0:\"\";s:11:\"USE_CAPTCHA\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:14:\"questions_form\";}'),
(334, 's1', 'bitrix:news.list', 'questions', '/questions/index.php', 'N', NULL, 1443, 4071, 'a:53:{s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:9:\"IBLOCK_ID\";s:1:\"6\";s:10:\"NEWS_COUNT\";s:4:\"9999\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:11:\"FILTER_NAME\";s:0:\"\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:13:\"PROPERTY_CODE\";a:3:{i:0;s:11:\"ANSWER_DATE\";i:1;s:10:\"SPECIALIST\";i:2;s:0:\"\";}s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:9:\"AJAX_MODE\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:11:\"CACHE_NOTES\";s:0:\"\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:9:\"SET_TITLE\";s:1:\"Y\";s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"Y\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:11:\"PAGER_TITLE\";s:0:\"\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:9:\"questions\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"N\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"Y\";s:8:\"FILE_404\";s:0:\"\";}'),
(341, 's1', 'bitrix:iblock.element.add.form', 'reviews_form', '/reviews/index.php', 'N', NULL, 197, 1437, 'a:31:{s:29:\"CUSTOM_TITLE_DATE_ACTIVE_FROM\";s:0:\"\";s:27:\"CUSTOM_TITLE_DATE_ACTIVE_TO\";s:0:\"\";s:27:\"CUSTOM_TITLE_DETAIL_PICTURE\";s:0:\"\";s:24:\"CUSTOM_TITLE_DETAIL_TEXT\";s:17:\"Ваш отзыв\";s:27:\"CUSTOM_TITLE_IBLOCK_SECTION\";s:0:\"\";s:17:\"CUSTOM_TITLE_NAME\";s:15:\"Ваше имя\";s:28:\"CUSTOM_TITLE_PREVIEW_PICTURE\";s:0:\"\";s:25:\"CUSTOM_TITLE_PREVIEW_TEXT\";s:0:\"\";s:17:\"CUSTOM_TITLE_TAGS\";s:0:\"\";s:18:\"DEFAULT_INPUT_SIZE\";s:2:\"30\";s:27:\"DETAIL_TEXT_USE_HTML_EDITOR\";s:1:\"N\";s:13:\"ELEMENT_ASSOC\";s:10:\"CREATED_BY\";s:6:\"GROUPS\";a:1:{i:0;s:1:\"2\";}s:9:\"IBLOCK_ID\";s:1:\"5\";s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:10:\"LEVEL_LAST\";s:1:\"N\";s:8:\"LIST_URL\";s:0:\"\";s:13:\"MAX_FILE_SIZE\";s:1:\"0\";s:10:\"MAX_LEVELS\";s:6:\"100000\";s:16:\"MAX_USER_ENTRIES\";s:6:\"100000\";s:28:\"PREVIEW_TEXT_USE_HTML_EDITOR\";s:1:\"N\";s:14:\"PROPERTY_CODES\";a:5:{i:0;s:1:\"3\";i:1;s:1:\"7\";i:2;s:1:\"8\";i:3;s:4:\"NAME\";i:4;s:11:\"DETAIL_TEXT\";}s:23:\"PROPERTY_CODES_REQUIRED\";a:3:{i:0;s:1:\"3\";i:1;s:1:\"7\";i:2;s:4:\"NAME\";}s:13:\"RESIZE_IMAGES\";s:1:\"N\";s:8:\"SEF_MODE\";s:1:\"N\";s:6:\"STATUS\";s:8:\"INACTIVE\";s:10:\"STATUS_NEW\";s:3:\"ANY\";s:16:\"USER_MESSAGE_ADD\";s:0:\"\";s:17:\"USER_MESSAGE_EDIT\";s:0:\"\";s:11:\"USE_CAPTCHA\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:12:\"reviews_form\";}'),
(342, 's1', 'bitrix:news.list', 'reviews', '/reviews/index.php', 'N', NULL, 1452, 3901, 'a:53:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:11:\"CACHE_NOTES\";s:0:\"\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:18:\"COMPONENT_TEMPLATE\";s:7:\"reviews\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"5\";s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:4:\"9999\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"Y\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),
(343, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 361, 823, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:25:\"include_areas/screen1.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(344, 's1', 'bitrix:news.list', 'solutions', '/index.php', 'N', NULL, 1454, 5327, 'a:53:{s:11:\"IBLOCK_TYPE\";s:1:\"-\";s:9:\"IBLOCK_ID\";s:1:\"4\";s:10:\"NEWS_COUNT\";s:1:\"5\";s:8:\"SORT_BY1\";s:7:\"section\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:11:\"FILTER_NAME\";s:0:\"\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:9:\"AJAX_MODE\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:11:\"CACHE_NOTES\";s:0:\"\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:9:\"SET_TITLE\";s:1:\"Y\";s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:14:\"PARENT_SECTION\";s:1:\"1\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:11:\"PAGER_TITLE\";s:0:\"\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:14:\"facts_solution\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"N\";s:11:\"MESSAGE_404\";s:0:\"\";}'),
(345, 's1', 'bitrix:news.list', 'solutions', '/index.php', 'N', NULL, 5958, 9831, 'a:53:{s:11:\"IBLOCK_TYPE\";s:1:\"-\";s:9:\"IBLOCK_ID\";s:1:\"4\";s:10:\"NEWS_COUNT\";s:1:\"5\";s:8:\"SORT_BY1\";s:7:\"section\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:11:\"FILTER_NAME\";s:0:\"\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:9:\"AJAX_MODE\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:11:\"CACHE_NOTES\";s:0:\"\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:9:\"SET_TITLE\";s:1:\"Y\";s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:14:\"PARENT_SECTION\";s:1:\"2\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:11:\"PAGER_TITLE\";s:0:\"\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:14:\"facts_solution\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"N\";s:11:\"MESSAGE_404\";s:0:\"\";}'),
(346, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 10663, 11130, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:30:\"include_areas/screen3_main.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(347, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 11386, 11895, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:32:\"include_areas/screen3_bottom.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(348, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 12970, 13598, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:31:\"include_areas/screen4_item1.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(349, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 14306, 14934, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:31:\"include_areas/screen4_item2.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(350, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 15642, 16270, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:31:\"include_areas/screen4_item3.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(351, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 16978, 17606, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:31:\"include_areas/screen4_item4.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(352, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 18314, 18942, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:31:\"include_areas/screen4_item5.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(353, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 19555, 20019, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:27:\"include_areas/section_5.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(354, 's1', 'bitrix:news.list', 'slider', '/index.php', 'N', NULL, 20753, 22430, 'a:53:{s:11:\"IBLOCK_TYPE\";s:5:\"index\";s:9:\"IBLOCK_ID\";s:1:\"7\";s:10:\"NEWS_COUNT\";s:1:\"8\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:11:\"FILTER_NAME\";s:0:\"\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:13:\"PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:9:\"AJAX_MODE\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:11:\"CACHE_NOTES\";s:0:\"\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:9:\"SET_TITLE\";s:1:\"N\";s:17:\"SET_BROWSER_TITLE\";s:1:\"N\";s:17:\"SET_META_KEYWORDS\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"N\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:11:\"PAGER_TITLE\";s:12:\"Слайды\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:6:\"slider\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"N\";s:12:\"DISPLAY_NAME\";s:1:\"N\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"N\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"N\";s:11:\"MESSAGE_404\";s:0:\"\";}'),
(355, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 22576, 23158, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:25:\"include_areas/screen6.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(356, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 23624, 24128, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:27:\"include_areas/section_7.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(357, 's1', 'bitrix:main.include', '.default', '/index.php', 'N', NULL, 24461, 24925, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:4:\"PATH\";s:27:\"include_areas/section_8.php\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(360, 's1', 'bitrix:main.map', 'site_map', '/site-map/index.php', 'N', NULL, 107, 393, 'a:8:{s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"CACHE_TIME\";s:4:\"3600\";s:11:\"CACHE_NOTES\";s:0:\"\";s:9:\"SET_TITLE\";s:1:\"Y\";s:5:\"LEVEL\";s:1:\"3\";s:7:\"COL_NUM\";s:1:\"1\";s:16:\"SHOW_DESCRIPTION\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:8:\"site_map\";}'),
(368, 's1', 'bitrix:news', 'articles', '/articles/index.php', 'Y', '/articles/', 214, 2583, 'a:70:{s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:9:\"IBLOCK_ID\";s:1:\"2\";s:10:\"NEWS_COUNT\";s:1:\"8\";s:10:\"USE_SEARCH\";s:1:\"N\";s:7:\"USE_RSS\";s:1:\"N\";s:10:\"USE_RATING\";s:1:\"N\";s:14:\"USE_CATEGORIES\";s:1:\"N\";s:10:\"USE_REVIEW\";s:1:\"N\";s:10:\"USE_FILTER\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:8:\"SEF_MODE\";s:1:\"Y\";s:10:\"SEF_FOLDER\";s:10:\"/articles/\";s:9:\"AJAX_MODE\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:11:\"CACHE_NOTES\";s:0:\"\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"Y\";s:9:\"SET_TITLE\";s:1:\"Y\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:17:\"ADD_ELEMENT_CHAIN\";s:1:\"Y\";s:15:\"USE_PERMISSIONS\";s:1:\"N\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:23:\"LIST_ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:15:\"LIST_FIELD_CODE\";a:3:{i:0;s:0:\"\";i:1;s:23:\"PROPERTY_ADDITIONAL_IMG\";i:2;s:0:\"\";}s:18:\"LIST_PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:13:\"META_KEYWORDS\";s:1:\"-\";s:16:\"META_DESCRIPTION\";s:1:\"-\";s:13:\"BROWSER_TITLE\";s:1:\"-\";s:25:\"DETAIL_ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:17:\"DETAIL_FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:20:\"DETAIL_PROPERTY_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"DETAIL_DISPLAY_TOP_PAGER\";s:1:\"N\";s:27:\"DETAIL_DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:18:\"DETAIL_PAGER_TITLE\";s:16:\"Страница\";s:21:\"DETAIL_PAGER_TEMPLATE\";s:0:\"\";s:21:\"DETAIL_PAGER_SHOW_ALL\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:8:\"articles\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:9:\"USE_SHARE\";s:1:\"N\";s:24:\"DETAIL_SET_CANONICAL_URL\";s:1:\"N\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:8:\"SHOW_404\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:8:\"FILE_404\";s:0:\"\";s:17:\"SEF_URL_TEMPLATES\";a:3:{s:4:\"news\";s:0:\"\";s:7:\"section\";s:0:\"\";s:6:\"detail\";s:15:\"#ELEMENT_CODE#/\";}}'),
(370, 'a1', 'alse:iblockelement.form.ajax', 'feedback', '/test.php', 'N', NULL, 92, 1954, 'a:26:{s:30:\"ATTACHMENT_EVENT_FILE_PROPERTY\";s:1:\"Y\";s:18:\"ERROR_EMAIL_FORMAT\";s:42:\"Некорректный адрес e-mail\";s:20:\"ERROR_PERSON_CONFIRM\";s:108:\"Необходимо ваше согласие на обработку персональных данных\";s:14:\"ERROR_REQUIRED\";s:44:\"Обязательное поле «#NAME#»\";s:23:\"ERROR_REQUIRED_BIRTHDAY\";s:0:\"\";s:19:\"ERROR_REQUIRED_CITY\";s:0:\"\";s:20:\"ERROR_REQUIRED_EMAIL\";s:0:\"\";s:19:\"ERROR_REQUIRED_NAME\";s:0:\"\";s:20:\"ERROR_REQUIRED_PHONE\";s:0:\"\";s:19:\"ERROR_REQUIRED_TEXT\";s:0:\"\";s:19:\"ERROR_REQUIRED_THEM\";s:0:\"\";s:16:\"EVENT_MESSAGE_ID\";s:2:\"15\";s:28:\"EVENT_MESSAGE_SEND_IMMEDIATE\";s:1:\"Y\";s:9:\"IBLOCK_ID\";s:2:\"11\";s:11:\"IBLOCK_TYPE\";s:5:\"forms\";s:14:\"PERSON_CONFIRM\";s:1:\"Y\";s:13:\"PROPERTY_CODE\";a:7:{i:0;s:5:\"EMAIL\";i:1;s:4:\"CITY\";i:2;s:8:\"BIRTHDAY\";i:3;s:4:\"TEXT\";i:4;s:5:\"PHONE\";i:5;s:4:\"THEM\";i:6;s:4:\"NAME\";}s:22:\"PROPERTY_NAME_BIRTHDAY\";s:25:\"Дата рождения\";s:18:\"PROPERTY_NAME_CITY\";s:10:\"Город\";s:19:\"PROPERTY_NAME_EMAIL\";s:6:\"E-mail\";s:18:\"PROPERTY_NAME_NAME\";s:6:\"ФИО\";s:19:\"PROPERTY_NAME_PHONE\";s:14:\"Телефон\";s:18:\"PROPERTY_NAME_TEXT\";s:29:\"Текст обращения\";s:18:\"PROPERTY_NAME_THEM\";s:27:\"Тема обращения\";s:22:\"REQUIRED_PROPERTY_CODE\";a:3:{i:0;s:4:\"TEXT\";i:1;s:5:\"PHONE\";i:2;s:4:\"NAME\";}s:11:\"SUCCESS_MSG\";s:33:\"Заявка отправлена\";}'),
(371, 'a1', 'alse:template.logic', 'section_main', '/.includes/index.php', 'N', NULL, 78, 182, 's:5:\"={[]}\";'),
(372, 'a1', 'alse:template.logic', 'section_advantages', '/.includes/index.php', 'N', NULL, 184, 294, 's:5:\"={[]}\";'),
(373, 'a1', 'medias:assortment', 'm_nuage', '/.includes/index.php', 'N', NULL, 296, 765, 's:26:\"={[\"IBLOCK_TYPE\"=>\"nuage\"}\";'),
(374, 'a1', 'alse:template.logic', 'section_mission', '/.includes/index.php', 'N', NULL, 767, 874, 's:5:\"={[]}\";'),
(375, 'a1', 'alse:template.logic', 'section_faq_and_reviews', '/.includes/index.php', 'N', NULL, 876, 991, 's:5:\"={[]}\";'),
(376, 'a1', 'alse:template.logic', 'section_map', '/.includes/index.php', 'N', NULL, 993, 1096, 's:5:\"={[]}\";'),
(377, 'a1', 'alse:template.logic', 'section_consultation', '/.includes/index.php', 'N', NULL, 1098, 1210, 's:5:\"={[]}\";'),
(382, 'a1', 'alse:template.logic', 'seo_js', '/local/templates/nuage/header.php', 'N', NULL, 2472, 2591, 's:25:\"={[\"FIELD_CODE\"=>\"HEAD\"]}\";'),
(383, 'a1', 'alse:template.logic', 'seo_js', '/local/templates/nuage/header.php', 'N', NULL, 2616, 2735, 's:25:\"={[\"FIELD_CODE\"=>\"BODY\"]}\";'),
(384, 'a1', 'alse:template.logic', 'loader', '/local/templates/nuage/header.php', 'N', NULL, 2825, 2924, 's:5:\"={[]}\";'),
(385, 'a1', 'alse:template.logic', 'menu', '/local/templates/nuage/header.php', 'N', NULL, 2991, 3090, 's:5:\"={[]}\";'),
(387, 'a1', 'alse:template.logic', 'mobile_footer', '/local/templates/mobile/footer.php', 'N', NULL, 235, 386, 's:5:\"={[]}\";');
-- -----------------------------------
-- Dumping table b_composite_log
-- -----------------------------------
DROP TABLE IF EXISTS `b_composite_log`;
CREATE TABLE `b_composite_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT 0,
  `PAGE_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_composite_page
-- -----------------------------------
DROP TABLE IF EXISTS `b_composite_page`;
CREATE TABLE `b_composite_page` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT 0,
  `REWRITES` int(18) NOT NULL DEFAULT 0,
  `SIZE` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_consent_agreement
-- -----------------------------------
DROP TABLE IF EXISTS `b_consent_agreement`;
CREATE TABLE `b_consent_agreement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_consent_field
-- -----------------------------------
DROP TABLE IF EXISTS `b_consent_field`;
CREATE TABLE `b_consent_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_consent_user_consent
-- -----------------------------------
DROP TABLE IF EXISTS `b_consent_user_consent`;
CREATE TABLE `b_consent_user_consent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_counter_data
-- -----------------------------------
DROP TABLE IF EXISTS `b_counter_data`;
CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_culture
-- -----------------------------------
DROP TABLE IF EXISTS `b_culture`;
CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT 1,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_culture` VALUES
(1, 'ru', 'ru', 'DD.MM.YYYY', 'DD.MM.YYYY HH:MI:SS', '#NAME# #LAST_NAME#', 1, 'UTF-8', 'Y'),
(2, 'en', 'en', 'MM/DD/YYYY', 'MM/DD/YYYY H:MI:SS T', '#NAME# #LAST_NAME#', 0, 'UTF-8', 'Y');
-- -----------------------------------
-- Dumping table b_event
-- -----------------------------------
DROP TABLE IF EXISTS `b_event`;
CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_success` (`SUCCESS_EXEC`),
  KEY `ix_b_event_date_exec` (`DATE_EXEC`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_event_attachment
-- -----------------------------------
DROP TABLE IF EXISTS `b_event_attachment`;
CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`EVENT_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_event_log
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_event_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  KEY `ix_b_event_log_audit_type` (`AUDIT_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3095 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_event_message
-- -----------------------------------
DROP TABLE IF EXISTS `b_event_message`;
CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_event_message` VALUES
(1, '2018-07-10 14:01:03', 'NEW_USER', NULL, 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', '#SITE_NAME#: Зарегистрировался новый пользователь', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(2, '2018-07-10 14:01:03', 'USER_INFO', NULL, 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Регистрационная информация', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(3, '2018-07-10 14:01:03', 'USER_PASS_REQUEST', NULL, 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Запрос на смену пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(4, '2018-07-10 14:01:03', 'USER_PASS_CHANGED', NULL, 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение смены пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(5, '2018-07-10 14:01:03', 'NEW_USER_CONFIRM', NULL, 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение регистрации нового пользователя', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(6, '2018-07-10 14:01:03', 'USER_INVITE', NULL, 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Приглашение на сайт', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(7, '2020-08-03 14:14:45', 'FEEDBACK_FORM', 'a1', 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', '#SITE_NAME#: Сообщение из формы обратной связи', 'Информационное сообщение сайта #SITE_NAME#\r\n------------------------------------------\r\n\r\nВам было отправлено сообщение через форму обратной связи\r\n\r\nАвтор: #AUTHOR#\r\nE-mail автора: #AUTHOR_EMAIL#\r\n\r\nТекст сообщения:\r\n#TEXT#\r\n\r\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\r\n\r\n------------------------------------------\r\n\r\nВам было отправлено сообщение через форму обратной связи\r\n\r\nАвтор: <?=$arParams[\"AUTHOR\"];?>\r\n\r\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\r\n\r\n\r\nТекст сообщения:\r\n<?=$arParams[\"TEXT\"];?>\r\n\r\n\r\nСообщение сгенерировано автоматически.', 'text', '', '', '', '', '', NULL, NULL, NULL, NULL, '', 'a:0:{}', 'ru'),
(9, '2019-12-02 23:26:35', 'FEEDBACK_FORM', NULL, 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', 'Новый отзыв с сайта #SITE_NAME#', 'Новый отзыв с сайта #SITE_NAME#\r\n------------------------------------------\r\nАвтор: #AUTHOR#\r\nE-mail автора: #AUTHOR_EMAIL#\r\n\r\nТекст сообщения:\r\n#TEXT#', 'Новый отзыв с сайта <?=$arParams[\"SITE_NAME\"];?>\r\n\r\n------------------------------------------\r\nАвтор: <?=$arParams[\"AUTHOR\"];?>\r\n\r\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\r\n\r\n\r\nТекст сообщения:\r\n<?=$arParams[\"TEXT\"];?>', 'text', '', '', '', '', '', NULL, NULL, NULL, NULL, '', 'a:0:{}', ''),
(10, '2020-08-03 14:15:06', 'NEW_REVIEW', 'a1', 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', 'Новый отзыв с сайта #SITE_NAME#', 'Новый отзыв с сайта #SITE_NAME#\r\n------------------------------------------\r\nИмя клиента: #NAME#\r\nВозраст клиента: #PROP_AGE#\r\nГород клиента: #PROP_CITY#\r\n\r\nТекст отзыва:\r\n#COMMENT#\r\n', 'Новый отзыв с сайта <?=$arParams[\"SITE_NAME\"];?>\r\n\r\n------------------------------------------\r\nИмя клиента: <?=$arParams[\"NAME\"];?>\r\n\r\nВозраст клиента: <?=$arParams[\"PROP_AGE\"];?>\r\n\r\nГород клиента: <?=$arParams[\"PROP_CITY\"];?>\r\n\r\n\r\nТекст отзыва:\r\n<?=$arParams[\"COMMENT\"];?>\r\n\r\n', 'text', '', '', '', '', '', NULL, NULL, NULL, NULL, '', 'a:0:{}', ''),
(11, '2020-08-03 14:15:14', 'NEW_QUESTION', 'a1', 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', 'Новый вопрос с сайта #SITE_NAME#', 'Новый вопрос с сайта #SITE_NAME#\r\n------------------------------------------\r\nИмя клиента: #NAME#\r\nEmal клиента: #PROP_MAIL#\r\n\r\nТекст вопроса:\r\n#COMMENT#\r\n', 'Новый вопрос с сайта <?=$arParams[\"SITE_NAME\"];?>\r\n\r\n------------------------------------------\r\nИмя клиента: <?=$arParams[\"NAME\"];?>\r\n\r\nEmal клиента: <?=$arParams[\"PROP_MAIL\"];?>\r\n\r\n\r\nТекст вопроса:\r\n<?=$arParams[\"COMMENT\"];?>\r\n\r\n', 'text', '', '', '', '', '', NULL, NULL, NULL, NULL, '', 'a:0:{}', ''),
(13, '2018-07-10 14:01:03', 'MAIN_MAIL_CONFIRM_CODE', NULL, 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#MESSAGE_SUBJECT#', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_join', NULL, NULL),
(14, '2018-11-30 14:51:23', 'NUAGE_FEEDBACK', 'a1', 'Y', '#EMAIL#', '#DEFAULT_EMAIL_FROM#', '#SITE_NAME# FEEDBACK FORM', '#FIO#\r\n#EMAIL#\r\n#CITY#\r\n#PHONE#\r\n#BIRTH_DATE#\r\n#MESS_THEME#\r\n#MESS#', '<?=$arParams[\"FIO\"];?>\r\n\r\n<?=$arParams[\"EMAIL\"];?>\r\n\r\n<?=$arParams[\"CITY\"];?>\r\n\r\n<?=$arParams[\"PHONE\"];?>\r\n\r\n<?=$arParams[\"BIRTH_DATE\"];?>\r\n\r\n<?=$arParams[\"MESS_THEME\"];?>\r\n\r\n<?=$arParams[\"MESS\"];?>', 'text', '', '', '#EMAIL#', '', '', NULL, NULL, NULL, NULL, '', 'a:0:{}', ''),
(15, '2021-03-03 10:31:17', 'FEDBACK_SEND', 'a1', 'Y', '#DEFAULT_EMAIL_FROM#', 'manager@nuage.su', '#SITE_NAME#: Заполнена форма обратной связи', 'ФИО: #NAME#\r\nE-mail: #EMAIL#\r\nТелефон: #PHONE#\r\nГород: #CITY#\r\nДата рождения: #BIRTHDAY#\r\n\r\nТема обращения: #SUBJECT#\r\n\r\nТекст обращения:\r\n#TEXT#', 'ФИО: <?=$arParams[\"NAME\"];?>\r\n\r\nE-mail: <?=$arParams[\"EMAIL\"];?>\r\n\r\nТелефон: <?=$arParams[\"PHONE\"];?>\r\n\r\nГород: <?=$arParams[\"CITY\"];?>\r\n\r\nДата рождения: <?=$arParams[\"BIRTHDAY\"];?>\r\n\r\n\r\nТема обращения: <?=$arParams[\"SUBJECT\"];?>\r\n\r\n\r\nТекст обращения:\r\n<?=$arParams[\"TEXT\"];?>', 'text', '', '', '', '', '', NULL, NULL, NULL, NULL, '', 'a:0:{}', '');
-- -----------------------------------
-- Dumping table b_event_message_attachment
-- -----------------------------------
DROP TABLE IF EXISTS `b_event_message_attachment`;
CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_event_message_site
-- -----------------------------------
DROP TABLE IF EXISTS `b_event_message_site`;
CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_event_message_site` VALUES
(7, 'a1'),
(10, 'a1'),
(11, 'a1'),
(14, 'a1'),
(15, 'a1');
-- -----------------------------------
-- Dumping table b_event_type
-- -----------------------------------
DROP TABLE IF EXISTS `b_event_type`;
CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT 150,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_event_type` VALUES
(1, 'ru', 'NEW_USER', 'Зарегистрировался новый пользователь', '\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n', 1),
(2, 'ru', 'USER_INFO', 'Информация о пользователе', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 2),
(3, 'ru', 'NEW_USER_CONFIRM', 'Подтверждение регистрации нового пользователя', '\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n', 3),
(4, 'ru', 'USER_PASS_REQUEST', 'Запрос на смену пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 4),
(5, 'ru', 'USER_PASS_CHANGED', 'Подтверждение смены пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 5),
(6, 'ru', 'USER_INVITE', 'Приглашение на сайт нового пользователя', '#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n', 6),
(7, 'ru', 'FEEDBACK_FORM', 'Отправка сообщения через форму обратной связи', '#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 7),
(8, 'en', 'NEW_USER', 'New user was registered', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n', 1),
(9, 'en', 'USER_INFO', 'Account Information', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 2),
(10, 'en', 'NEW_USER_CONFIRM', 'New user registration confirmation', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n', 3),
(11, 'en', 'USER_PASS_REQUEST', 'Password Change Request', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 4),
(12, 'en', 'USER_PASS_CHANGED', 'Password Change Confirmation', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 5),
(13, 'en', 'USER_INVITE', 'Invitation of a new site user', '#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n', 6),
(14, 'en', 'FEEDBACK_FORM', 'Sending a message using a feedback form', '#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address', 7),
(17, 'ru', 'NEW_REVIEW', 'Добавлен отзыв', '#NAME# - Имя клиента\r\n#COMMENT# - Текст отзыва,\r\n#PROP_AGE# - Возраст клиента,\r\n#PROP_CITY# - Город клиента,', 150),
(18, 'en', 'NEW_REVIEW', 'Add review', '#NAME# - name\r\n#COMMENT# - comment,\r\n#PROP_AGE# - age,\r\n#PROP_CITY# - city', 150),
(19, 'ru', 'NEW_QUESTION', 'Добавлен вопрос', '#NAME# - Имя клиента\r\n#COMMENT# - Текст вопроса,\r\n#PROP_MAIL# - Emal клиента,\r\n', 150),
(20, 'en', 'NEW_QUESTION', 'Add question', '#NAME# - Имя клиента\r\n#COMMENT# - Текст вопроса,\r\n#PROP_MAIL# - Emal клиента,', 150),
(23, 'ru', 'MAIN_MAIL_CONFIRM_CODE', 'Подтверждение email-адреса отправителя', '\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения', 1),
(24, 'en', 'MAIN_MAIL_CONFIRM_CODE', 'Confirm sender\'s email address', '\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code', 1),
(25, 'ru', 'NUAGE_FEEDBACK', 'NUAGE_FEEDBACK', '', 150),
(26, 'en', 'NUAGE_FEEDBACK', 'NUAGE_FEEDBACK', '', 150),
(27, 'ru', 'FEDBACK_SEND', 'Заполнена форма обратной связи', '#NAME# - ФИО\r\n#EMAIL# - E-mail\r\n#PHONE# - Телефон\r\n#CITY# - Город\r\n#BIRTHDAY# - Дата рождения\r\n#SUBJECT# - Тема обращения\r\n#TEXT# - Текст обращения', 150);
-- -----------------------------------
-- Dumping table b_favorite
-- -----------------------------------
DROP TABLE IF EXISTS `b_favorite`;
CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_file
-- -----------------------------------
DROP TABLE IF EXISTS `b_file`;
CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_file` VALUES
(145, '2018-01-12 07:59:35', 'iblock', 3648, 5472, 2850752, 'image/jpeg', 'iblock/2b1', '2b1ab81154360f6dc25b2ab39334d8f0.jpg', '164H.jpg', '', NULL, '6ef87df7070eaafc28ac1981f650e094'),
(147, '2018-01-12 08:01:04', 'fileman', 682, 1024, 111199, 'image/jpeg', 'medialibrary/77f', '77fb5911b7cc73f02774e926466acb54.jpg', '164H.jpg', '', NULL, 'd8d8457828f35e0a10da2633fc9cb64d'),
(148, '2018-01-12 08:01:14', 'iblock', 3648, 5472, 2850752, 'image/jpeg', 'iblock/0a4', '0a45abce41442c65b9abae3c79b867ff.jpg', '164H.jpg', '', NULL, '04a67408c4cd7b447cec655b058ed1ed'),
(156, '2018-01-15 08:15:23', 'iblock', 682, 1024, 130371, 'image/jpeg', 'iblock/741', '74173ed326f3fea64bdcb22fe3e15012.jpg', 'eec29b998cc747d383ea210860bc1256.jpg', '', NULL, '2d3160d133396abe570bd876f4970175'),
(157, '2018-01-15 08:16:23', 'iblock', 682, 1024, 130371, 'image/jpeg', 'iblock/f77', 'f7763f2bc2e6bb4f126fa237b7a71b94.jpg', 'eec29b998cc747d383ea210860bc1256.jpg', '', NULL, 'cbb609a2ccfb67054fb7a46ed1ee80d9'),
(158, '2018-01-15 08:16:44', 'iblock', 682, 1024, 130371, 'image/jpeg', 'iblock/eeb', 'eebcf4b5a56c8e3b7d1d342eb705961d.jpg', 'eec29b998cc747d383ea210860bc1256.jpg', '', NULL, '0663e02be84a72f1b333927fa518c65e'),
(159, '2018-01-15 08:16:52', 'iblock', 1280, 1920, 256880, 'image/jpeg', 'iblock/8c9', '8c9f044a9e0a11dd3dcd8511093817cd.jpg', 'carrots-2485051_1920.jpg', '', NULL, '2dd8b91b20ce9681f50eb3c97675dd6d'),
(162, '2018-01-15 08:26:24', 'fileman', 682, 1024, 140381, 'image/jpeg', 'medialibrary/f29', 'f295d9e9d82e7473fc69cb312099396f.jpg', 'beauty-15932_1920.jpg', '', NULL, 'b5f1471197dabd9f7a69343bb34271ed'),
(163, '2018-01-15 08:26:34', 'iblock', 1280, 1920, 322572, 'image/jpeg', 'iblock/71a', '71adccc58c4584c27ff90a5cdc7d1ebb.jpg', 'beauty-15932_1920.jpg', '', NULL, 'ed8a2afcaaf7c1b9939881ceeec93c69'),
(164, '2018-01-15 08:26:56', 'iblock', 1280, 1920, 322572, 'image/jpeg', 'iblock/bc5', 'bc56c685d0563ee735015c2ab7c1533e.jpg', 'beauty-15932_1920.jpg', '', NULL, '88df3972943945fa29e3ae9a7e89d919'),
(165, '2018-01-15 08:27:10', 'iblock', 682, 1024, 140381, 'image/jpeg', 'iblock/880', '880ebb67d65abbbbbaeff3c5c42531bd.jpg', '580e5e0d5fae5cebf4dfd9b2192cf7d6.jpg', '', NULL, '7a8699cae4dba694f2462c20c8df0c6d'),
(169, '2018-01-15 08:54:14', 'iblock', 682, 1024, 181088, 'image/jpeg', 'iblock/68a', '68a650d3f10498a293587681e9396257.jpg', 'bf1940bd5cdfb0a888ec28ebbfbf8515.jpg', '', NULL, 'f24e9591e21593fec55025546773025d'),
(173, '2018-01-18 07:46:30', 'iblock', 1229, 1856, 205701, 'image/jpeg', 'iblock/3d8', '3d8505a6ccb36955b7973dfd2f8b6c79.jpg', 'ТЗ9, статья 3.jpg', '', NULL, 'd2512acc6d7c17eba541ef470347da1e'),
(174, '2018-01-18 07:46:30', 'iblock', 551, 312, 48387, 'image/jpeg', 'iblock/b78', 'b78bc6908f93522d684935141859eaba.jpg', 'ТЗ9, статья 3_2.jpg', '', NULL, '357869cb69dd33a147b0bac8fcbbea14'),
(188, '2018-01-22 06:34:59', 'iblock', 1276, 1920, 647707, 'image/jpeg', 'iblock/fc9', 'fc9fb8bae02ef7e9558b2d4473008db7.jpg', 'hair-1227698_1920.jpg', '', NULL, 'bb4c90f8ba38ad669fada9a26ac3ddbf'),
(189, '2018-01-22 06:34:59', 'iblock', 551, 312, 68261, 'image/jpeg', 'iblock/9ae', '9ae70f1667afaf18a0ddc23b595a087b.jpg', 'hair-1227698_1920_2.jpg', '', NULL, '731ef5f4d7a41a3781052b4645c44310'),
(197, '2018-02-05 12:47:20', 'iblock', 1440, 1920, 357096, 'image/jpeg', 'iblock/bb1', 'bb1d0aba9d6b605510efaf9c0737a35a.jpg', '1_2.jpg', '', NULL, '147bc3c2e05f07049fe8893f81ac1b27'),
(198, '2018-02-05 12:47:20', 'iblock', 550, 312, 8768, 'image/jpeg', 'iblock/797', '797ef50bec7f00b9b5e549d7b522e1b8.jpg', '1_2.jpg', '', NULL, '6c9b7dc9928be031ead20ab6c920319a'),
(199, '2018-02-05 12:48:25', 'iblock', 1440, 1920, 357096, 'image/jpeg', 'iblock/bf1', 'bf124e8868c27b70969bd49101b8faaf.jpg', '1_2 (1).jpg', '', NULL, '2f8b36793314ca2ee374a0d32880850f'),
(218, '2018-03-21 07:50:43', 'iblock', 3362, 5043, 576751, 'image/jpeg', 'iblock/9b8', '9b8ebf7c3ce016cede814449cd135b40.jpg', 'Как-повысить-обучаемость.jpg', '', NULL, '9e456db863e61a4f3ba5a6a1b40fa3ee'),
(219, '2018-03-21 07:50:43', 'iblock', 551, 312, 14540, 'image/jpeg', 'iblock/b7f', 'b7ffefc19ab07513bef1ba46c2c4727a.jpg', '2.jpg', '', NULL, '755adac0f26db413e7b5b47a0f85afe6'),
(222, '2018-03-21 07:52:15', 'iblock', 3362, 5043, 717247, 'image/jpeg', 'iblock/ccb', 'ccb138a23ac5b31ca36fea5bba300c57.jpg', 'Как-повысить-обучаемость.jpg', '', NULL, '86a2e4cf9dea6ea6aa78ce980cab61c2'),
(223, '2018-03-21 07:52:28', 'iblock', 3362, 5043, 717247, 'image/jpeg', 'iblock/139', '13970ea2cd10d6c8be1ec1883e3ee160.jpg', 'Как-повысить-обучаемость.jpg', '', NULL, '2cad4083ecf8629949cba1d5d0dcd0a9'),
(224, '2018-03-21 07:53:45', 'iblock', 3362, 5043, 717247, 'image/jpeg', 'iblock/e25', 'e258dea3d12aa389fa18f61fe7121555.jpg', 'Как-повысить-обучаемость.jpg', '', NULL, '70d9656ef18367e249a4f76293739e33'),
(225, '2018-03-21 07:53:45', 'iblock', 551, 312, 14540, 'image/jpeg', 'iblock/d07', 'd073e1dd6856dec18977b3d7f0f96369.jpg', '2.jpg', '', NULL, '117aac0b632c7bcef1e5b048f9bf5327'),
(226, '2018-03-21 07:54:19', 'iblock', 3362, 5043, 717247, 'image/jpeg', 'iblock/a82', 'a82edae414710d0f6a4a960f6ca43080.jpg', 'Как-повысить-обучаемость.jpg', '', NULL, 'a3cc215f7f92d2a33d808f8a2cadcd95'),
(227, '2018-03-21 07:54:19', 'iblock', 551, 312, 14540, 'image/jpeg', 'iblock/b21', 'b21336652b3712efa88f9af39aaa0918.jpg', '2.jpg', '', NULL, '1f76c423d5374f4abaf785a787861a1d'),
(253, '2018-04-03 04:45:49', 'fileman', 516, 1024, 194412, 'image/jpeg', 'medialibrary/cdc', 'cdc6abdfc7482262d97467a41f6dafea.jpg', 'dish-meal-food-salad-produce-vegetable-958153-pxhere.com.jpg', '', NULL, '8f60648d2f309d2d0aa1802857eb45dd'),
(254, '2018-04-03 04:46:02', 'fileman', 516, 1024, 194412, 'image/jpeg', 'medialibrary/534', '534d1e239da3231bfa52837cb0db7ae1.jpg', 'dish-meal-food-salad-produce-vegetable-958153-pxhere.com.jpg', '', NULL, '167e69d5eff924f822f1ad5425c95033'),
(255, '2018-04-03 04:46:14', 'fileman', 516, 1024, 194412, 'image/jpeg', 'medialibrary/77d', '77dc601fa7649c66b8e5590e12ca65c0.jpg', 'dish-meal-food-salad-produce-vegetable-958153-pxhere.com.jpg', '', NULL, '93e4be7cb4f9f8211b529fb07e6beab4'),
(256, '2020-08-04 16:50:34', 'alsem.areas', 0, 0, 837, 'image/svg+xml', 'alsem.areas/295', 'lic_3.svg', 'lic-3.svg', 'РОАГ', NULL, '779fe9d2f6deaf1840b9246c2cd7c0d4'),
(257, '2020-08-04 16:50:34', 'alsem.areas', 0, 0, 747, 'image/svg+xml', 'alsem.areas/e8c', 'lic_2.svg', 'lic-2.svg', 'ISO', NULL, '921d0c2945a4e8fdad3dd42542af7dff'),
(258, '2020-08-04 16:50:34', 'alsem.areas', 0, 0, 747, 'image/svg+xml', 'alsem.areas/7bc', 'lic_1.svg', 'lic-1.svg', 'GMP', NULL, '6fd043145f1d05a1adb8e1cd634abe20'),
(259, '2020-08-04 16:50:34', 'alsem.areas', 0, 0, 8998, 'image/svg+xml', 'alsem.areas/029', 'ico_l_1.svg', 'ico-l-1.svg', 'Одобрено Российским обществом акушеров-гинекологов', NULL, '26cfb22402e0e997335d0e4cd9a24d0d'),
(260, '2020-08-04 16:50:34', 'alsem.areas', 0, 0, 16774, 'image/svg+xml', 'alsem.areas/807', 'ico_l_2.svg', 'ico-l-2.svg', 'Сертифицировано ISO 9001', NULL, '3da28e8c49512608765db7d6f0b4241f'),
(261, '2020-08-04 16:50:34', 'alsem.areas', 0, 0, 9084, 'image/svg+xml', 'alsem.areas/50f', 'ico_l_3.svg', 'ico-l-3.svg', 'Производство и контроль качества по стандартам GMP', NULL, '4e9e3b811114b4a525279c520afe92ee'),
(262, '2019-12-01 22:39:10', 'alsem.areas', 600, 600, 138477, 'image/png', 'alsem.areas/5ba', 'pre_loader.png', 'pre-loader.png', '', NULL, '8bdc69728477dc0a8c22fd23851a2d6b'),
(263, '2019-12-01 22:39:10', 'alsem.areas', 0, 0, 7708520, 'video/mp4', 'alsem.areas/38c', 'video.mp4', 'video.mp4', '', NULL, 'bb14e666893d3f6a1ef9fd6ae91177d3'),
(264, '2019-12-01 23:47:04', 'iblock', 148, 208, 15565, 'image/png', 'iblock/9f8', 'avatar_doc.png', 'avatar-doc.png', '', NULL, '851365e849114b1a639548bf60cc0607'),
(265, '2019-12-01 23:47:21', 'iblock', 148, 208, 15194, 'image/png', 'iblock/cd6', 'avatar_wor2.png', 'avatar-wor2.png', '', NULL, '7b60d8259717b767ce4a4a5690cd098e'),
(266, '2019-12-01 23:47:40', 'iblock', 148, 208, 17139, 'image/png', 'iblock/b6b', 'avatar_cli.png', 'avatar-cli.png', '', NULL, '11baaab8dbe6591ca0bc23487946f31c'),
(267, '2019-12-03 19:27:53', 'alsem.areas', 0, 0, 419772, 'application/pdf', 'alsem.areas/d22', 'policy.pdf', 'policy.pdf', '', NULL, '1d40fb939b2af1e77368d819cdeed65e'),
(289, '2020-07-13 11:56:55', 'alsem.areas', 567, 1124, 139763, 'image/png', 'alsem.areas/b4e', 'map.png', 'map.png', '', NULL, '6b8073db2e968a23008ea9e260fdb411'),
(290, '2020-07-02 10:55:34', 'iblock', 241, 258, 39283, 'image/png', 'iblock/443', 'nuage_daily1.png', 'nuage-daily1.png', '', NULL, '9570b7ac1e9cc573e30aba1786108071'),
(291, '2020-07-02 10:55:22', 'iblock', 241, 285, 56690, 'image/png', 'iblock/413', 'nuage_normal1.png', 'nuage-normal1.png', '', NULL, '31037ee73ed51044aa148137836c067b'),
(292, '2020-07-02 10:55:14', 'iblock', 270, 320, 64116, 'image/png', 'iblock/3da', 'nuage_super1.png', 'nuage-super1.png', '', NULL, '4d11fe32d6e3a0075ccb4386cb1a9433'),
(293, '2020-07-06 10:03:56', 'iblock', 242, 285, 60040, 'image/png', 'iblock/339', 'nuage_night1.png', 'nuage-night1.png', '', NULL, '2dd043dceecb033c47830397252cebc0'),
(294, '2020-07-02 10:55:28', 'iblock', 242, 342, 66488, 'image/png', 'iblock/9ab', 'nuage_night_plus1.png', 'nuage-night-plus1.png', '', NULL, 'cd26512d8ede21400da498c98faf1d9d'),
(323, '2020-07-13 11:56:55', 'alsem.areas', 79, 80, 13041, 'image/png', 'alsem.areas/2c1', 'Edelveys-_2_.png', 'Эдельвейс (2).png', 'http://edelpharm.ru/', NULL, 'ef11a94212cf2ffeb83aa79a480adc70'),
(324, '2020-07-13 11:56:55', 'alsem.areas', 17, 120, 5236, 'image/png', 'alsem.areas/abf', 'SPFARM-_1_.png', 'СПФАРМ (1).png', 'https://lek54.ru/', NULL, '2942338077bbdb4c11506ba070e31901'),
(325, '2020-07-13 11:56:55', 'alsem.areas', 35, 93, 8154, 'image/png', 'alsem.areas/84e', 'BODRYANA-_2_.png', 'БОДРЯНА (2).png', 'https://lek54.ru/', NULL, 'ee39d4a0d1b4dfe72d7e2ee5b523c612'),
(326, '2020-07-13 11:56:55', 'alsem.areas', 26, 120, 6364, 'image/png', 'alsem.areas/46e', 'Apteca_logo_GUPAO_Farmatsiya-_1_.png', 'Apteca_logo_ГУПАО-Фармация (1).png', 'http://aptekaf.ru/', NULL, '105a6f1824121dab368bdaa404e44c71'),
(327, '2020-07-13 11:56:55', 'alsem.areas', 30, 120, 3664, 'image/png', 'alsem.areas/081', 'lektorg.png', 'лекторг.png', 'https://lek54.ru/', NULL, '00fee1d626a0480daf27f0afd78f0384'),
(329, '2020-07-13 11:56:55', 'alsem.areas', 35, 62, 6260, 'image/png', 'alsem.areas/357', 'farm-_1_.png', 'фарм (1).png', 'http://ooofarm.ru/', NULL, 'f27b5e4d854479fed9eebe0afb9be210'),
(343, '2020-08-04 16:20:18', 'alsem.areas', 0, 0, 294, 'image/svg+xml', 'alsem.areas/2c8', 'adv_ico_51.svg', 'adv-ico-51.svg', '', NULL, 'f7a09ca52daf46a834a98df0d4a8a5b5'),
(349, '2020-08-24 15:20:29', 'alsem.areas', 0, 0, 8998, 'image/svg+xml', 'alsem.areas/7d9', 'ico_l_1.svg', 'ico_l_1.svg', 'Одобрено Российским обществом акушеров-гинекологов', NULL, '7967e9d54fc43c63cdffa85e46d08b87'),
(350, '2020-08-24 15:20:29', 'alsem.areas', 800, 1200, 96295, 'image/png', 'alsem.areas/185', '1_0000.png', '1_0000.png', '', NULL, 'd1dec7f1269d6ee4e8532ee7d09a7300'),
(351, '2020-08-24 15:13:11', 'alsem.areas', 0, 0, 930, 'image/svg+xml', 'alsem.areas/a74', 'adv_ico_1.svg', 'adv_ico_1.svg', '', NULL, '1a369ddffb73689aaebe84f046cec811'),
(352, '2020-08-24 15:13:11', 'alsem.areas', 0, 0, 294, 'image/svg+xml', 'alsem.areas/1b8', 'adv_ico_51.svg', 'adv_ico_51.svg', '', NULL, '1e64c4790260e272524d9747f3c7d4c4'),
(353, '2020-08-24 15:13:11', 'alsem.areas', 0, 0, 1219, 'image/svg+xml', 'alsem.areas/752', 'ico_12.svg', 'ico_12.svg', '', NULL, '365138a50a02f3cc658603391c37f6bd'),
(358, '2020-08-07 11:22:08', 'iblock', 1101, 1306, 490198, 'image/jpeg', 'iblock/42d', 'normal_setka.jpg', 'normal_setka.jpg', '', NULL, '3475d8aec094a0ee9caf4804492d8c80'),
(359, '2020-08-07 11:22:08', 'iblock', 1101, 1306, 453798, 'image/jpeg', 'iblock/4cf', 'normal_back.jpg', 'normal_back.jpg', '', NULL, 'f1ca3efba185a66f5e49b7586d597ac7'),
(360, '2021-06-18 13:28:06', 'iblock', 0, 0, 1142, 'image/svg+xml', 'iblock/cf3', 'ico_21.svg', 'ico-21.svg', '', NULL, '748dfe543642e05f467688fdc8fedb53'),
(361, '2021-06-18 13:28:06', 'iblock', 0, 0, 1587, 'image/svg+xml', 'iblock/85d', 'ico_22.svg', 'ico-22.svg', '', NULL, '81d9c206ce2db9757b0d53ea807eae34'),
(362, '2021-06-18 13:28:06', 'iblock', 0, 0, 930, 'image/svg+xml', 'iblock/d89', 'ico_23.svg', 'ico-23.svg', '', NULL, 'cfd0459448c5d3da13075d37f3b87219'),
(363, '2021-06-18 13:27:42', 'iblock', 0, 0, 1142, 'image/svg+xml', 'iblock/f3b', 'ico_31.svg', 'ico-31.svg', '', NULL, 'df470fd36223142ea56eab15641e9e15'),
(364, '2021-06-18 13:27:42', 'iblock', 0, 0, 1554, 'image/svg+xml', 'iblock/acf', 'ico_32.svg', 'ico-32.svg', '', NULL, '6af990834dd40f4e0f2af64fe3302e0e'),
(365, '2021-06-18 13:27:42', 'iblock', 0, 0, 930, 'image/svg+xml', 'iblock/383', 'ico_33.svg', 'ico-33.svg', '', NULL, 'bc3fae20f27d6c92e7ccdd4b6eb12996'),
(367, '2020-08-07 11:27:31', 'iblock', 1100, 1306, 431826, 'image/jpeg', 'iblock/d42', 'super_setka.jpg', 'super_setka.jpg', '', NULL, 'd0b88e481c2b243e3d4a0231ae53338b'),
(368, '2020-08-07 11:27:31', 'iblock', 1100, 1306, 472688, 'image/jpeg', 'iblock/cf3', 'super_soft.jpg', 'super_soft.jpg', '', NULL, '8e913e3928bd7d1589d261522515a02c'),
(369, '2020-08-07 11:27:31', 'iblock', 1101, 1306, 406253, 'image/jpeg', 'iblock/291', 'super_back.jpg', 'super_back.jpg', '', NULL, 'bd9ee7aa83f54578f8094c051da24143'),
(371, '2020-08-07 11:30:43', 'iblock', 961, 1388, 342947, 'image/jpeg', 'iblock/61e', 'Daily_3.jpg', 'Daily_3.jpg', '', NULL, '52a754e3512427ca5b9f445034b2b679'),
(372, '2020-08-07 11:30:43', 'iblock', 961, 1388, 513020, 'image/jpeg', 'iblock/4da', 'Daily_3_back.jpg', 'Daily_3_back.jpg', '', NULL, '203da1f78d2c82c6f74d7532127c2522'),
(373, '2020-08-07 11:30:43', 'iblock', 751, 684, 165873, 'image/jpeg', 'iblock/566', 'daily_back.jpg', 'daily_back.jpg', '', NULL, 'ce93cc4835bb65f0c3265912ed57d7f9'),
(374, '2021-06-18 13:27:57', 'iblock', 0, 0, 1142, 'image/svg+xml', 'iblock/8c5', 'ico_61.svg', 'ico-61.svg', '', NULL, '8069f0456bc8f1aa104a99be8392b21d'),
(376, '2021-06-18 13:27:57', 'iblock', 0, 0, 930, 'image/svg+xml', 'iblock/c69', 'ico_63.svg', 'ico-63.svg', '', NULL, '40e170990c0f59a38d25c0da9cb82467'),
(377, '2021-06-18 13:27:49', 'iblock', 0, 0, 1142, 'image/svg+xml', 'iblock/4d2', 'ico_51.svg', 'ico-51.svg', '', NULL, '385018ffd6f54c7ec096911b458d7535'),
(378, '2021-06-18 13:27:49', 'iblock', 0, 0, 2115, 'image/svg+xml', 'iblock/d9e', 'ico_52.svg', 'ico-52.svg', '', NULL, '94856cc176f27c4e1c8760b454878b01'),
(379, '2021-06-18 13:27:49', 'iblock', 0, 0, 930, 'image/svg+xml', 'iblock/62d', 'ico_53.svg', 'ico-53.svg', '', NULL, '7a10a18670d400326b8b4368c2010238'),
(381, '2020-08-07 11:33:09', 'iblock', 1286, 1827, 574500, 'image/jpeg', 'iblock/3fa', 'plus.jpg', 'plus.jpg', '', NULL, '4f7fbccfc8c83b7f6af1c43754606e26'),
(382, '2020-08-07 11:33:09', 'iblock', 1286, 1830, 656808, 'image/jpeg', 'iblock/946', 'plus_back.jpg', 'plus_back.jpg', '', NULL, '7fbea4fdf55a93784f4cbfee721bf2bf'),
(384, '2020-08-07 11:34:46', 'iblock', 1100, 1376, 531436, 'image/jpeg', 'iblock/828', 'night_setka.jpg', 'night_setka.jpg', '', NULL, 'f095038618047d74346bd386ba4bfeb2'),
(385, '2020-08-07 11:34:46', 'iblock', 1100, 1376, 493206, 'image/jpeg', 'iblock/b7c', 'night_soft.jpg', 'night_soft.jpg', '', NULL, '20348228f5b6cfa10b117e540c1a58d0'),
(386, '2020-08-07 11:34:46', 'iblock', 1101, 1371, 467936, 'image/jpeg', 'iblock/db9', 'night_back.jpg', 'night_back.jpg', '', NULL, 'e8c331ee0ab830d4148a978e4a90d31d'),
(387, '2021-06-18 13:28:14', 'iblock', 0, 0, 1142, 'image/svg+xml', 'iblock/dd8', 'ico_41.svg', 'ico-41.svg', '', NULL, '2744f54d516774756f708ba36cbb9764'),
(389, '2021-06-18 13:28:14', 'iblock', 0, 0, 930, 'image/svg+xml', 'iblock/f6d', 'ico_43.svg', 'ico-43.svg', '', NULL, 'd26c14895b2609f88a3472c91573d16d'),
(390, '2021-06-18 13:28:14', 'iblock', 0, 0, 1092, 'image/svg+xml', 'iblock/e04', 'ico_42.svg', 'ico-42.svg', '', NULL, '611e6c8de0fc223a5044a472c8305ca5'),
(391, '2020-08-10 13:38:59', 'iblock', 752, 684, 191106, 'image/jpeg', 'iblock/e83', 'daily.jpg', 'daily.jpg', '', NULL, 'e08e920099cc1575d56831198f31f836'),
(394, '2020-08-10 13:44:49', 'iblock', 442, 414, 20662, 'image/png', 'iblock/78a', 'img_scheme_2.png', 'img-scheme-2.png', '', NULL, 'aee63e7685628ced073968929f29712a'),
(395, '2020-08-10 13:45:15', 'iblock', 442, 395, 23082, 'image/png', 'iblock/b35', 'img_scheme_3.png', 'img-scheme-3.png', '', NULL, 'c24e60a777ed35d2b8f6efbf9a14f7cd'),
(396, '2020-08-10 13:45:45', 'iblock', 442, 373, 27659, 'image/png', 'iblock/32b', 'img_scheme_4.png', 'img-scheme-4.png', '', NULL, '3937d5f56b6f8d05b8b8615e7245ce25'),
(397, '2020-08-10 13:46:07', 'iblock', 442, 332, 29570, 'image/png', 'iblock/2a4', 'img_scheme_5.png', 'img-scheme-5.png', '', NULL, 'fd07f215b1ea5724558b1ac61c748fd4'),
(398, '2020-08-10 13:46:27', 'iblock', 441, 474, 32542, 'image/png', 'iblock/bae', 'img_scheme_6.png', 'img-scheme-6.png', '', NULL, 'd2c79ebb9926a7cb13b64043a39426ce'),
(400, '2021-06-18 13:27:42', 'iblock', 228, 270, 58040, 'image/png', 'iblock/47c', 'a_img_3.png', 'a-img-3.png', '', NULL, 'b1bb70dd523c2aaaf5ed4ef5ce1e709b'),
(404, '2021-06-18 13:28:14', 'iblock', 228, 275, 60099, 'image/png', 'iblock/0a3', 'a_img_4.png', 'a-img-4.png', '', NULL, '493cd8972bf829c146cb3305bf689f11'),
(407, '2021-06-18 13:28:06', 'iblock', 226, 268, 56778, 'image/png', 'iblock/1c4', 'a_img_2.png', 'a-img-2.png', '', NULL, '241502ace166912ce71072bdcd15dca4'),
(408, '2021-06-18 13:27:57', 'iblock', 242, 258, 45369, 'image/png', 'iblock/eb3', 'a_img_6.png', 'a-img-6.png', '', NULL, 'ee9b131459638c392b689e1677cab767'),
(409, '2021-06-18 13:27:49', 'iblock', 189, 270, 52825, 'image/png', 'iblock/665', 'a_img_5.png', 'a-img-5.png', '', NULL, '7beb6335d59188980a5a1b8c59658a13'),
(410, '2021-01-25 14:45:29', 'iblock', 300, 300, 5970, 'image/png', 'iblock/cf6', 'no_avatar_300x300.png', 'no-avatar-300x300.png', '', NULL, '2a83799b075988e58a7c5d204064e55f'),
(411, '2021-01-25 14:46:26', 'iblock', 340, 340, 28669, 'image/png', 'iblock/4db', 'avatar_no_face.png', 'avatar_no_face.png', '', NULL, 'd4ae52133c54f3d0d86ea08475ac62b3'),
(412, '2021-01-25 14:55:22', 'iblock', 313, 600, 81372, 'image/jpeg', 'iblock/b68', 'b2_obsujd.jpg', 'b2_obsujd.jpg', '', NULL, '3d21455b5cded7ef96526fc3bc271a64'),
(413, '2021-01-25 14:55:22', 'iblock', 387, 569, 190225, 'image/jpeg', 'iblock/970', 'b2_obsujd_big.jpg', 'b2_obsujd_big.jpg', '', NULL, 'dcaa53172a5a31b3a7277acab4be52f9'),
(414, '2021-01-25 14:55:11', 'iblock', 326, 500, 143369, 'image/jpeg', 'iblock/598', 'b1_sport.jpg', 'b1_sport.jpg', '', NULL, '76ae3babc942b475bd65cd4e34f099d0'),
(415, '2021-01-25 16:32:09', 'iblock', 500, 700, 88548, 'image/jpeg', 'iblock/a44', 'b4_zdorovie.jpg', 'b4_zdorovie.jpg', '', NULL, 'f458553cb0b2c85592a294c5d7c5a836'),
(416, '2021-01-25 16:32:09', 'iblock', 500, 700, 88548, 'image/jpeg', 'iblock/b2a', 'b4_zdorovie.jpg', 'b4_zdorovie.jpg', '', NULL, 'bcf4e5801a71202b8b570f022385f22e'),
(417, '2021-01-25 16:34:12', 'iblock', 675, 1080, 55635, 'image/jpeg', 'iblock/c51', 'b7_blog_rec.jpg', 'b7_blog_rec.jpg', '', NULL, 'fc8eb1d11ef2da5449d3ca5e0be6addc'),
(418, '2021-01-25 14:59:33', 'iblock', 444, 900, 792301, 'image/png', 'iblock/f66', 'b6_info.png', 'b6_info.png', '', NULL, '7d4f95d95bb1d9e209576bd3188fd80c'),
(419, '2021-01-25 14:59:25', 'iblock', 489, 870, 130684, 'image/jpeg', 'iblock/b9e', 'b5_novyi_god.jpg', 'b5_novyi_god.jpg', '', NULL, '6add108ed8f50131dcde3bd078c5bd6b'),
(420, '2021-01-25 16:31:37', 'iblock', 340, 512, 73393, 'image/jpeg', 'iblock/2f1', 'b3_raschet.jpg', 'b3_raschet.jpg', '', NULL, '38165c9f7754715b1c7f86d2d16a135f'),
(421, '2021-01-26 10:27:54', 'iblock', 735, 735, 65783, 'image/jpeg', 'iblock/a85', 'scale_1200.jpg', 'scale_1200.jpg', '', NULL, 'a6205ff3d7ef7fc8c327586b85d056df'),
(422, '2021-01-26 12:40:23', 'iblock', 1280, 1920, 1701557, 'image/jpeg', 'iblock/110', 'img_1.jpeg', 'img_1.jpeg', '', NULL, 'c32ec43c03d0122ec9ca6f8cb233060c'),
(423, '2021-01-26 12:40:23', 'iblock', 400, 600, 166165, 'image/jpeg', 'iblock/b7e', 'Foto_21.jpg', 'Foto_21.jpg', '', NULL, 'f348e37fa7a768fd377b933e69328452'),
(424, '2021-02-15 01:32:02', 'iblock', 972, 1721, 1719841, 'image/png', 'iblock/e47', 'people.png', 'people.png', '', NULL, '0b881e45130f5b7a32d2918b194e4db2'),
(425, '2021-02-15 01:32:02', 'iblock', 1200, 3820, 4027244, 'image/png', 'iblock/fda', 'page_head_bg.png', 'page_head_bg.png', '', NULL, '59338f952d3a9abddc4d7e514dcb1ecd'),
(426, '2021-02-15 01:32:02', 'iblock', 972, 1721, 1719841, 'image/png', 'iblock/657', 'people.png', 'people.png', '', NULL, 'acb595d7982754adb6c61a20ba34434d'),
(427, '2021-02-15 01:32:02', 'iblock', 1200, 3820, 4027244, 'image/png', 'iblock/399', 'page_head_bg.png', 'page_head_bg.png', '', NULL, '52b97238863a7b902d670c6e8a8f7f46'),
(428, '2021-02-15 01:32:02', 'iblock', 972, 1721, 1719841, 'image/png', 'iblock/fb7', 'people.png', 'people.png', '', NULL, '6db7f3d423b5c7a7fc70c796498a8a2e'),
(429, '2021-02-15 01:32:02', 'iblock', 1200, 3820, 4027244, 'image/png', 'iblock/c42', 'page_head_bg.png', 'page_head_bg.png', '', NULL, '442292d4884c2fbd9e12c2b5b7f88150'),
(430, '2021-02-15 01:39:37', 'iblock', 569, 836, 101726, 'image/png', 'iblock/1dd', 'comboflex.png', 'comboflex.png', '', NULL, 'f240eb009c2dbf0191382f8e428f4e17'),
(431, '2021-02-15 01:32:07', 'iblock', 0, 0, 394636, 'application/pdf', 'iblock/e94', 'HX318C10FB_8.pdf', 'HX318C10FB_8.pdf', '', NULL, 'e76fa0015bda1849318ef11e8bf8af79'),
(432, '2021-07-13 14:15:42', 'iblock', 1223, 1236, 431115, 'image/png', 'iblock/4b6', 'safety.png', 'safety.png', '', NULL, '8bf963221074212a6caee4f3594f6240'),
(433, '2021-02-15 01:32:27', 'iblock', 207, 182, 24484, 'image/png', 'iblock/86b', 'points_1.png', 'points_1.png', '', NULL, 'a577c1e984f9fa2143122835d2c55a58'),
(434, '2021-02-15 01:32:27', 'iblock', 198, 181, 25896, 'image/png', 'iblock/2e0', 'points_2.png', 'points_2.png', '', NULL, '7a00570bbb5db961fa31e8a42acfbcd0'),
(435, '2021-02-15 01:32:27', 'iblock', 207, 182, 24484, 'image/png', 'iblock/776', 'points_1.png', 'points_1.png', '', NULL, 'ac57795924656c5dc52cb051a4c2349d'),
(436, '2021-02-15 01:32:31', 'iblock', 56, 56, 1559, 'image/png', 'iblock/dac', 'lic_3.png', 'lic_3.png', '', NULL, '764340e31ffd36d1661209a8f8eb74f2'),
(437, '2021-02-15 01:32:31', 'iblock', 56, 56, 1559, 'image/png', 'iblock/81e', 'lic_3.png', 'lic_3.png', '', NULL, '450bd60a333cb45db2d3dbe50a70ae92'),
(438, '2021-02-15 01:42:37', 'iblock', 886, 1576, 1359244, 'image/png', 'iblock/cda', 'article.png', 'article.png', '', NULL, 'a793e460455941acf3392ecc0da6be59'),
(439, '2021-02-15 01:42:37', 'iblock', 886, 1576, 1359244, 'image/png', 'iblock/24d', 'article.png', 'article.png', '', NULL, 'f3a9c00ccadb9bb3078ad11de6548fee'),
(440, '2021-02-15 01:32:32', 'iblock', 972, 1721, 1719841, 'image/png', 'iblock/a36', 'people.png', 'people.png', '', NULL, 'e763ce1262d01511786065b10632c045'),
(441, '2021-02-15 01:32:32', 'iblock', 972, 1721, 1719841, 'image/png', 'iblock/9c4', 'people.png', 'people.png', '', NULL, '19d2bef3e1b09ed5b8dc3f98cc5f7b2c'),
(442, '2021-02-15 01:32:32', 'iblock', 886, 1576, 1359244, 'image/png', 'iblock/360', 'article.png', 'article.png', '', NULL, 'bb9e1e46ec0dbb7123afb322cc52f8a5'),
(443, '2021-02-15 01:32:32', 'iblock', 886, 1576, 1359244, 'image/png', 'iblock/08e', 'article.png', 'article.png', '', NULL, '407389039ec0ce092a30d61cdc5b8a41'),
(444, '2021-02-15 01:32:32', 'iblock', 972, 1721, 1719841, 'image/png', 'iblock/93f', 'people.png', 'people.png', '', NULL, '5cb7f2c930bf68c209313f9b61a71c98'),
(445, '2021-02-15 01:32:32', 'iblock', 972, 1721, 1719841, 'image/png', 'iblock/fd3', 'people.png', 'people.png', '', NULL, '188a3521eae944facb438aa2305de323'),
(446, '2021-02-15 01:32:32', 'iblock', 886, 1576, 1359244, 'image/png', 'iblock/eb9', 'article.png', 'article.png', '', NULL, '8f5be887d984c618a8010f39916a4aa4'),
(447, '2021-02-15 01:32:32', 'iblock', 886, 1576, 1359244, 'image/png', 'iblock/876', 'article.png', 'article.png', '', NULL, '4dc4cef7d8af4a88e031ba8e98d49bb4'),
(448, '2021-02-15 01:32:32', 'iblock', 886, 1576, 1359244, 'image/png', 'iblock/b6a', 'article.png', 'article.png', '', NULL, 'bbcb3fb1f2b519686ea0eb6588cefcf8'),
(449, '2021-02-15 01:32:32', 'iblock', 886, 1576, 1359244, 'image/png', 'iblock/017', 'article.png', 'article.png', '', NULL, '960f4b76a5dbe06315e73f0ba7eadfae'),
(450, '2021-07-13 14:53:42', 'iblock', 66, 577, 23453, 'image/png', 'iblock/2bc', 'slider_lg.png', 'slider_lg.png', 'http://ya.ru/', NULL, '8ac64cf00336ebbda075fa12e0d7c30b'),
(451, '2021-07-13 14:53:42', 'iblock', 66, 235, 4501, 'image/png', 'iblock/e25', 'slider_sm.png', 'slider_sm.png', 'http://ya.ru/', NULL, '64e29e7c9641a849c50bc224dcde8a3c'),
(452, '2021-07-13 14:53:42', 'iblock', 66, 577, 23453, 'image/png', 'iblock/18c', 'slider_lg.png', 'slider_lg.png', 'http://ya.ru/', NULL, '4e272c81a135c3e163253eb15cf9522a'),
(453, '2021-07-13 14:53:42', 'iblock', 66, 235, 4501, 'image/png', 'iblock/27a', 'slider_sm.png', 'slider_sm.png', 'http://ya.ru/', NULL, '28d7dd9b5d75053124c43c941f20af91'),
(454, '2021-07-13 14:53:42', 'iblock', 66, 577, 23453, 'image/png', 'iblock/c2f', 'slider_lg.png', 'slider_lg.png', 'http://ya.ru/', NULL, '8288c925da0b48d432b71fd6b162ecb4'),
(455, '2021-02-15 01:32:36', 'iblock', 0, 0, 394636, 'application/pdf', 'iblock/4a4', 'HX318C10FB_8.pdf', 'HX318C10FB_8.pdf', '', NULL, 'e363baf3469fb6d0d4198b0dadd67307'),
(456, '2021-02-15 01:39:37', 'iblock', 230, 232, 29341, 'image/png', 'receipt/a2f', 'advans_icon.png', 'advans-icon.png', '', NULL, '1d3afec458c5797b363f65a3ef5ac903'),
(457, '2021-02-15 01:39:37', 'iblock', 230, 273, 31994, 'image/png', 'receipt/571', 'advans_icon2.png', 'advans-icon2.png', '', NULL, '039629a07be7805c07f9963d25309a24'),
(458, '2021-02-15 01:39:37', 'iblock', 230, 232, 29341, 'image/png', 'receipt/6ac', 'advans_icon.png', 'advans-icon.png', '', NULL, '1981649f13c4268b05ead94b5b6abf6f'),
(459, '2021-02-15 01:39:37', 'iblock', 230, 273, 31994, 'image/png', 'receipt/f08', 'advans_icon2.png', 'advans-icon2.png', '', NULL, 'a670d5f378036f575a5b5962ecc39924'),
(460, '2021-02-15 01:41:04', 'iblock', 261, 298, 38299, 'image/png', 'receipt/2d6', 'features_1.png', 'features-1.png', '', NULL, '8433a0235a733b50d70d81a072b2d497'),
(461, '2021-02-15 01:41:04', 'iblock', 262, 265, 36475, 'image/png', 'receipt/7d6', 'features_2.png', 'features-2.png', '', NULL, '14945e40bd3397bc090483885ccf0354'),
(462, '2021-02-15 01:41:04', 'iblock', 261, 310, 39870, 'image/png', 'receipt/d35', 'features_3.png', 'features-3.png', '', NULL, 'f7c08f49d53406bcc0be0728a522b4a3'),
(463, '2021-02-15 01:41:04', 'iblock', 261, 298, 38299, 'image/png', 'receipt/c19', 'features_1.png', 'features-1.png', '', NULL, '58f179ebf6d7feb6cdeb8db3c261541a'),
(464, '2021-02-15 01:41:04', 'iblock', 262, 265, 36475, 'image/png', 'receipt/fb2', 'features_2.png', 'features-2.png', '', NULL, '474ffb342ae25225237525bb5794af1e'),
(465, '2021-02-15 01:41:58', 'iblock', 1003, 1779, 2055114, 'image/png', 'receipt/2a1', 'prod_slider.png', 'prod-slider.png', '', NULL, 'd6b97ccd0613e8caa3d2fb9cbf32b144'),
(466, '2021-02-15 01:41:58', 'iblock', 1003, 1779, 2055114, 'image/png', 'receipt/99b', 'prod_slider.png', 'prod-slider.png', '', NULL, 'd5a3b2546542b269737c56ccd6fc0c3f'),
(467, '2021-02-15 01:41:58', 'iblock', 1003, 1779, 2055114, 'image/png', 'receipt/13c', 'prod_slider.png', 'prod-slider.png', '', NULL, '8d21883866714fd5e1f5e092a6a2ba5b'),
(468, '2021-02-15 01:41:58', 'iblock', 1003, 1779, 2055114, 'image/png', 'receipt/e0f', 'prod_slider.png', 'prod-slider.png', '', NULL, '43d3609de90030c679df933faf522de6'),
(469, '2021-02-15 01:42:37', 'iblock', 197, 180, 9049, 'image/png', 'receipt/750', 'fact.png', 'fact.png', '', NULL, 'f2aa0a32fc42377069dd469daa9ec874'),
(470, '2021-07-13 14:53:42', 'iblock', 569, 836, 101726, 'image/png', 'iblock/3e2', 'comboflex.png', 'comboflex.png', '', NULL, 'a1b7916eddfeae43f58a63b1c3ac061e'),
(471, '2021-07-13 15:26:58', 'iblock', 1151, 1250, 250734, 'image/png', 'iblock/96b', 'points_item.png', 'points-item.png', '', NULL, '622cf05d3aa7d2a799b798931249c8ba'),
(472, '2021-09-03 17:37:07', 'iblock', 878, 1032, 649789, 'image/png', 'iblock/a0f', 'medication_1.png', 'medication-1.png', '', NULL, 'dc9daab24ccdc6a455120ae8f8c3d0ea'),
(473, '2021-09-03 17:37:07', 'iblock', 1195, 1194, 1781881, 'image/png', 'iblock/f0a', 'wave_circle.png', 'wave-circle.png', '', NULL, '1df2fd2202fb1f8006f6af057d5e26c4'),
(475, '2021-09-03 12:31:02', 'iblock', 901, 1018, 210328, 'image/png', 'iblock/d54', 'after_stomach.png', 'after-stomach.png', '', NULL, 'bbde72fe9ebc67eb52dc47585dcad4ee'),
(476, '2021-09-03 12:31:02', 'iblock', 1014, 1018, 223931, 'image/png', 'iblock/c65', 'before_stomach.png', 'before-stomach.png', '', NULL, '9c114e63146357bc340ea9ef671edb5f'),
(477, '2021-09-03 12:42:46', 'iblock', 836, 1246, 1107265, 'image/png', 'iblock/b42', 'medication_3.png', 'medication-3.png', '', NULL, '24a54ce1e972820730dd69d50b926628'),
(478, '2021-09-03 12:55:02', 'iblock', 200, 201, 11466, 'image/png', 'iblock/c95', 'icon_1.png', 'icon-1.png', '', NULL, '61510f4a3be0fcd8c38b41eb86547b8c'),
(479, '2021-09-03 12:55:23', 'iblock', 200, 201, 9195, 'image/png', 'iblock/be9', 'icon_2.png', 'icon-2.png', '', NULL, '14b0955abd8005872f74cb5f570ab289'),
(480, '2021-09-03 12:57:28', 'iblock', 200, 201, 11537, 'image/png', 'iblock/398', 'icon_3.png', 'icon-3.png', '', NULL, '7acf7c8cb2201a58f326c53a90c535af'),
(481, '2021-09-03 12:58:10', 'iblock', 200, 201, 11748, 'image/png', 'iblock/f79', 'icon_4.png', 'icon-4.png', '', NULL, '526d0f4f3e334b28fc18e71bfaeb1c97'),
(482, '2021-09-03 13:03:28', 'iblock', 200, 201, 11024, 'image/png', 'iblock/d94', 'icon_5.png', 'icon-5.png', '', NULL, '500030529b43a8971f87c848bea85fa3'),
(483, '2021-09-03 13:03:36', 'iblock', 200, 201, 11337, 'image/png', 'iblock/ae0', 'icon_6.png', 'icon-6.png', '', NULL, '67595e97a73d415036be4caf1ea1ac7b'),
(484, '2021-09-03 13:20:27', 'iblock', 200, 200, 5591, 'image/png', 'iblock/1e8', 'apteka_1.png', 'apteka-1.png', '', NULL, '6c886b194edb59829aec9564a15712ab'),
(485, '2021-09-03 14:13:37', 'iblock', 300, 301, 24576, 'image/png', 'iblock/9d4', 'apteka_2.png', 'apteka-2.png', '', NULL, '9ff09fc9163f4aee21e052cfd1e0f238'),
(486, '2021-09-03 14:14:30', 'iblock', 200, 201, 9218, 'image/png', 'iblock/40a', 'apteka_3.png', 'apteka-3.png', '', NULL, '45fe5ddab881030f88905a9189b8144a'),
(487, '2021-09-03 14:14:39', 'iblock', 200, 201, 16226, 'image/png', 'iblock/69f', 'apteka_4.png', 'apteka-4.png', '', NULL, 'bebdbdfc63743323355605bf1686cbed'),
(488, '2021-09-03 14:15:12', 'iblock', 200, 201, 16226, 'image/png', 'iblock/06a', 'apteka_4.png', 'apteka-4.png', '', NULL, '1e1453609be637f9ebe1322d608c1cec'),
(489, '2021-09-03 15:33:13', 'iblock', 676, 1201, 842570, 'image/png', 'iblock/855', 'video_layout.png', 'video-layout.png', '', NULL, '4fbebad1ba6d5f945b9ae6e0ba1d1cea'),
(490, '2021-09-03 16:17:21', 'iblock', 120, 210, 12983, 'image/png', 'iblock/d45', 'logo.png', 'logo.png', '', NULL, '6a7be1a7dcd86c8cf9d67606aa32cc96'),
(491, '2021-09-03 16:17:21', 'iblock', 0, 0, 69420, 'application/pdf', 'iblock/bf5', 'Svoystva_Bitriks_Svoystva_Bitriks.pdf', 'Svoystva-Bitriks-_-Svoystva-Bitriks.pdf', '', NULL, '5ef1164be90e6849e8b945b877ea2548');
-- -----------------------------------
-- Dumping table b_file_search
-- -----------------------------------
DROP TABLE IF EXISTS `b_file_search`;
CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT 0,
  `F_SIZE` int(11) NOT NULL DEFAULT 0,
  `F_TIME` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_filters
-- -----------------------------------
DROP TABLE IF EXISTS `b_filters`;
CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_finder_dest
-- -----------------------------------
DROP TABLE IF EXISTS `b_finder_dest`;
CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  KEY `IX_FINDER_DEST` (`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_geoip_handlers
-- -----------------------------------
DROP TABLE IF EXISTS `b_geoip_handlers`;
CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(10) NOT NULL DEFAULT 100,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_geoip_handlers` VALUES
(1, 100, 'N', '\\Bitrix\\Main\\Service\\GeoIp\\MaxMind', NULL),
(2, 110, 'Y', '\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo', NULL);
-- -----------------------------------
-- Dumping table b_group
-- -----------------------------------
DROP TABLE IF EXISTS `b_group`;
CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT 100,
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_group` VALUES
(1, '2017-08-30 17:41:33', 'Y', 1, 'N', 'Администраторы', 'Полный доступ к управлению сайтом.', NULL, NULL),
(2, '2017-08-30 17:41:33', 'Y', 2, 'Y', 'Все пользователи (в том числе неавторизованные)', 'Все пользователи, включая неавторизованных.', NULL, NULL),
(3, '2017-08-30 17:41:33', 'Y', 3, 'N', 'Пользователи, имеющие право голосовать за рейтинг', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE'),
(4, '2017-08-30 17:41:33', 'Y', 4, 'N', 'Пользователи имеющие право голосовать за авторитет', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE_AUTHORITY');
-- -----------------------------------
-- Dumping table b_group_collection_task
-- -----------------------------------
DROP TABLE IF EXISTS `b_group_collection_task`;
CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_group_subordinate
-- -----------------------------------
DROP TABLE IF EXISTS `b_group_subordinate`;
CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_group_task
-- -----------------------------------
DROP TABLE IF EXISTS `b_group_task`;
CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_hlblock_entity
-- -----------------------------------
DROP TABLE IF EXISTS `b_hlblock_entity`;
CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_hlblock_entity` VALUES
(1, 'NuageCityList', 'nuage_city_list'),
(2, 'NuagePartners', 'nuage_partners'),
(3, 'TableCompareImages', 'tabe_compare_images'),
(4, 'TableCompareParams', 'tabe_compare_params');
-- -----------------------------------
-- Dumping table b_hlblock_entity_lang
-- -----------------------------------
DROP TABLE IF EXISTS `b_hlblock_entity_lang`;
CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) unsigned NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_hlblock_entity_lang` VALUES
(3, 'ru', 'TableCompareImages'),
(3, 'en', 'TableCompareImages'),
(4, 'ru', 'TableCompareParams'),
(4, 'en', 'TableCompareParams'),
(2, 'ru', 'Партнёры на карте'),
(1, 'ru', 'Города'),
(1, 'en', 'NuageCityList');
-- -----------------------------------
-- Dumping table b_hlblock_entity_rights
-- -----------------------------------
DROP TABLE IF EXISTS `b_hlblock_entity_rights`;
CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HL_ID` int(11) unsigned NOT NULL,
  `TASK_ID` int(11) unsigned NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_hot_keys
-- -----------------------------------
DROP TABLE IF EXISTS `b_hot_keys`;
CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  KEY `ix_hot_keys_code` (`CODE_ID`),
  KEY `ix_hot_keys_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_hot_keys` VALUES
(1, 'Ctrl+Alt+85', 139, 0),
(2, 'Ctrl+Alt+80', 17, 0),
(3, 'Ctrl+Alt+70', 120, 0),
(4, 'Ctrl+Alt+68', 117, 0),
(5, 'Ctrl+Alt+81', 3, 0),
(6, 'Ctrl+Alt+75', 106, 0),
(7, 'Ctrl+Alt+79', 133, 0),
(8, 'Ctrl+Alt+70', 121, 0),
(9, 'Ctrl+Alt+69', 118, 0),
(10, 'Ctrl+Shift+83', 87, 0),
(11, 'Ctrl+Shift+88', 88, 0),
(12, 'Ctrl+Shift+76', 89, 0),
(13, 'Ctrl+Alt+85', 139, 1),
(14, 'Ctrl+Alt+80', 17, 1),
(15, 'Ctrl+Alt+70', 120, 1),
(16, 'Ctrl+Alt+68', 117, 1),
(17, 'Ctrl+Alt+81', 3, 1),
(18, 'Ctrl+Alt+75', 106, 1),
(19, 'Ctrl+Alt+79', 133, 1),
(20, 'Ctrl+Alt+70', 121, 1),
(21, 'Ctrl+Alt+69', 118, 1),
(22, 'Ctrl+Shift+83', 87, 1),
(23, 'Ctrl+Shift+88', 88, 1),
(24, 'Ctrl+Shift+76', 89, 1),
(25, 'Ctrl+Alt+85', 139, 2),
(26, 'Ctrl+Alt+80', 17, 2),
(27, 'Ctrl+Alt+70', 120, 2),
(28, 'Ctrl+Alt+68', 117, 2),
(29, 'Ctrl+Alt+81', 3, 2),
(30, 'Ctrl+Alt+75', 106, 2),
(31, 'Ctrl+Alt+79', 133, 2),
(32, 'Ctrl+Alt+70', 121, 2),
(33, 'Ctrl+Alt+69', 118, 2),
(34, 'Ctrl+Shift+83', 87, 2),
(35, 'Ctrl+Shift+88', 88, 2),
(36, 'Ctrl+Shift+76', 89, 2),
(37, 'Ctrl+Alt+85', 139, 3),
(38, 'Ctrl+Alt+80', 17, 3),
(39, 'Ctrl+Alt+70', 120, 3),
(40, 'Ctrl+Alt+68', 117, 3),
(41, 'Ctrl+Alt+81', 3, 3),
(42, 'Ctrl+Alt+75', 106, 3),
(43, 'Ctrl+Alt+79', 133, 3),
(44, 'Ctrl+Alt+70', 121, 3),
(45, 'Ctrl+Alt+69', 118, 3),
(46, 'Ctrl+Shift+83', 87, 3),
(47, 'Ctrl+Shift+88', 88, 3),
(48, 'Ctrl+Shift+76', 89, 3);
-- -----------------------------------
-- Dumping table b_hot_keys_code
-- -----------------------------------
DROP TABLE IF EXISTS `b_hot_keys_code`;
CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`),
  KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  KEY `ix_hot_keys_code_url` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_hot_keys_code` VALUES
(3, 'CAdminTabControl', 'NextTab();', 'HK_DB_CADMINTC', 'HK_DB_CADMINTC_C', 'tab-container', '', 0),
(5, 'btn_new', 'var d=BX (\'btn_new\'); if (d) location.href = d.href;', 'HK_DB_BUT_ADD', 'HK_DB_BUT_ADD_C', 'btn_new', '', 0),
(6, 'btn_excel', 'var d=BX(\'btn_excel\'); if (d) location.href = d.href;', 'HK_DB_BUT_EXL', 'HK_DB_BUT_EXL_C', 'btn_excel', '', 0),
(7, 'btn_settings', 'var d=BX(\'btn_settings\'); if (d) location.href = d.href;', 'HK_DB_BUT_OPT', 'HK_DB_BUT_OPT_C', 'btn_settings', '', 0),
(8, 'btn_list', 'var d=BX(\'btn_list\'); if (d) location.href = d.href;', 'HK_DB_BUT_LST', 'HK_DB_BUT_LST_C', 'btn_list', '', 0),
(9, 'Edit_Save_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();', 'HK_DB_BUT_SAVE', 'HK_DB_BUT_SAVE_C', 'Edit_Save_Button', '', 0),
(10, 'btn_delete', 'var d=BX(\'btn_delete\'); if (d) location.href = d.href;', 'HK_DB_BUT_DEL', 'HK_DB_BUT_DEL_C', 'btn_delete', '', 0),
(12, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();', 'HK_DB_FLT_FND', 'HK_DB_FLT_FND_C', 'find', '', 0),
(13, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_F', 'HK_DB_FLT_BUT_F_C', 'set_filter', '', 0),
(14, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_CNL', 'HK_DB_FLT_BUT_CNL_C', 'del_filter', '', 0),
(15, 'bx-panel-admin-button-help-icon-id', 'var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;', 'HK_DB_BUT_HLP', 'HK_DB_BUT_HLP_C', 'bx-panel-admin-button-help-icon-id', '', 0),
(17, 'Global', 'BXHotKeys.ShowSettings();', 'HK_DB_SHW_L', 'HK_DB_SHW_L_C', 'bx-panel-hotkeys', '', 0),
(19, 'Edit_Apply_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();', 'HK_DB_BUT_APPL', 'HK_DB_BUT_APPL_C', 'Edit_Apply_Button', '', 0),
(20, 'Edit_Cancel_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();', 'HK_DB_BUT_CANCEL', 'HK_DB_BUT_CANCEL_C', 'Edit_Cancel_Button', '', 0),
(54, 'top_panel_org_fav', '', '-=AUTONAME=-', NULL, 'top_panel_org_fav', NULL, 0),
(55, 'top_panel_module_settings', '', '-=AUTONAME=-', NULL, 'top_panel_module_settings', '', 0),
(56, 'top_panel_interface_settings', '', '-=AUTONAME=-', NULL, 'top_panel_interface_settings', '', 0),
(57, 'top_panel_help', '', '-=AUTONAME=-', NULL, 'top_panel_help', '', 0),
(58, 'top_panel_bizproc_tasks', '', '-=AUTONAME=-', NULL, 'top_panel_bizproc_tasks', '', 0),
(59, 'top_panel_add_fav', '', '-=AUTONAME=-', NULL, 'top_panel_add_fav', NULL, 0),
(60, 'top_panel_create_page', '', '-=AUTONAME=-', NULL, 'top_panel_create_page', '', 0),
(62, 'top_panel_create_folder', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder', '', 0),
(63, 'top_panel_edit_page', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page', '', 0),
(64, 'top_panel_page_prop', '', '-=AUTONAME=-', NULL, 'top_panel_page_prop', '', 0),
(65, 'top_panel_edit_page_html', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_html', '', 0),
(67, 'top_panel_edit_page_php', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_php', '', 0),
(68, 'top_panel_del_page', '', '-=AUTONAME=-', NULL, 'top_panel_del_page', '', 0),
(69, 'top_panel_folder_prop', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop', '', 0),
(70, 'top_panel_access_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_access_folder_new', '', 0),
(71, 'main_top_panel_struct_panel', '', '-=AUTONAME=-', NULL, 'main_top_panel_struct_panel', '', 0),
(72, 'top_panel_cache_page', '', '-=AUTONAME=-', NULL, 'top_panel_cache_page', '', 0),
(73, 'top_panel_cache_comp', '', '-=AUTONAME=-', NULL, 'top_panel_cache_comp', '', 0),
(74, 'top_panel_cache_not', '', '-=AUTONAME=-', NULL, 'top_panel_cache_not', '', 0),
(75, 'top_panel_edit_mode', '', '-=AUTONAME=-', NULL, 'top_panel_edit_mode', '', 0),
(76, 'top_panel_templ_site_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site_css', '', 0),
(77, 'top_panel_templ_templ_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_templ_css', '', 0),
(78, 'top_panel_templ_site', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site', '', 0),
(81, 'top_panel_debug_time', '', '-=AUTONAME=-', NULL, 'top_panel_debug_time', '', 0),
(82, 'top_panel_debug_incl', '', '-=AUTONAME=-', NULL, 'top_panel_debug_incl', '', 0),
(83, 'top_panel_debug_sql', '', '-=AUTONAME=-', NULL, 'top_panel_debug_sql', NULL, 0),
(84, 'top_panel_debug_compr', '', '-=AUTONAME=-', NULL, 'top_panel_debug_compr', '', 0),
(85, 'MTP_SHORT_URI1', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI1', '', 0),
(86, 'MTP_SHORT_URI_LIST', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI_LIST', '', 0),
(87, 'FMST_PANEL_STICKER_ADD', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKER_ADD', '', 0),
(88, 'FMST_PANEL_STICKERS_SHOW', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS_SHOW', '', 0),
(89, 'FMST_PANEL_CUR_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_CUR_STICKER_LIST', '', 0),
(90, 'FMST_PANEL_ALL_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_ALL_STICKER_LIST', '', 0),
(91, 'top_panel_menu', 'var d=BX(\"bx-panel-menu\"); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-menu', '', 0),
(92, 'top_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(93, 'admin_panel_site', 'var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-view-tab', '', 0),
(94, 'admin_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(96, 'top_panel_folder_prop_new', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop_new', '', 0),
(97, 'main_top_panel_structure', '', '-=AUTONAME=-', NULL, 'main_top_panel_structure', '', 0),
(98, 'top_panel_clear_cache', '', '-=AUTONAME=-', NULL, 'top_panel_clear_cache', '', 0),
(99, 'top_panel_templ', '', '-=AUTONAME=-', NULL, 'top_panel_templ', '', 0),
(100, 'top_panel_debug', '', '-=AUTONAME=-', NULL, 'top_panel_debug', '', 0),
(101, 'MTP_SHORT_URI', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI', '', 0),
(102, 'FMST_PANEL_STICKERS', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS', '', 0),
(103, 'top_panel_settings', '', '-=AUTONAME=-', NULL, 'top_panel_settings', '', 0),
(104, 'top_panel_fav', '', '-=AUTONAME=-', NULL, 'top_panel_fav', '', 0),
(106, 'Global', 'location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';', 'HK_DB_SHW_HK', '', '', '', 0),
(107, 'top_panel_edit_new', '', '-=AUTONAME=-', NULL, 'top_panel_edit_new', '', 0),
(108, 'FLOW_PANEL_CREATE_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_CREATE_WITH_WF', '', 0),
(109, 'FLOW_PANEL_EDIT_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_EDIT_WITH_WF', '', 0),
(110, 'FLOW_PANEL_HISTORY', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_HISTORY', '', 0),
(111, 'top_panel_create_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_new', '', 0),
(112, 'top_panel_create_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder_new', '', 0),
(116, 'bx-panel-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-toggle', '', 0),
(117, 'bx-panel-small-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-small-toggle', '', 0),
(118, 'bx-panel-expander', 'var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');', '-=AUTONAME=-', NULL, 'bx-panel-expander', '', 0),
(119, 'bx-panel-hider', 'var d=BX(\'bx-panel-hider\'); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-hider', '', 0),
(120, 'search-textbox-input', 'var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}', '-=AUTONAME=-', '', 'search', '', 0),
(121, 'bx-search-input', 'var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }', '-=AUTONAME=-', '', 'bx-search-input', '', 0),
(133, 'bx-panel-logout', 'var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;', '-=AUTONAME=-', '', 'bx-panel-logout', '', 0),
(135, 'CDialog', 'var d=BX(\'cancel\'); if (d) d.click();', 'HK_DB_D_CANCEL', '', 'cancel', '', 0),
(136, 'CDialog', 'var d=BX(\'close\'); if (d) d.click();', 'HK_DB_D_CLOSE', '', 'close', '', 0),
(137, 'CDialog', 'var d=BX(\'savebtn\'); if (d) d.click();', 'HK_DB_D_SAVE', '', 'savebtn', '', 0),
(138, 'CDialog', 'var d=BX(\'btn_popup_save\'); if (d) d.click();', 'HK_DB_D_EDIT_SAVE', '', 'btn_popup_save', '', 0),
(139, 'Global', 'location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;', 'HK_DB_SHW_U', '', '', '', 0);
-- -----------------------------------
-- Dumping table b_iblock
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock`;
CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT 24,
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT 0,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock` VALUES
(8, '2019-12-01 11:24:43', 'nuage', 'a1', 'nuage_asortment', 'Продукция', 'Y', 500, '', '#SITE_DIR#/#ELEMENT_CODE#/', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', NULL, NULL, 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(9, '2019-12-01 11:25:44', 'nuage', 'a1', 'nuage_faq', 'Вопросы и ответы', 'Y', 500, '', '', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(10, '2019-12-01 11:26:11', 'nuage', 'a1', 'nuage_faq_reviews', 'Отзывы', 'Y', 500, '', '', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', NULL, NULL, 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(11, '2019-12-02 22:26:12', 'forms', 'a1', '', 'Обратная связь', 'Y', 500, '', '', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', NULL, NULL, 1, 0, NULL, '', '', NULL, NULL, 'Элементы', 'Элемент'),
(12, '2020-05-27 18:58:01', 'nuage', 'a1', '', 'Где купить', 'Y', 500, '', '', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', NULL, NULL, 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(13, '2021-01-26 10:35:39', 'nuage', 'a1', 'nuage_blog', 'Блог', 'Y', 500, '/blog/', '/blog/#ELEMENT_CODE#/', '/blog/tag/#SECTION_CODE#/', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, 'ab92ddce5ebfbc21821bf1d815344336', 'Y', 'Y', 'N', 'N', 'L', 'S', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(14, '2021-01-25 14:42:59', 'nuage', 'a1', 'blog_authors', 'Авторы', 'Y', 500, '#SITE_DIR#/nuage/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/nuage/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/nuage/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(15, '2021-02-15 01:31:12', 'komboflex', 'kf', 'top_slider', 'Верхний слайдер', 'Y', 100, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/komboflex/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', 'N', 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(16, '2021-02-15 01:31:32', 'komboflex', 'kf', 'advantages', 'Преимущества', 'Y', 200, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', NULL, 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(17, '2021-02-15 01:31:36', 'komboflex', 'kf', 'components', 'Компоненты', 'Y', 300, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', NULL, 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(18, '2021-07-13 14:05:43', 'komboflex', 'kf', 'safety', 'Безопасность', 'Y', 400, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(19, '2021-02-15 01:31:42', 'komboflex', 'kf', 'features', 'Особенности', 'Y', 500, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', NULL, 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(20, '2021-07-13 15:26:58', 'komboflex', 'kf', 'recommendations', 'Рекомендации по применению', 'Y', 600, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, 'f428ca8981bef6f6ad1abc4cb77f8807', 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', NULL, 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(21, '2021-02-15 01:31:46', 'komboflex', 'kf', 'composition', 'Состав', 'Y', 700, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/komboflex/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', NULL, 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(22, '2021-02-15 01:31:49', 'komboflex', 'kf', 'production', 'О производстве', 'Y', 800, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/komboflex/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', NULL, 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(23, '2021-02-15 01:31:52', 'komboflex', 'kf', 'information', 'Полезная информация', 'Y', 900, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/info/#ELEMENT_CODE#/', '#SITE_DIR#/komboflex/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', 'N', 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(24, '2021-02-15 15:54:59', 'komboflex', 'kf', 'where_buy', 'Где купить', 'Y', 1000, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/komboflex/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 2, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(25, '2021-02-15 01:31:58', 'komboflex', 'kf', 'general', 'Общие данные', 'Y', 1500, '#SITE_DIR#/komboflex/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/komboflex/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/komboflex/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'Y', NULL, 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(26, '2021-09-03 11:03:14', 'gasit', 'ga', 'about', 'О препарате', 'Y', 100, '#SITE_DIR#/gasit/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/gasit/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 2, 0, NULL, '', '', NULL, NULL, 'Элементы', 'Элемент'),
(27, '2021-09-03 12:11:02', 'gasit', 'ga', 'how_works', 'Действие препарата', 'Y', 200, '#SITE_DIR#/gasit/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/gasit/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 2, 0, NULL, '', '', NULL, NULL, 'Элементы', 'Элемент'),
(28, '2021-09-03 12:53:43', 'gasit', 'ga', 'usage', 'Способ применения', 'Y', 300, '#SITE_DIR#/gasit/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/gasit/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 2, 0, NULL, '', '', NULL, NULL, 'Элементы', 'Элемент'),
(29, '2021-09-03 13:04:50', 'gasit', 'ga', 'indications', 'Показания к применению', 'Y', 400, '#SITE_DIR#/gasit/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/gasit/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 2, 0, NULL, '', '', NULL, NULL, 'Показания', 'Показание'),
(30, '2021-09-03 14:43:18', 'gasit', 'ga', 'where_buy', 'Где купить', 'Y', 600, '#SITE_DIR#/gasit/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/gasit/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 2, 0, NULL, '', '', NULL, NULL, 'Аптеки', 'Аптека'),
(31, '2021-09-03 14:42:40', 'gasit', 'ga', 'video', 'Видео', 'Y', 500, '#SITE_DIR#/gasit/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/gasit/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', NULL, NULL, 2, 0, NULL, '', '', NULL, NULL, 'Элементы', 'Элемент'),
(32, '2021-09-03 15:33:45', 'gasit', 'ga', 'common', 'Общие сведения', 'Y', 1000, '#SITE_DIR#/gasit/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/gasit/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'L', 'C', 'S', 'N', 'N', 2, 0, NULL, '', '', NULL, NULL, 'Элементы', 'Элемент');
-- -----------------------------------
-- Dumping table b_iblock_cache
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_cache`;
CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL,
  PRIMARY KEY (`CACHE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element`;
CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT 0,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_STATUS_ID` int(18) DEFAULT 1,
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element` VALUES
(469, '2020-04-02 07:50:50', 1, '2018-06-25 18:43:16', 2, 8, NULL, 'N', NULL, NULL, 500, 'Light', NULL, 'Миниатюрные прокладки с крылышками Nuage br\r\nLight специально созданы для женщин br\r\nc  необильными менструальными выделениями', 'html', NULL, '', 'text', 'LIGHT\r\nМИНИАТЮРНЫЕ ПРОКЛАДКИ С КРЫЛЫШКАМИ NUAGE \r\nBR LIGHT СПЕЦИАЛЬНО СОЗДАНЫ ДЛЯ ЖЕНЩИН BR C НЕОБИЛЬНЫМИ \r\nМЕНСТРУАЛЬНЫМИ ВЫДЕЛЕНИЯМИ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '469', 'light', '', '0', NULL, NULL, NULL),
(470, '2021-06-18 13:28:06', 1, '2018-06-26 12:26:00', 1, 8, NULL, 'Y', NULL, NULL, 501, 'Normal', 407, 'Прокладки Nuage Normal при нормальных выделениях, с нежной микроперфорированной поверхностью или с мягкой сеточкой', 'text', NULL, '', 'text', 'NORMAL\r\nПРОКЛАДКИ NUAGE NORMAL ПРИ НОРМАЛЬНЫХ ВЫДЕЛЕНИЯХ, С НЕЖНОЙ МИКРОПЕРФОРИРОВАННОЙ ПОВЕРХНОСТЬЮ ИЛИ С МЯГКОЙ СЕТОЧКОЙ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '470', 'normal', '', '0', NULL, NULL, NULL),
(471, '2021-06-18 13:27:42', 1, '2018-06-26 12:30:51', 1, 8, NULL, 'Y', NULL, NULL, 502, 'Super', 400, 'Прокладки Nuage Super для обильных выделений с увеличенной скоростью и объемом впитывания', 'html', NULL, '', 'text', 'SUPER\r\nПРОКЛАДКИ NUAGE SUPER ДЛЯ ОБИЛЬНЫХ ВЫДЕЛЕНИЙ \r\nС УВЕЛИЧЕННОЙ СКОРОСТЬЮ И ОБЪЕМОМ ВПИТЫВАНИЯ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '471', 'super', '', '0', NULL, NULL, NULL),
(472, '2021-06-18 13:28:14', 1, '2018-06-26 12:48:09', 1, 8, NULL, 'Y', NULL, NULL, 503, 'Night', 404, 'Прокладки Nuage Night ночные удлиненные br\r\nс нежной микроперфорированной поверхностью br\r\nили с мягкой сеточкой', 'html', NULL, '', 'text', 'NIGHT\r\nПРОКЛАДКИ NUAGE NIGHT НОЧНЫЕ УДЛИНЕННЫЕ BR С \r\nНЕЖНОЙ МИКРОПЕРФОРИРОВАННОЙ ПОВЕРХНОСТЬЮ \r\nBR ИЛИ С МЯГКОЙ СЕТОЧКОЙ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '472', 'night', '', '0', NULL, NULL, NULL),
(473, '2021-06-18 13:27:49', 1, '2018-06-26 13:12:58', 1, 8, NULL, 'Y', NULL, NULL, 504, 'Night Plus', 409, 'Ночные прокладки Nuage Night Plus специальной формы, длиной 36 сантиметров, с мягкой поверхностью, при очень обильных выделениях', 'text', NULL, '', 'text', 'NIGHT PLUS\r\nНОЧНЫЕ ПРОКЛАДКИ NUAGE NIGHT PLUS СПЕЦИАЛЬНОЙ ФОРМЫ, ДЛИНОЙ 36 САНТИМЕТРОВ, С МЯГКОЙ ПОВЕРХНОСТЬЮ, ПРИ ОЧЕНЬ ОБИЛЬНЫХ ВЫДЕЛЕНИЯХ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '473', 'night_plus', '', '0', NULL, NULL, NULL),
(474, '2021-06-18 13:27:57', 1, '2018-06-26 13:31:26', 1, 8, NULL, 'Y', NULL, NULL, 505, 'Daily', 408, 'Ежедневные прокладки классической формы, повторяющей изгибы тела', 'html', NULL, '', 'text', 'DAILY\r\nЕЖЕДНЕВНЫЕ ПРОКЛАДКИ КЛАССИЧЕСКОЙ ФОРМЫ, \r\nПОВТОРЯЮЩЕЙ ИЗГИБЫ ТЕЛА\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '474', 'daily', '', '0', NULL, NULL, NULL),
(475, '2018-06-26 14:25:09', 1, '2018-06-26 14:25:09', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Сколько идут месячные после родов?', NULL, 'Регулярность и продолжительность цикла после родов может измениться, в целом цикл, с момента восстановления, может быть нерегулярным еще 4-6 месяцев. Слишком короткие или слишком длинные месячные должны стать поводом обратиться к врачу. То же касается обильности выделений, малое количество выделений, как и слишком обильные месячные после родов, должны насторожить женщину. Часто после родов женщина всецело посвящает себя ребенку и на себя совсем не остается времени, однако стоит помнить, что профилактические осмотры врача-гинеколога рекомендуется делать каждые 6 месяцев.', 'text', NULL, '', 'text', 'СКОЛЬКО ИДУТ МЕСЯЧНЫЕ ПОСЛЕ РОДОВ?\r\nРЕГУЛЯРНОСТЬ И ПРОДОЛЖИТЕЛЬНОСТЬ ЦИКЛА ПОСЛЕ РОДОВ МОЖЕТ ИЗМЕНИТЬСЯ, В ЦЕЛОМ ЦИКЛ, С МОМЕНТА ВОССТАНОВЛЕНИЯ, МОЖЕТ БЫТЬ НЕРЕГУЛЯРНЫМ ЕЩЕ 4-6 МЕСЯЦЕВ. СЛИШКОМ КОРОТКИЕ ИЛИ СЛИШКОМ ДЛИННЫЕ МЕСЯЧНЫЕ ДОЛЖНЫ СТАТЬ ПОВОДОМ ОБРАТИТЬСЯ К ВРАЧУ. ТО ЖЕ КАСАЕТСЯ ОБИЛЬНОСТИ ВЫДЕЛЕНИЙ, МАЛОЕ КОЛИЧЕСТВО ВЫДЕЛЕНИЙ, КАК И СЛИШКОМ ОБИЛЬНЫЕ МЕСЯЧНЫЕ ПОСЛЕ РОДОВ, ДОЛЖНЫ НАСТОРОЖИТЬ ЖЕНЩИНУ. ЧАСТО ПОСЛЕ РОДОВ ЖЕНЩИНА ВСЕЦЕЛО ПОСВЯЩАЕТ СЕБЯ РЕБЕНКУ И НА СЕБЯ СОВСЕМ НЕ ОСТАЕТСЯ ВРЕМЕНИ, ОДНАКО СТОИТ ПОМНИТЬ, ЧТО ПРОФИЛАКТИЧЕСКИЕ ОСМОТРЫ ВРАЧА-ГИНЕКОЛОГА РЕКОМЕНДУЕТСЯ ДЕЛАТЬ КАЖДЫЕ 6 МЕСЯЦЕВ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '475', '', '', '0', NULL, NULL, NULL),
(476, '2018-06-26 14:26:25', 1, '2018-06-26 14:26:25', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Влияет ли кесарево сечение на восстановление менструаций?', NULL, 'Восстановление цикла не зависит от того, каким путем ребенок появился на свет.', 'text', NULL, '', 'text', 'ВЛИЯЕТ ЛИ КЕСАРЕВО СЕЧЕНИЕ НА ВОССТАНОВЛЕНИЕ МЕНСТРУАЦИЙ?\r\nВОССТАНОВЛЕНИЕ ЦИКЛА НЕ ЗАВИСИТ ОТ ТОГО, КАКИМ ПУТЕМ РЕБЕНОК ПОЯВИЛСЯ НА СВЕТ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '476', '', '', '0', NULL, NULL, NULL),
(477, '2018-06-26 14:26:42', 1, '2018-06-26 14:26:42', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Как скоро начинаются месячные после родов?', NULL, 'Многих женщин интересует вопрос, когда начинаются первые месячные после родов. Если женщина не кормит грудью, то менструальный цикл восстанавливается через 6-8 недель. Организм каждой женщины имеет свои особенности, поэтому время восстановления может растянуться до 10-12 недель. Месячные после родов при грудном вскармливании могут не наступить вплоть до введения прикорма. Это зависит от многих условий, например, менструальный цикл быстрее восстанавливается, если малыша кормят смесями, грудным молоком из бутылочки, а не от груди, или в ночное время возрастает интервал в кормлении. На то, когда приходят месячные после родов влияют и другие факторы: течение беременности и осложнения родов, возраст женщины, соблюдение режима сна и отдыха, наличие хронических заболеваний, психологическое состояние. На то, когда приходят месячные после родов влияют и другие факторы: течение беременности и осложнения родов, возраст женщины, соблюдение режима сна и отдыха, наличие хронических заболеваний, психологическое состояние.', 'text', NULL, '', 'text', 'КАК СКОРО НАЧИНАЮТСЯ МЕСЯЧНЫЕ ПОСЛЕ РОДОВ?\r\nМНОГИХ ЖЕНЩИН ИНТЕРЕСУЕТ ВОПРОС, КОГДА НАЧИНАЮТСЯ ПЕРВЫЕ МЕСЯЧНЫЕ ПОСЛЕ РОДОВ. ЕСЛИ ЖЕНЩИНА НЕ КОРМИТ ГРУДЬЮ, ТО МЕНСТРУАЛЬНЫЙ ЦИКЛ ВОССТАНАВЛИВАЕТСЯ ЧЕРЕЗ 6-8 НЕДЕЛЬ. ОРГАНИЗМ КАЖДОЙ ЖЕНЩИНЫ ИМЕЕТ СВОИ ОСОБЕННОСТИ, ПОЭТОМУ ВРЕМЯ ВОССТАНОВЛЕНИЯ МОЖЕТ РАСТЯНУТЬСЯ ДО 10-12 НЕДЕЛЬ. МЕСЯЧНЫЕ ПОСЛЕ РОДОВ ПРИ ГРУДНОМ ВСКАРМЛИВАНИИ МОГУТ НЕ НАСТУПИТЬ ВПЛОТЬ ДО ВВЕДЕНИЯ ПРИКОРМА. ЭТО ЗАВИСИТ ОТ МНОГИХ УСЛОВИЙ, НАПРИМЕР, МЕНСТРУАЛЬНЫЙ ЦИКЛ БЫСТРЕЕ ВОССТАНАВЛИВАЕТСЯ, ЕСЛИ МАЛЫША КОРМЯТ СМЕСЯМИ, ГРУДНЫМ МОЛОКОМ ИЗ БУТЫЛОЧКИ, А НЕ ОТ ГРУДИ, ИЛИ В НОЧНОЕ ВРЕМЯ ВОЗРАСТАЕТ ИНТЕРВАЛ В КОРМЛЕНИИ. НА ТО, КОГДА ПРИХОДЯТ МЕСЯЧНЫЕ ПОСЛЕ РОДОВ ВЛИЯЮТ И ДРУГИЕ ФАКТОРЫ: ТЕЧЕНИЕ БЕРЕМЕННОСТИ И ОСЛОЖНЕНИЯ РОДОВ, ВОЗРАСТ ЖЕНЩИНЫ, СОБЛЮДЕНИЕ РЕЖИМА СНА И ОТДЫХА, НАЛИЧИЕ ХРОНИЧЕСКИХ ЗАБОЛЕВАНИЙ, ПСИХОЛОГИЧЕСКОЕ СОСТОЯНИЕ. НА ТО, КОГДА ПРИХОДЯТ МЕСЯЧНЫЕ ПОСЛЕ РОДОВ ВЛИЯЮТ И ДРУГИЕ ФАКТОРЫ: ТЕЧЕНИЕ БЕРЕМЕННОСТИ И ОСЛОЖНЕНИЯ РОДОВ, ВОЗРАСТ ЖЕНЩИНЫ, СОБЛЮДЕНИЕ РЕЖИМА СНА И ОТДЫХА, НАЛИЧИЕ ХРОНИЧЕСКИХ ЗАБОЛЕВАНИЙ, ПСИХОЛОГИЧЕСКОЕ СОСТОЯНИЕ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '477', '', '', '0', NULL, NULL, NULL),
(478, '2018-06-26 14:26:58', 1, '2018-06-26 14:26:58', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Можно ли сдавать кровь во время месячных?', NULL, 'Несмотря на то, что прямых противопоказаний сдаче крови на анализ во время месячных нет, большинство специалистов рекомендуют делать это на 3-5 день после окончания менструации. Результаты анализа крови во время месячных могут быть искажены – это связано с тем, что во время менструаций падает уровень гемоглобина в крови, повышается свертываемость, меняется активность эритроцитов, количество тромбоцитов и другие показатели. Однако во время месячных сдавать кровь на анализ все-таки можно, если Вам назначен анализ на гормоны, а также на RW (на сифилис). Если вы хотите сдать донорскую кровь, то вам тем более стоит дождаться окончания месячных, через 5-7 дней после менструации вы можете стать донором. Сдача крови во время месячных может быть чревата плохим самочувствием и усилением кровотечения.', 'text', NULL, '', 'text', 'МОЖНО ЛИ СДАВАТЬ КРОВЬ ВО ВРЕМЯ МЕСЯЧНЫХ?\r\nНЕСМОТРЯ НА ТО, ЧТО ПРЯМЫХ ПРОТИВОПОКАЗАНИЙ СДАЧЕ КРОВИ НА АНАЛИЗ ВО ВРЕМЯ МЕСЯЧНЫХ НЕТ, БОЛЬШИНСТВО СПЕЦИАЛИСТОВ РЕКОМЕНДУЮТ ДЕЛАТЬ ЭТО НА 3-5 ДЕНЬ ПОСЛЕ ОКОНЧАНИЯ МЕНСТРУАЦИИ. РЕЗУЛЬТАТЫ АНАЛИЗА КРОВИ ВО ВРЕМЯ МЕСЯЧНЫХ МОГУТ БЫТЬ ИСКАЖЕНЫ – ЭТО СВЯЗАНО С ТЕМ, ЧТО ВО ВРЕМЯ МЕНСТРУАЦИЙ ПАДАЕТ УРОВЕНЬ ГЕМОГЛОБИНА В КРОВИ, ПОВЫШАЕТСЯ СВЕРТЫВАЕМОСТЬ, МЕНЯЕТСЯ АКТИВНОСТЬ ЭРИТРОЦИТОВ, КОЛИЧЕСТВО ТРОМБОЦИТОВ И ДРУГИЕ ПОКАЗАТЕЛИ. ОДНАКО ВО ВРЕМЯ МЕСЯЧНЫХ СДАВАТЬ КРОВЬ НА АНАЛИЗ ВСЕ-ТАКИ МОЖНО, ЕСЛИ ВАМ НАЗНАЧЕН АНАЛИЗ НА ГОРМОНЫ, А ТАКЖЕ НА RW (НА СИФИЛИС). ЕСЛИ ВЫ ХОТИТЕ СДАТЬ ДОНОРСКУЮ КРОВЬ, ТО ВАМ ТЕМ БОЛЕЕ СТОИТ ДОЖДАТЬСЯ ОКОНЧАНИЯ МЕСЯЧНЫХ, ЧЕРЕЗ 5-7 ДНЕЙ ПОСЛЕ МЕНСТРУАЦИИ ВЫ МОЖЕТЕ СТАТЬ ДОНОРОМ. СДАЧА КРОВИ ВО ВРЕМЯ МЕСЯЧНЫХ МОЖЕТ БЫТЬ ЧРЕВАТА ПЛОХИМ САМОЧУВСТВИЕМ И УСИЛЕНИЕМ КРОВОТЕЧЕНИЯ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '478', '', '', '0', NULL, NULL, NULL),
(479, '2018-06-26 14:27:14', 1, '2018-06-26 14:27:14', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Можно ли заниматься сексом во время месячных?', NULL, 'Если верить женским журналам, женщины склонны чаще мужчин отказываться от интимной близости из-за того, что у них менструация. Однако, стоит обсудить этот вопрос с партнером до того, как вы перейдете к активным действиям. С научной точки зрения, никаких противопоказаний нет. Если вы не испытываете дискомфорта, секс во время месячных вполне возможен. Но не верьте распространенному мифу о том, что во время менструаций невозможно забеременеть. Это миф! Тем более, что секс во время месячных не гарантирует вам также и защиту от инфекций, передающимися половым путем. Используйте барьерные методы контрацепции (презервативы).', 'text', NULL, '', 'text', 'МОЖНО ЛИ ЗАНИМАТЬСЯ СЕКСОМ ВО ВРЕМЯ МЕСЯЧНЫХ?\r\nЕСЛИ ВЕРИТЬ ЖЕНСКИМ ЖУРНАЛАМ, ЖЕНЩИНЫ СКЛОННЫ ЧАЩЕ МУЖЧИН ОТКАЗЫВАТЬСЯ ОТ ИНТИМНОЙ БЛИЗОСТИ ИЗ-ЗА ТОГО, ЧТО У НИХ МЕНСТРУАЦИЯ. ОДНАКО, СТОИТ ОБСУДИТЬ ЭТОТ ВОПРОС С ПАРТНЕРОМ ДО ТОГО, КАК ВЫ ПЕРЕЙДЕТЕ К АКТИВНЫМ ДЕЙСТВИЯМ. С НАУЧНОЙ ТОЧКИ ЗРЕНИЯ, НИКАКИХ ПРОТИВОПОКАЗАНИЙ НЕТ. ЕСЛИ ВЫ НЕ ИСПЫТЫВАЕТЕ ДИСКОМФОРТА, СЕКС ВО ВРЕМЯ МЕСЯЧНЫХ ВПОЛНЕ ВОЗМОЖЕН. НО НЕ ВЕРЬТЕ РАСПРОСТРАНЕННОМУ МИФУ О ТОМ, ЧТО ВО ВРЕМЯ МЕНСТРУАЦИЙ НЕВОЗМОЖНО ЗАБЕРЕМЕНЕТЬ. ЭТО МИФ! ТЕМ БОЛЕЕ, ЧТО СЕКС ВО ВРЕМЯ МЕСЯЧНЫХ НЕ ГАРАНТИРУЕТ ВАМ ТАКЖЕ И ЗАЩИТУ ОТ ИНФЕКЦИЙ, ПЕРЕДАЮЩИМИСЯ ПОЛОВЫМ ПУТЕМ. ИСПОЛЬЗУЙТЕ БАРЬЕРНЫЕ МЕТОДЫ КОНТРАЦЕПЦИИ (ПРЕЗЕРВАТИВЫ).\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '479', '', '', '0', NULL, NULL, NULL),
(480, '2018-06-26 14:27:32', 1, '2018-06-26 14:27:32', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Можно ли заниматься спортом во время месячных?', NULL, 'Спорт во время месячных не только не противопоказан, но и полезен. Существует мнение, что умеренные спортивные нагрузки способны снизить неприятные ощущения и боль в первые дни менструации, не говоря уже о том, что спорт во время месячных повышает настроение. Ориентируйтесь на собственные ощущения, если вы чувствуете легкий дискомфорт – это не повод отказываться от тренировки. Используйте усиленные меры защиты, например, прокладки увеличенного размера и уровня впитываемости Nuage Night Plus. Они достаточно тонкие, чтобы быть незаметными под не слишком облегающей спортивной одеждой. Предпочтите более легкий уровень нагрузки, выберите йогу или суставную гимнастику.', 'text', NULL, '', 'text', 'МОЖНО ЛИ ЗАНИМАТЬСЯ СПОРТОМ ВО ВРЕМЯ МЕСЯЧНЫХ?\r\nСПОРТ ВО ВРЕМЯ МЕСЯЧНЫХ НЕ ТОЛЬКО НЕ ПРОТИВОПОКАЗАН, НО И ПОЛЕЗЕН. СУЩЕСТВУЕТ МНЕНИЕ, ЧТО УМЕРЕННЫЕ СПОРТИВНЫЕ НАГРУЗКИ СПОСОБНЫ СНИЗИТЬ НЕПРИЯТНЫЕ ОЩУЩЕНИЯ И БОЛЬ В ПЕРВЫЕ ДНИ МЕНСТРУАЦИИ, НЕ ГОВОРЯ УЖЕ О ТОМ, ЧТО СПОРТ ВО ВРЕМЯ МЕСЯЧНЫХ ПОВЫШАЕТ НАСТРОЕНИЕ. ОРИЕНТИРУЙТЕСЬ НА СОБСТВЕННЫЕ ОЩУЩЕНИЯ, ЕСЛИ ВЫ ЧУВСТВУЕТЕ ЛЕГКИЙ ДИСКОМФОРТ – ЭТО НЕ ПОВОД ОТКАЗЫВАТЬСЯ ОТ ТРЕНИРОВКИ. ИСПОЛЬЗУЙТЕ УСИЛЕННЫЕ МЕРЫ ЗАЩИТЫ, НАПРИМЕР, ПРОКЛАДКИ УВЕЛИЧЕННОГО РАЗМЕРА И УРОВНЯ ВПИТЫВАЕМОСТИ NUAGE NIGHT PLUS. ОНИ ДОСТАТОЧНО ТОНКИЕ, ЧТОБЫ БЫТЬ НЕЗАМЕТНЫМИ ПОД НЕ СЛИШКОМ ОБЛЕГАЮЩЕЙ СПОРТИВНОЙ ОДЕЖДОЙ. ПРЕДПОЧТИТЕ БОЛЕЕ ЛЕГКИЙ УРОВЕНЬ НАГРУЗКИ, ВЫБЕРИТЕ ЙОГУ ИЛИ СУСТАВНУЮ ГИМНАСТИКУ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '480', '', '', '0', NULL, NULL, NULL),
(481, '2018-06-26 14:27:51', 1, '2018-06-26 14:27:51', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Можно ли купаться и ходить в бассейн во время месячных?', NULL, 'Нет никаких противопоказаний для купания во время менструаций. Чтобы обеспечить максимальный комфорт во время купания достаточно следовать простым рекомендациям. 1. Не купайтесь с прокладкой. Женские гигиенические прокладки не предназначены для купания. Они начнут впитывать жидкость и не смогут выполнять отведенную им роль, более того, это может стать причиной не только протечек, но и возникновения неприятного запаха. Для купания вы можете использовать другие средства гигиены, например, тампоны. Но не забывайте менять их каждые 3-4 часа. 2. Если ранее вы не использовали тампоны и не имеете никаких противопоказаний (рекомендаций врача) по использованию данного средства гигиены, изучите инструкцию и предварительно попробуйте использовать их до того момента, когда отправитесь на пляж или в бассейн. 3. Если вы чувствуете себя неуверенно, попросите подругу регулярно «оценивать обстановку», и предупредить вас в случае возникновения неожиданной проблемы. Или просто наденьте купальник с плавками темного цвета.', 'text', NULL, '', 'text', 'МОЖНО ЛИ КУПАТЬСЯ И ХОДИТЬ В БАССЕЙН ВО ВРЕМЯ МЕСЯЧНЫХ?\r\nНЕТ НИКАКИХ ПРОТИВОПОКАЗАНИЙ ДЛЯ КУПАНИЯ ВО ВРЕМЯ МЕНСТРУАЦИЙ. ЧТОБЫ ОБЕСПЕЧИТЬ МАКСИМАЛЬНЫЙ КОМФОРТ ВО ВРЕМЯ КУПАНИЯ ДОСТАТОЧНО СЛЕДОВАТЬ ПРОСТЫМ РЕКОМЕНДАЦИЯМ. 1. НЕ КУПАЙТЕСЬ С ПРОКЛАДКОЙ. ЖЕНСКИЕ ГИГИЕНИЧЕСКИЕ ПРОКЛАДКИ НЕ ПРЕДНАЗНАЧЕНЫ ДЛЯ КУПАНИЯ. ОНИ НАЧНУТ ВПИТЫВАТЬ ЖИДКОСТЬ И НЕ СМОГУТ ВЫПОЛНЯТЬ ОТВЕДЕННУЮ ИМ РОЛЬ, БОЛЕЕ ТОГО, ЭТО МОЖЕТ СТАТЬ ПРИЧИНОЙ НЕ ТОЛЬКО ПРОТЕЧЕК, НО И ВОЗНИКНОВЕНИЯ НЕПРИЯТНОГО ЗАПАХА. ДЛЯ КУПАНИЯ ВЫ МОЖЕТЕ ИСПОЛЬЗОВАТЬ ДРУГИЕ СРЕДСТВА ГИГИЕНЫ, НАПРИМЕР, ТАМПОНЫ. НО НЕ ЗАБЫВАЙТЕ МЕНЯТЬ ИХ КАЖДЫЕ 3-4 ЧАСА. 2. ЕСЛИ РАНЕЕ ВЫ НЕ ИСПОЛЬЗОВАЛИ ТАМПОНЫ И НЕ ИМЕЕТЕ НИКАКИХ ПРОТИВОПОКАЗАНИЙ (РЕКОМЕНДАЦИЙ ВРАЧА) ПО ИСПОЛЬЗОВАНИЮ ДАННОГО СРЕДСТВА ГИГИЕНЫ, ИЗУЧИТЕ ИНСТРУКЦИЮ И ПРЕДВАРИТЕЛЬНО ПОПРОБУЙТЕ ИСПОЛЬЗОВАТЬ ИХ ДО ТОГО МОМЕНТА, КОГДА ОТПРАВИТЕСЬ НА ПЛЯЖ ИЛИ В БАССЕЙН. 3. ЕСЛИ ВЫ ЧУВСТВУЕТЕ СЕБЯ НЕУВЕРЕННО, ПОПРОСИТЕ ПОДРУГУ РЕГУЛЯРНО «ОЦЕНИВАТЬ ОБСТАНОВКУ», И ПРЕДУПРЕДИТЬ ВАС В СЛУЧАЕ ВОЗНИКНОВЕНИЯ НЕОЖИДАННОЙ ПРОБЛЕМЫ. ИЛИ ПРОСТО НАДЕНЬТЕ КУПАЛЬНИК С ПЛАВКАМИ ТЕМНОГО ЦВЕТА.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '481', '', '', '0', NULL, NULL, NULL),
(482, '2018-06-26 14:28:07', 1, '2018-06-26 14:28:07', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Можно ли вести привычный образ жизни во время месячных?', NULL, 'Многих женщин интересует, можно ли во время месячных заниматься привычными делами. Конечно, менструации не должны кардинально влиять на наш ритм жизни, однако, если ваше самочувствие не позволяет вам быть столь же активной во время месячных, как без них, вы вполне можете немного замедлить ритм и позволить себе отдых. Ниже вы найдете ответы на самые распространенные вопросы: «можно ли во время месячных…»?', 'text', NULL, '', 'text', 'МОЖНО ЛИ ВЕСТИ ПРИВЫЧНЫЙ ОБРАЗ ЖИЗНИ ВО ВРЕМЯ МЕСЯЧНЫХ?\r\nМНОГИХ ЖЕНЩИН ИНТЕРЕСУЕТ, МОЖНО ЛИ ВО ВРЕМЯ МЕСЯЧНЫХ ЗАНИМАТЬСЯ ПРИВЫЧНЫМИ ДЕЛАМИ. КОНЕЧНО, МЕНСТРУАЦИИ НЕ ДОЛЖНЫ КАРДИНАЛЬНО ВЛИЯТЬ НА НАШ РИТМ ЖИЗНИ, ОДНАКО, ЕСЛИ ВАШЕ САМОЧУВСТВИЕ НЕ ПОЗВОЛЯЕТ ВАМ БЫТЬ СТОЛЬ ЖЕ АКТИВНОЙ ВО ВРЕМЯ МЕСЯЧНЫХ, КАК БЕЗ НИХ, ВЫ ВПОЛНЕ МОЖЕТЕ НЕМНОГО ЗАМЕДЛИТЬ РИТМ И ПОЗВОЛИТЬ СЕБЕ ОТДЫХ. НИЖЕ ВЫ НАЙДЕТЕ ОТВЕТЫ НА САМЫЕ РАСПРОСТРАНЕННЫЕ ВОПРОСЫ: «МОЖНО ЛИ ВО ВРЕМЯ МЕСЯЧНЫХ…»?\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '482', '', '', '0', NULL, NULL, NULL),
(483, '2018-06-26 14:28:21', 1, '2018-06-26 14:28:21', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Какими симптомами сопровождаются боли внизу живота у женщин?', NULL, 'Часто женщины отмечают, что в дни перед месячными и первые дни менструаций у них болит поясница и низ живота, частым спутником болезненных ощущений могут быть тошнота, рвота, головокружения, общая слабость, повышенная потливость, головная боль и расстройство стула (диарея). Важно! Иногда наши друзья, родственники, коллеги, и даже доктор не принимают боли при месячных всерьез, ссылаясь на то, что это «естественно». Но сильные боли внизу живота, которые выбивают нас из колеи на несколько дней в месяц, не могут быть чем-то «естественным». Если вас беспокоят сильные боли во время месячных – это повод обратиться к врачу-гинекологу; если низ живота болит неделю и более, если боли и кровотечения повторяются не только во время месячных, но и в другое время цикла, незамедлительно обратитесь к специалисту. Это поможет избежать осложнений и провести диагностику возможных проблем.', 'text', NULL, '', 'text', 'КАКИМИ СИМПТОМАМИ СОПРОВОЖДАЮТСЯ БОЛИ ВНИЗУ ЖИВОТА У ЖЕНЩИН?\r\nЧАСТО ЖЕНЩИНЫ ОТМЕЧАЮТ, ЧТО В ДНИ ПЕРЕД МЕСЯЧНЫМИ И ПЕРВЫЕ ДНИ МЕНСТРУАЦИЙ У НИХ БОЛИТ ПОЯСНИЦА И НИЗ ЖИВОТА, ЧАСТЫМ СПУТНИКОМ БОЛЕЗНЕННЫХ ОЩУЩЕНИЙ МОГУТ БЫТЬ ТОШНОТА, РВОТА, ГОЛОВОКРУЖЕНИЯ, ОБЩАЯ СЛАБОСТЬ, ПОВЫШЕННАЯ ПОТЛИВОСТЬ, ГОЛОВНАЯ БОЛЬ И РАССТРОЙСТВО СТУЛА (ДИАРЕЯ). ВАЖНО! ИНОГДА НАШИ ДРУЗЬЯ, РОДСТВЕННИКИ, КОЛЛЕГИ, И ДАЖЕ ДОКТОР НЕ ПРИНИМАЮТ БОЛИ ПРИ МЕСЯЧНЫХ ВСЕРЬЕЗ, ССЫЛАЯСЬ НА ТО, ЧТО ЭТО «ЕСТЕСТВЕННО». НО СИЛЬНЫЕ БОЛИ ВНИЗУ ЖИВОТА, КОТОРЫЕ ВЫБИВАЮТ НАС ИЗ КОЛЕИ НА НЕСКОЛЬКО ДНЕЙ В МЕСЯЦ, НЕ МОГУТ БЫТЬ ЧЕМ-ТО «ЕСТЕСТВЕННЫМ». ЕСЛИ ВАС БЕСПОКОЯТ СИЛЬНЫЕ БОЛИ ВО ВРЕМЯ МЕСЯЧНЫХ – ЭТО ПОВОД ОБРАТИТЬСЯ К ВРАЧУ-ГИНЕКОЛОГУ; ЕСЛИ НИЗ ЖИВОТА БОЛИТ НЕДЕЛЮ И БОЛЕЕ, ЕСЛИ БОЛИ И КРОВОТЕЧЕНИЯ ПОВТОРЯЮТСЯ НЕ ТОЛЬКО ВО ВРЕМЯ МЕСЯЧНЫХ, НО И В ДРУГОЕ ВРЕМЯ ЦИКЛА, НЕЗАМЕДЛИТЕЛЬНО ОБРАТИТЕСЬ К СПЕЦИАЛИСТУ. ЭТО ПОМОЖЕТ ИЗБЕЖАТЬ ОСЛОЖНЕНИЙ И ПРОВЕСТИ ДИАГНОСТИКУ ВОЗМОЖНЫХ ПРОБЛЕМ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '483', '', '', '0', NULL, NULL, NULL),
(484, '2018-06-26 14:28:39', 1, '2018-06-26 14:28:39', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Почему при месячных сильно болит низ живота?', NULL, 'Периодические боли, или сильные боли при месячных, достаточно распространены, большинство женщин испытывают боли различной степени интенсивности по разным причинам во время периода. 10 из 100 женщин отмечают, что то, как сильно болит низ живота влияет на их качество жизни в худшую сторону. Они вынуждены отказываться от запланированных дел на 1-3 дня каждый месяц. Причин, почему болит низ живота у женщин, может быть несколько. Такой боли соответствует специальный медицинский термин – дисменорея (альгоменорея). Врачи разделяют понятия первичной и вторичной дисменореи. Боли внизу живота средней и сильной степени интенсивности больше характерны для женщин в возрасте до 30 лет. Интенсивность боли обычно снижается с возрастом, а также со временем, с момента, когда наступили самые первые месячные, либо с рождением первого ребенка. Это первичная дисменорея. Вторичная дисменорея возникает обычно через несколько лет после начала первых менструаций и может быть связана с серьезными заболеваниями: эндометриоз, хронический сальпингит, аднексит, фиброиды (образования) в матке, инфекции, передающиеся половым путем и пр. Иногда вторичная дисменорея может быть спровоцирована использованием внутриматочных контрацептивов (спираль внутриматочная).', 'text', NULL, '', 'text', 'ПОЧЕМУ ПРИ МЕСЯЧНЫХ СИЛЬНО БОЛИТ НИЗ ЖИВОТА?\r\nПЕРИОДИЧЕСКИЕ БОЛИ, ИЛИ СИЛЬНЫЕ БОЛИ ПРИ МЕСЯЧНЫХ, ДОСТАТОЧНО РАСПРОСТРАНЕНЫ, БОЛЬШИНСТВО ЖЕНЩИН ИСПЫТЫВАЮТ БОЛИ РАЗЛИЧНОЙ СТЕПЕНИ ИНТЕНСИВНОСТИ ПО РАЗНЫМ ПРИЧИНАМ ВО ВРЕМЯ ПЕРИОДА. 10 ИЗ 100 ЖЕНЩИН ОТМЕЧАЮТ, ЧТО ТО, КАК СИЛЬНО БОЛИТ НИЗ ЖИВОТА ВЛИЯЕТ НА ИХ КАЧЕСТВО ЖИЗНИ В ХУДШУЮ СТОРОНУ. ОНИ ВЫНУЖДЕНЫ ОТКАЗЫВАТЬСЯ ОТ ЗАПЛАНИРОВАННЫХ ДЕЛ НА 1-3 ДНЯ КАЖДЫЙ МЕСЯЦ. ПРИЧИН, ПОЧЕМУ БОЛИТ НИЗ ЖИВОТА У ЖЕНЩИН, МОЖЕТ БЫТЬ НЕСКОЛЬКО. ТАКОЙ БОЛИ СООТВЕТСТВУЕТ СПЕЦИАЛЬНЫЙ МЕДИЦИНСКИЙ ТЕРМИН – ДИСМЕНОРЕЯ (АЛЬГОМЕНОРЕЯ). ВРАЧИ РАЗДЕЛЯЮТ ПОНЯТИЯ ПЕРВИЧНОЙ И ВТОРИЧНОЙ ДИСМЕНОРЕИ. БОЛИ ВНИЗУ ЖИВОТА СРЕДНЕЙ И СИЛЬНОЙ СТЕПЕНИ ИНТЕНСИВНОСТИ БОЛЬШЕ ХАРАКТЕРНЫ ДЛЯ ЖЕНЩИН В ВОЗРАСТЕ ДО 30 ЛЕТ. ИНТЕНСИВНОСТЬ БОЛИ ОБЫЧНО СНИЖАЕТСЯ С ВОЗРАСТОМ, А ТАКЖЕ СО ВРЕМЕНЕМ, С МОМЕНТА, КОГДА НАСТУПИЛИ САМЫЕ ПЕРВЫЕ МЕСЯЧНЫЕ, ЛИБО С РОЖДЕНИЕМ ПЕРВОГО РЕБЕНКА. ЭТО ПЕРВИЧНАЯ ДИСМЕНОРЕЯ. ВТОРИЧНАЯ ДИСМЕНОРЕЯ ВОЗНИКАЕТ ОБЫЧНО ЧЕРЕЗ НЕСКОЛЬКО ЛЕТ ПОСЛЕ НАЧАЛА ПЕРВЫХ МЕНСТРУАЦИЙ И МОЖЕТ БЫТЬ СВЯЗАНА С СЕРЬЕЗНЫМИ ЗАБОЛЕВАНИЯМИ: ЭНДОМЕТРИОЗ, ХРОНИЧЕСКИЙ САЛЬПИНГИТ, АДНЕКСИТ, ФИБРОИДЫ (ОБРАЗОВАНИЯ) В МАТКЕ, ИНФЕКЦИИ, ПЕРЕДАЮЩИЕСЯ ПОЛОВЫМ ПУТЕМ И ПР. ИНОГДА ВТОРИЧНАЯ ДИСМЕНОРЕЯ МОЖЕТ БЫТЬ СПРОВОЦИРОВАНА ИСПОЛЬЗОВАНИЕМ ВНУТРИМАТОЧНЫХ КОНТРАЦЕПТИВОВ (СПИРАЛЬ ВНУТРИМАТОЧНАЯ).\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '484', '', '', '0', NULL, NULL, NULL),
(485, '2018-06-26 14:28:54', 1, '2018-06-26 14:28:54', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Почему не рекомендуется хранить прокладки в ванной комнате?', NULL, 'Не секрет, что при повышенных температурах и во влажной среде значительно ускоряется рост бактериальной флоры. Когда вы открываете упаковку обычных прокладок, чаще всего, вы разрываете ее по специальной линии шва, и при последующем использовании она остается открытой и незащищенной от внешних загрязнений. Чтобы этого избежать, в конструкции упаковок NUAGE, помимо специального, более плотного, фольгированного материала, предусмотрен защитный клапан, который можно открывать и закрывать. Такую упаковку удобно брать с собой, хранить и использовать в любых условиях.', 'text', NULL, '', 'text', 'ПОЧЕМУ НЕ РЕКОМЕНДУЕТСЯ ХРАНИТЬ ПРОКЛАДКИ В ВАННОЙ КОМНАТЕ?\r\nНЕ СЕКРЕТ, ЧТО ПРИ ПОВЫШЕННЫХ ТЕМПЕРАТУРАХ И ВО ВЛАЖНОЙ СРЕДЕ ЗНАЧИТЕЛЬНО УСКОРЯЕТСЯ РОСТ БАКТЕРИАЛЬНОЙ ФЛОРЫ. КОГДА ВЫ ОТКРЫВАЕТЕ УПАКОВКУ ОБЫЧНЫХ ПРОКЛАДОК, ЧАЩЕ ВСЕГО, ВЫ РАЗРЫВАЕТЕ ЕЕ ПО СПЕЦИАЛЬНОЙ ЛИНИИ ШВА, И ПРИ ПОСЛЕДУЮЩЕМ ИСПОЛЬЗОВАНИИ ОНА ОСТАЕТСЯ ОТКРЫТОЙ И НЕЗАЩИЩЕННОЙ ОТ ВНЕШНИХ ЗАГРЯЗНЕНИЙ. ЧТОБЫ ЭТОГО ИЗБЕЖАТЬ, В КОНСТРУКЦИИ УПАКОВОК NUAGE, ПОМИМО СПЕЦИАЛЬНОГО, БОЛЕЕ ПЛОТНОГО, ФОЛЬГИРОВАННОГО МАТЕРИАЛА, ПРЕДУСМОТРЕН ЗАЩИТНЫЙ КЛАПАН, КОТОРЫЙ МОЖНО ОТКРЫВАТЬ И ЗАКРЫВАТЬ. ТАКУЮ УПАКОВКУ УДОБНО БРАТЬ С СОБОЙ, ХРАНИТЬ И ИСПОЛЬЗОВАТЬ В ЛЮБЫХ УСЛОВИЯХ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '485', '', '', '0', NULL, NULL, NULL),
(486, '2018-06-26 14:29:10', 1, '2018-06-26 14:29:10', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Как правильно менять прокладки?', NULL, 'Существует одно золотое правило при смене прокладок – необходимо обязательно мыть руки перед сменой, чтобы минимизировать риск попадания бактерий на прокладку и в организм.', 'text', NULL, '', 'text', 'КАК ПРАВИЛЬНО МЕНЯТЬ ПРОКЛАДКИ?\r\nСУЩЕСТВУЕТ ОДНО ЗОЛОТОЕ ПРАВИЛО ПРИ СМЕНЕ ПРОКЛАДОК – НЕОБХОДИМО ОБЯЗАТЕЛЬНО МЫТЬ РУКИ ПЕРЕД СМЕНОЙ, ЧТОБЫ МИНИМИЗИРОВАТЬ РИСК ПОПАДАНИЯ БАКТЕРИЙ НА ПРОКЛАДКУ И В ОРГАНИЗМ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '486', '', '', '0', NULL, NULL, NULL),
(487, '2018-06-26 14:29:25', 1, '2018-06-26 14:29:25', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Нужно ли менять прокладку в течение дня, если выделения совсем скудные?', NULL, 'Независимо от объема выделений, гинекологи рекомендуют менять прокладки каждые 3- 4 часа. Это связано с тем, что кровь является питательной средой для размножения болезнетворных бактерий, кроме того, с ростом объема выделений, прокладка постепенно наполняется и лишается воздухопроницаемости, что провоцирует возникновение «парникового эффекта». Смену любого средства гигиены, будь то прокладка или тампон, обязательно нужно отслеживать по времени. Если выделения не скудные и такой возможности нет, вы, например, находитесь в дороге, в походе или прочих неподходящих условиях, используйте ночные прокладки. За счет объема впитывания и площади они рассчитаны на более длительный период использования.', 'text', NULL, '', 'text', 'НУЖНО ЛИ МЕНЯТЬ ПРОКЛАДКУ В ТЕЧЕНИЕ ДНЯ, ЕСЛИ ВЫДЕЛЕНИЯ СОВСЕМ СКУДНЫЕ?\r\nНЕЗАВИСИМО ОТ ОБЪЕМА ВЫДЕЛЕНИЙ, ГИНЕКОЛОГИ РЕКОМЕНДУЮТ МЕНЯТЬ ПРОКЛАДКИ КАЖДЫЕ 3- 4 ЧАСА. ЭТО СВЯЗАНО С ТЕМ, ЧТО КРОВЬ ЯВЛЯЕТСЯ ПИТАТЕЛЬНОЙ СРЕДОЙ ДЛЯ РАЗМНОЖЕНИЯ БОЛЕЗНЕТВОРНЫХ БАКТЕРИЙ, КРОМЕ ТОГО, С РОСТОМ ОБЪЕМА ВЫДЕЛЕНИЙ, ПРОКЛАДКА ПОСТЕПЕННО НАПОЛНЯЕТСЯ И ЛИШАЕТСЯ ВОЗДУХОПРОНИЦАЕМОСТИ, ЧТО ПРОВОЦИРУЕТ ВОЗНИКНОВЕНИЕ «ПАРНИКОВОГО ЭФФЕКТА». СМЕНУ ЛЮБОГО СРЕДСТВА ГИГИЕНЫ, БУДЬ ТО ПРОКЛАДКА ИЛИ ТАМПОН, ОБЯЗАТЕЛЬНО НУЖНО ОТСЛЕЖИВАТЬ ПО ВРЕМЕНИ. ЕСЛИ ВЫДЕЛЕНИЯ НЕ СКУДНЫЕ И ТАКОЙ ВОЗМОЖНОСТИ НЕТ, ВЫ, НАПРИМЕР, НАХОДИТЕСЬ В ДОРОГЕ, В ПОХОДЕ ИЛИ ПРОЧИХ НЕПОДХОДЯЩИХ УСЛОВИЯХ, ИСПОЛЬЗУЙТЕ НОЧНЫЕ ПРОКЛАДКИ. ЗА СЧЕТ ОБЪЕМА ВПИТЫВАНИЯ И ПЛОЩАДИ ОНИ РАССЧИТАНЫ НА БОЛЕЕ ДЛИТЕЛЬНЫЙ ПЕРИОД ИСПОЛЬЗОВАНИЯ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '487', '', '', '0', NULL, NULL, NULL),
(488, '2018-06-26 14:43:05', 1, '2018-06-26 14:29:42', 1, 9, NULL, 'Y', NULL, NULL, 500, 'Почему использование средств гигиены с ароматизаторами может быть небезопасным?', NULL, 'Любые ароматизаторы и красители могут стать причиной возникновения аллергической реакции, некоторые из добавок могут спровоцировать кандидоз, если он уже есть, но, скажем, не проявляется или находится в вялотекущем состоянии. Поэтому важно использовать прокладки, в которых отсутствуют дополнительные добавки, ароматизаторы, красители.', 'text', NULL, '', 'text', 'ПОЧЕМУ ИСПОЛЬЗОВАНИЕ СРЕДСТВ ГИГИЕНЫ С АРОМАТИЗАТОРАМИ МОЖЕТ БЫТЬ НЕБЕЗОПАСНЫМ?\r\nЛЮБЫЕ АРОМАТИЗАТОРЫ И КРАСИТЕЛИ МОГУТ СТАТЬ ПРИЧИНОЙ ВОЗНИКНОВЕНИЯ АЛЛЕРГИЧЕСКОЙ РЕАКЦИИ, НЕКОТОРЫЕ ИЗ ДОБАВОК МОГУТ СПРОВОЦИРОВАТЬ КАНДИДОЗ, ЕСЛИ ОН УЖЕ ЕСТЬ, НО, СКАЖЕМ, НЕ ПРОЯВЛЯЕТСЯ ИЛИ НАХОДИТСЯ В ВЯЛОТЕКУЩЕМ СОСТОЯНИИ. ПОЭТОМУ ВАЖНО ИСПОЛЬЗОВАТЬ ПРОКЛАДКИ, В КОТОРЫХ ОТСУТСТВУЮТ ДОПОЛНИТЕЛЬНЫЕ ДОБАВКИ, АРОМАТИЗАТОРЫ, КРАСИТЕЛИ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '488', '', '', '0', NULL, NULL, NULL),
(489, '2020-04-29 08:24:12', 1, '2018-06-26 14:30:21', 1, 10, NULL, 'Y', NULL, NULL, 500, 'Оксана Попова', 266, 'Cупертонкие прокладки премиального качества. Абсолютно комфортные к телу. Удобно хранить и использовать за счет клапана на упаковке. Очень здорово, что нет никакого запаха. Отлично держат форму и практически не ощущаются.', 'text', NULL, '', 'text', 'ОКСАНА ПОПОВА\r\nCУПЕРТОНКИЕ ПРОКЛАДКИ ПРЕМИАЛЬНОГО КАЧЕСТВА. АБСОЛЮТНО КОМФОРТНЫЕ К ТЕЛУ. УДОБНО ХРАНИТЬ И ИСПОЛЬЗОВАТЬ ЗА СЧЕТ КЛАПАНА НА УПАКОВКЕ. ОЧЕНЬ ЗДОРОВО, ЧТО НЕТ НИКАКОГО ЗАПАХА. ОТЛИЧНО ДЕРЖАТ ФОРМУ И ПРАКТИЧЕСКИ НЕ ОЩУЩАЮТСЯ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '489', '', '', '0', NULL, NULL, NULL),
(490, '2020-04-29 08:24:12', 1, '2018-06-26 14:30:55', 1, 10, NULL, 'Y', NULL, NULL, 500, 'Юлия Иванова', 265, 'Понимание женской физиологии и потребностей дало возможность разработать прокладки NUAGE c заботой о сохранении женского здоровья. Высокое фармацевтическое качество – это строгий контроль на каждом этапе производства. Знак одобрения на упаковке Российским обществом акушеров – гинекологов – тому подтверждение.', 'text', NULL, '', 'text', 'ЮЛИЯ ИВАНОВА\r\nПОНИМАНИЕ ЖЕНСКОЙ ФИЗИОЛОГИИ И ПОТРЕБНОСТЕЙ ДАЛО ВОЗМОЖНОСТЬ РАЗРАБОТАТЬ ПРОКЛАДКИ NUAGE C ЗАБОТОЙ О СОХРАНЕНИИ ЖЕНСКОГО ЗДОРОВЬЯ. ВЫСОКОЕ ФАРМАЦЕВТИЧЕСКОЕ КАЧЕСТВО – ЭТО СТРОГИЙ КОНТРОЛЬ НА КАЖДОМ ЭТАПЕ ПРОИЗВОДСТВА. ЗНАК ОДОБРЕНИЯ НА УПАКОВКЕ РОССИЙСКИМ ОБЩЕСТВОМ АКУШЕРОВ – ГИНЕКОЛОГОВ – ТОМУ ПОДТВЕРЖДЕНИЕ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '490', '', '', '0', NULL, NULL, NULL),
(491, '2020-06-03 16:31:28', 1, '2018-06-26 14:31:24', 1, 10, NULL, 'N', NULL, NULL, 500, 'Олег Cафронов', 264, 'Самое пристальное внимание при разработке прокладок уделено гипоаллергенности материалов, воздухопроницаемости слоев и отсутствию красителей, отдушек и запаха абсорбента. Прокладки Nuage сохраняют женское здоровье.', 'text', NULL, '', 'text', 'ОЛЕГ CАФРОНОВ\r\nСАМОЕ ПРИСТАЛЬНОЕ ВНИМАНИЕ ПРИ РАЗРАБОТКЕ ПРОКЛАДОК УДЕЛЕНО ГИПОАЛЛЕРГЕННОСТИ МАТЕРИАЛОВ, ВОЗДУХОПРОНИЦАЕМОСТИ СЛОЕВ И ОТСУТСТВИЮ КРАСИТЕЛЕЙ, ОТДУШЕК И ЗАПАХА АБСОРБЕНТА. ПРОКЛАДКИ NUAGE СОХРАНЯЮТ ЖЕНСКОЕ ЗДОРОВЬЕ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '491', '', '', '0', NULL, NULL, NULL),
(492, '2020-03-04 16:41:18', 0, '2020-03-04 16:41:18', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-03-04 16:41:18', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2020-03-04 16:41:18', 1, NULL, NULL, NULL, NULL, NULL, 'N', '492', NULL, NULL, NULL, NULL, NULL, NULL),
(493, '2020-03-16 08:21:47', 0, '2020-03-16 08:21:47', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-03-16 08:21:47', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2020-03-16 08:21:47', 1, NULL, NULL, NULL, NULL, NULL, 'N', '493', NULL, NULL, NULL, NULL, NULL, NULL),
(494, '2020-04-29 07:06:09', 0, '2020-04-29 07:06:09', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-04-29 07:06:09', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2020-04-29 07:06:09', 1, NULL, NULL, NULL, NULL, NULL, 'N', '494', NULL, NULL, NULL, NULL, NULL, NULL),
(495, '2020-04-29 08:45:48', 1, '2020-04-29 08:45:48', 1, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-04-29 08:45:48', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2020-04-29 08:45:48', 1, NULL, NULL, NULL, NULL, NULL, 'N', '495', NULL, NULL, NULL, NULL, NULL, NULL),
(496, '2020-07-02 10:55:34', 1, '2020-05-27 19:02:21', 1, 12, NULL, 'Y', NULL, NULL, 500, 'Nuage Daily', 290, '', 'text', NULL, '', 'text', 'NUAGE DAILY\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '496', '', '', '0', NULL, NULL, NULL),
(497, '2020-07-02 10:55:22', 1, '2020-05-27 19:03:06', 1, 12, NULL, 'Y', NULL, NULL, 500, 'Nuage Normal', 291, '', 'text', NULL, '', 'text', 'NUAGE NORMAL\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '497', '', '', '0', NULL, NULL, NULL),
(498, '2020-07-02 10:55:14', 1, '2020-05-27 19:03:33', 1, 12, NULL, 'Y', NULL, NULL, 500, 'Nuage Super', 292, '', 'text', NULL, '', 'text', 'NUAGE SUPER\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '498', '', '', '0', NULL, NULL, NULL),
(499, '2020-07-06 10:03:56', 1, '2020-05-27 19:03:53', 1, 12, NULL, 'Y', NULL, NULL, 500, 'Nuage Night', 293, '', 'text', NULL, '', 'text', 'NUAGE NIGHT\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '499', '', '', '0', NULL, NULL, NULL),
(500, '2020-07-02 10:55:28', 1, '2020-05-27 19:04:15', 1, 12, NULL, 'Y', NULL, NULL, 500, 'Nuage Night Plus', 294, '', 'text', NULL, '', 'text', 'NUAGE NIGHT PLUS\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '500', '', '', '0', NULL, NULL, NULL),
(501, '2020-06-01 03:28:04', 0, '2020-06-01 03:28:04', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-06-01 03:28:04', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2020-06-01 03:28:04', 1, NULL, NULL, NULL, NULL, NULL, 'N', '501', NULL, NULL, NULL, NULL, NULL, NULL),
(502, '2020-06-01 23:33:08', 0, '2020-06-01 23:33:08', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-06-01 23:33:08', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2020-06-01 23:33:08', 1, NULL, NULL, NULL, NULL, NULL, 'N', '502', NULL, NULL, NULL, NULL, NULL, NULL),
(503, '2020-06-23 16:36:45', 0, '2020-06-23 16:36:45', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-06-23 16:36:45', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2020-06-23 16:36:45', 1, NULL, NULL, NULL, NULL, NULL, 'N', '503', NULL, NULL, NULL, NULL, NULL, NULL),
(504, '2020-08-04 15:27:49', 0, '2020-08-04 15:27:49', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-08-04 15:27:49', NULL, NULL, 'text', NULL, NULL, 'text', 'Заполненная форма 2020-08-04 15:27:49', 1, NULL, NULL, NULL, NULL, NULL, 'N', '504', NULL, NULL, NULL, NULL, NULL, NULL),
(505, '2020-08-04 19:32:09', 0, '2020-08-04 19:32:09', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-08-04 19:32:09', NULL, NULL, 'text', NULL, NULL, 'text', 'Заполненная форма 2020-08-04 19:32:09', 1, NULL, NULL, NULL, NULL, NULL, 'N', '505', NULL, NULL, NULL, NULL, NULL, NULL),
(506, '2020-08-04 19:32:43', 0, '2020-08-04 19:32:43', 0, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2020-08-04 19:32:43', NULL, NULL, 'text', NULL, NULL, 'text', 'Заполненная форма 2020-08-04 19:32:43', 1, NULL, NULL, NULL, NULL, NULL, 'N', '506', NULL, NULL, NULL, NULL, NULL, NULL),
(507, '2021-01-25 14:55:22', 1, '2021-01-25 14:42:15', 1, 13, 2, 'Y', '2021-01-25 14:41:23', NULL, 500, 'Обсуждение месячных с дочерью. Не настало ли время изменить подход?', 412, '', 'text', 413, '', 'text', 'Обсуждение месячных с дочерью. Не настало ли время изменить подход?\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '507', 'obsuzhdenie-mesyachnykh-s-docheryu-ne-nastalo-li-vremya-izmenit-podkhod', '', '0', NULL, NULL, NULL),
(508, '2021-01-25 14:45:29', 1, '2021-01-25 14:43:25', 1, 14, NULL, 'Y', NULL, NULL, 500, 'Елена Смирнова', 410, 'Эксперт блога ', 'text', NULL, '', 'text', 'Елена Смирнова\r\nЭксперт блога \r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '508', '', '', '0', NULL, NULL, NULL),
(509, '2021-01-25 14:46:26', 1, '2021-01-25 14:46:26', 1, 14, NULL, 'Y', NULL, NULL, 500, 'Александр Смирнов', 411, 'Контент-менеджер, журналист', 'text', NULL, '', 'text', 'Александр Смирнов\r\nКонтент-менеджер, журналист\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '509', '', '', '0', NULL, NULL, NULL),
(510, '2021-01-25 14:55:11', 1, '2021-01-25 14:53:41', 1, 13, 1, 'Y', '2021-01-11 14:52:24', NULL, 500, 'Занятие спортом во время месячных', 414, 'Letraset, французская компания литерность, популяризировал прохождение Lorem Ipsum в 1960-е годы с их сухим передаточных листов.\r\nПять столетий спустя Lorem Ipsum испытал всплеск популярности с выпуском сухого переноса листов Letraset в. Эти листы надписи можно потереть на любом месте и были быстро приняты художники-графики, принтеры, архитекторов и рекламодателей для их профессионального вида и простоты использования. Letraset включены Lorem Ipsum проходы в арсеналом шрифтов, стилей и размеров, затвердевание место Латинского-эск фразу целиком в печатной и графической индустрии. Те, с вниманием к деталям будет даже поймали дань классического текста в эпизоде Mad Men (S6E1 вокруг Aldus Corporation, которая впоследствии объединилась с Adobe Systems, помогли принести Lorem Ipsum в информационную эпоху с ее 1985 флагманского программного обеспечения Aldus PageMaker. Программа входит в комплект с Lorem Ipsum манекен текст, чтобы помочь с выложив содержимое страницы и другие текстовые процессоры, такие как Microsoft Word последовали его примеру. В последнее время рост веб-дизайна помогла пролиферируют Lorem Ipsum через Интернет в качестве заполнителя для выкладки веб-сайтов и blogs-, а в некоторых случаях окончательное содержание (не пусть это будет вам!).', 'text', NULL, '', 'text', 'Занятие спортом во время месячных\r\nLETRASET, французская компания литерность, популяризировал прохождение LOREM IPSUM в 1960-е годы с их сухим передаточных листов.\r\nПять столетий спустя LOREM IPSUM испытал всплеск популярности с выпуском сухого переноса листов LETRASET в. Эти листы надписи можно потереть на любом месте и были быстро приняты художники-графики, принтеры, архитекторов и рекламодателей для их профессионального вида и простоты использования. LETRASET включены LOREM IPSUM проходы в арсеналом шрифтов, стилей и размеров, затвердевание место Латинского-эск фразу целиком в печатной и графической индустрии. Те, с вниманием к деталям будет даже поймали дань классического текста в эпизоде MAD MEN (S6E1 вокруг ALDUS CORPORATION, которая впоследствии объединилась с ADOBE SYSTEMS, помогли принести LOREM IPSUM в информационную эпоху с ее 1985 флагманского программного обеспечения ALDUS PAGEMAKER. Программа входит в комплект с LOREM IPSUM манекен текст, чтобы помочь с выложив содержимое страницы и другие текстовые процессоры, такие как MICROSOFT WORD последовали его примеру. В последнее время рост веб-дизайна помогла пролиферируют LOREM IPSUM через Интернет в качестве заполнителя для выкладки веб-сайтов и BLOGS-, а в некоторых случаях окончательное содержание (не пусть это будет вам!).\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '510', 'zanyatie-sportom-vo-vremya-mesyachnykh', '', '0', NULL, NULL, NULL),
(511, '2021-01-25 16:32:09', 1, '2021-01-25 14:54:54', 1, 13, 3, 'Y', '2021-01-25 14:53:45', NULL, 500, 'Важная тема о здоровье', 415, 'С другой стороны укрепление и развитие структуры играет важную роль в формировании соответствующий условий активизации. Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании системы обучения кадров, соответствует насущным потребностям. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения новых предложений. Товарищи! реализация намеченных плановых заданий позволяет оценить значение новых предложений.\r\n\r\n', 'text', 416, '', 'text', 'Важная тема о здоровье\r\nС другой стороны укрепление и развитие структуры играет важную роль в формировании соответствующий условий активизации. Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании системы обучения кадров, соответствует насущным потребностям. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности требуют определения и уточнения новых предложений. Не следует, однако забывать, что реализация намеченных плановых заданий требуют определения и уточнения новых предложений. Товарищи! реализация намеченных плановых заданий позволяет оценить значение новых предложений.\r\n\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '511', 'vazhnaya-tema-o-zdorove', '', '0', NULL, NULL, NULL),
(512, '2021-01-25 16:34:12', 1, '2021-01-25 14:56:32', 1, 13, 2, 'Y', '2021-01-13 14:55:45', NULL, 500, 'Запись в блоге', 417, 'Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности влечет за собой процесс внедрения и модернизации системы обучения кадров, соответствует насущным потребностям. Не следует, однако забывать, что укрепление и развитие структуры способствует подготовки и реализации систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности позволяет выполнять важные задания по разработке направлений прогрессивного развития.\r\n\r\nРавным образом постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании соответствующий условий активизации. Таким образом реализация намеченных плановых заданий требуют от нас анализа направлений прогрессивного развития. Задача организации, в особенности же начало повседневной работы по формированию позиции обеспечивает широкому кругу (специалистов) участие в формировании новых предложений. С другой стороны реализация намеченных плановых заданий в значительной степени обуславливает создание систем массового участия. Значимость этих проблем настолько очевидна, что консультация с широким активом позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач. Не следует, однако забывать, что новая модель организационной деятельности играет важную роль в формировании соответствующий условий активизации.', 'text', NULL, '', 'text', 'Запись в блоге\r\nИдейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности влечет за собой процесс внедрения и модернизации системы обучения кадров, соответствует насущным потребностям. Не следует, однако забывать, что укрепление и развитие структуры способствует подготовки и реализации систем массового участия. Товарищи! постоянный количественный рост и сфера нашей активности позволяет выполнять важные задания по разработке направлений прогрессивного развития.\r\n\r\nРавным образом постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании соответствующий условий активизации. Таким образом реализация намеченных плановых заданий требуют от нас анализа направлений прогрессивного развития. Задача организации, в особенности же начало повседневной работы по формированию позиции обеспечивает широкому кругу (специалистов) участие в формировании новых предложений. С другой стороны реализация намеченных плановых заданий в значительной степени обуславливает создание систем массового участия. Значимость этих проблем настолько очевидна, что консультация с широким активом позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач. Не следует, однако забывать, что новая модель организационной деятельности играет важную роль в формировании соответствующий условий активизации.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '512', 'zapis-v-bloge', '', '0', NULL, NULL, NULL),
(513, '2021-01-25 14:59:33', 1, '2021-01-25 14:57:15', 1, 13, 4, 'Y', '2021-01-21 14:56:35', NULL, 500, 'Полезная информация', 418, 'Идейные соображения высшего порядка, а также постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание соответствующий условий активизации. Повседневная практика показывает, что реализация намеченных плановых заданий позволяет оценить значение систем массового участия. Равным образом укрепление и развитие структуры играет важную роль в формировании позиций, занимаемых участниками в отношении поставленных задач. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации новых предложений.', 'text', NULL, '', 'text', 'Полезная информация\r\nИдейные соображения высшего порядка, а также постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание соответствующий условий активизации. Повседневная практика показывает, что реализация намеченных плановых заданий позволяет оценить значение систем массового участия. Равным образом укрепление и развитие структуры играет важную роль в формировании позиций, занимаемых участниками в отношении поставленных задач. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации новых предложений.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '513', 'poleznaya-informatsiya', '', '0', NULL, NULL, NULL),
(514, '2021-01-25 14:59:25', 1, '2021-01-25 14:58:23', 1, 13, 2, 'Y', '2020-12-31 23:57:18', NULL, 500, 'Поздравление', 419, 'С другой стороны начало повседневной работы по формированию позиции позволяет выполнять важные задания по разработке форм развития. Идейные соображения высшего порядка, а также постоянный количественный рост и сфера нашей активности позволяет оценить значение новых предложений. Таким образом рамки и место обучения кадров позволяет оценить значение систем массового участия. С другой стороны постоянный количественный рост и сфера нашей активности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Идейные соображения высшего порядка, а также новая модель организационной деятельности позволяет выполнять важные задания по разработке дальнейших направлений развития.', 'text', NULL, '', 'text', 'Поздравление\r\nС другой стороны начало повседневной работы по формированию позиции позволяет выполнять важные задания по разработке форм развития. Идейные соображения высшего порядка, а также постоянный количественный рост и сфера нашей активности позволяет оценить значение новых предложений. Таким образом рамки и место обучения кадров позволяет оценить значение систем массового участия. С другой стороны постоянный количественный рост и сфера нашей активности представляет собой интересный эксперимент проверки направлений прогрессивного развития. Идейные соображения высшего порядка, а также новая модель организационной деятельности позволяет выполнять важные задания по разработке дальнейших направлений развития.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '514', 'pozdravlenie', '', '0', NULL, NULL, NULL),
(515, '2021-01-25 16:31:37', 1, '2021-01-25 14:59:05', 1, 13, 3, 'Y', '2021-01-25 14:58:29', NULL, 500, 'Как самой можно рассчитать овуляцию?', 420, 'Таким образом рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании направлений прогрессивного развития. Таким образом рамки и место обучения кадров играет важную роль в формировании систем массового участия. Повседневная практика показывает, что реализация намеченных плановых заданий в значительной степени обуславливает создание дальнейших направлений развития. Не следует, однако забывать, что рамки и место обучения кадров играет важную роль в формировании форм развития. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании модели развития.', 'text', NULL, '', 'text', 'Как самой можно рассчитать овуляцию?\r\nТаким образом рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании направлений прогрессивного развития. Таким образом рамки и место обучения кадров играет важную роль в формировании систем массового участия. Повседневная практика показывает, что реализация намеченных плановых заданий в значительной степени обуславливает создание дальнейших направлений развития. Не следует, однако забывать, что рамки и место обучения кадров играет важную роль в формировании форм развития. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании модели развития.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '515', 'kak-samoy-mozhno-rasschitat-ovulyatsiyu', '', '0', NULL, NULL, NULL),
(516, '2021-01-26 10:27:54', 1, '2021-01-26 10:27:54', 1, 14, NULL, 'Y', NULL, NULL, 500, 'Юлия Иванова', 421, 'Сотрудник лаборатории NUAGE', 'text', NULL, '', 'text', 'Юлия Иванова\r\nСотрудник лаборатории NUAGE\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '516', '', '', '0', NULL, NULL, NULL),
(517, '2021-01-26 12:40:23', 1, '2021-01-26 10:33:40', 1, 13, 3, 'Y', '2021-01-26 10:29:43', NULL, 500, 'Приводит ли употребление гормональных контрацептивов к набору веса?', 422, 'Один из распространенных мифов и страхов, связанных с оральными контрацептивами, состоит в том, что от них якобы толстеют. Результаты проведенного в 2016 году исследования ВЦИОМ «Индекс женского здоровья «Гедеон Рихтер» показали, что 68% респондентов боятся прибавки веса на фоне использования гормональной контрацепции.\r\n\r\nПоявлению этого мифа поспособствовало использование гормональных препаратов первого поколения (в далекие 50-е годы ХХ века в США и 70-80-е годы в СССР).\r\n\r\nКомбинированные оральные контрацептивы первого поколения имели высокую дозировку женских гормонов (больше, чем это нужно было для подавляющего числа женщин). Повышенные дозы эстрогенов и прогестеронов, входящие в их состав, активно задерживали жидкость в организме, а еще стимулировали аппетит. Но оказалось, что эти побочные эффекты зависят от дозировки гормонов в таблетках1. Стоило ученым создать комбинированные контрацептивы с низким содержанием гормонов, как нежелательный эффект снизился до минимума.\r\n\r\nПодобрать гормональный контрацептив поможет гинеколог, он же расскажет, как правильно следует начать прием контрацептива или перейти с одного средства на другое.', 'html', 423, '', 'text', 'Приводит ли употребление гормональных контрацептивов к набору веса?\r\nОдин из распространенных мифов и страхов, \r\nсвязанных с оральными контрацептивами, \r\nсостоит в том, что от них якобы толстеют. \r\nРезультаты проведенного в 2016 году исследования \r\nВЦИОМ «Индекс женского здоровья «Гедеон \r\nРихтер» показали, что 68% респондентов боятся \r\nприбавки веса на фоне использования гормональной \r\nконтрацепции. Появлению этого мифа поспособствовало \r\nиспользование гормональных препаратов \r\nпервого поколения (в далекие 50-е годы ХХ \r\nвека в США и 70-80-е годы в СССР). Комбинированные \r\nоральные контрацептивы первого поколения \r\nимели высокую дозировку женских гормонов \r\n(больше, чем это нужно было для подавляющего \r\nчисла женщин). Повышенные дозы эстрогенов \r\nи прогестеронов, входящие в их состав, активно \r\nзадерживали жидкость в организме, а еще \r\nстимулировали аппетит. Но оказалось, что \r\nэти побочные эффекты зависят от дозировки \r\nгормонов в таблетках1. Стоило ученым создать \r\nкомбинированные контрацептивы с низким \r\nсодержанием гормонов, как нежелательный \r\nэффект снизился до минимума. Подобрать \r\nгормональный контрацептив поможет гинеколог, \r\nон же расскажет, как правильно следует начать \r\nприем контрацептива или перейти с одного \r\nсредства на другое.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '517', 'privodit-li-upotreblenie-gormonalnykh-kontratseptivov-k-naboru-vesa', '', '0', NULL, NULL, NULL),
(518, '2021-02-15 01:32:02', 3, '2021-02-15 01:32:02', 3, 15, NULL, 'Y', NULL, NULL, 500, 'Комбофлекс <span>МСМ</span>1', 424, '<p>Уникальный комплекс* , обладающий хондропротекторными свойствами, способствующий питанию и защите суставов</p>', 'html', 425, '', 'text', 'Комбофлекс <SPAN>МСМ</SPAN>1\r\nУникальный комплекс* , обладающий хондропротекторными \r\nсвойствами, способствующий питанию и защите \r\nсуставов\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '504', NULL, NULL, NULL, NULL, NULL, NULL),
(519, '2021-02-15 01:32:02', 3, '2021-02-15 01:32:02', 3, 15, NULL, 'Y', NULL, NULL, 500, 'Комбофлекс <span>МСМ</span>2', 426, '<p>Уникальный комплекс* , обладающий хондропротекторными свойствами, способствующий питанию и защите суставов</p>', 'html', 427, '', 'text', 'Комбофлекс <SPAN>МСМ</SPAN>2\r\nУникальный комплекс* , обладающий хондропротекторными \r\nсвойствами, способствующий питанию и защите \r\nсуставов\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '505', NULL, NULL, NULL, NULL, NULL, NULL),
(520, '2021-02-15 01:32:02', 3, '2021-02-15 01:32:02', 3, 15, NULL, 'Y', NULL, NULL, 500, 'Комбофлекс <span>МСМ</span>3', 428, '<p>Уникальный комплекс* , обладающий хондропротекторными свойствами, способствующий питанию и защите суставов</p>', 'html', 429, '', 'text', 'Комбофлекс <SPAN>МСМ</SPAN>3\r\nУникальный комплекс* , обладающий хондропротекторными \r\nсвойствами, способствующий питанию и защите \r\nсуставов\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '506', NULL, NULL, NULL, NULL, NULL, NULL),
(521, '2021-02-15 01:39:37', 3, '2021-02-15 01:32:07', 3, 16, NULL, 'Y', NULL, NULL, 500, 'Преимущества', NULL, '', 'text', 430, '', 'text', 'Преимущества\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '507', 'advantages', '', '0', NULL, 9, '2021-02-15 01:35:58'),
(522, '2021-07-13 14:28:15', 3, '2021-02-15 01:32:12', 3, 17, NULL, 'Y', NULL, NULL, 500, 'Активные компоненты Комбофлекс® <span>МСМ</span>', NULL, '', 'text', NULL, 'Биологически активные вещества хондропротекторного комплекса обладают синергическим эффектом – дополняют  и усиливают эффекты друг друга<a href=\"#footer\" >*</a>', 'html', 'АКТИВНЫЕ КОМПОНЕНТЫ КОМБОФЛЕКС® <SPAN>МСМ</SPAN>\r\n\r\nБИОЛОГИЧЕСКИ АКТИВНЫЕ ВЕЩЕСТВА ХОНДРОПРОТЕКТОРНОГО \r\nКОМПЛЕКСА ОБЛАДАЮТ СИНЕРГИЧЕСКИМ ЭФФЕКТОМ \r\n– ДОПОЛНЯЮТ И УСИЛИВАЮТ ЭФФЕКТЫ ДРУГ ДРУГА* \r\n[ #FOOTER ]', 1, NULL, NULL, NULL, NULL, NULL, 'N', '508', 'components', '', '0', NULL, 9, '2021-02-15 01:35:58'),
(523, '2021-07-13 14:15:42', 3, '2021-02-15 01:32:23', 3, 18, NULL, 'Y', NULL, NULL, 100, 'Безопасный, натуральный, проверенный', NULL, '', 'text', 432, '', 'text', 'БЕЗОПАСНЫЙ, НАТУРАЛЬНЫЙ, ПРОВЕРЕННЫЙ\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '509', 'safety', '', '0', NULL, 9, '2021-02-15 01:36:31'),
(524, '2021-02-15 01:41:04', 3, '2021-02-15 01:32:25', 3, 19, NULL, 'Y', NULL, NULL, 500, 'Основные особенности', NULL, '', 'text', NULL, '', 'text', 'Основные особенности\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '510', 'features', '', '0', NULL, 9, '2021-02-15 01:36:31'),
(525, '2021-02-15 01:32:27', 3, '2021-02-15 01:32:27', 3, 20, 6, 'Y', NULL, NULL, 100, 'Сколько', 433, '', 'text', NULL, '', 'text', 'Сколько\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '511', NULL, NULL, NULL, NULL, NULL, NULL),
(526, '2021-02-15 01:32:27', 3, '2021-02-15 01:32:27', 3, 20, 6, 'Y', NULL, NULL, 200, 'Когда', 434, '', 'text', NULL, '', 'text', 'Когда\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '512', NULL, NULL, NULL, NULL, NULL, NULL),
(527, '2021-02-15 01:32:27', 3, '2021-02-15 01:32:27', 3, 20, 6, 'Y', NULL, NULL, 500, 'Как долго', 435, '', 'text', NULL, '', 'text', 'Как долго\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '513', NULL, NULL, NULL, NULL, NULL, NULL),
(528, '2021-02-15 01:32:29', 3, '2021-02-15 01:32:29', 3, 21, NULL, 'Y', NULL, NULL, 100, 'Состав Комбофлекс® <span>МСМ</span>', NULL, '', 'text', NULL, '', 'text', 'Состав Комбофлекс® <SPAN>МСМ</SPAN>\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '514', 'composition', NULL, NULL, NULL, 9, '2021-02-15 01:36:33'),
(529, '2021-02-15 01:41:58', 3, '2021-02-15 01:32:31', 3, 22, NULL, 'Y', NULL, NULL, 100, 'Высокотехнологичное производство', NULL, '', 'text', NULL, 'Renewal («Производственная фармацевтическая компания Обновление») с 1997 года занимается разработкой и производством современных, качественных, доступных лекарственных препаратов', 'text', 'Высокотехнологичное производство\r\n\r\nRENEWAL («Производственная фармацевтическая компания Обновление») с 1997 года занимается разработкой и производством современных, качественных, доступных лекарственных препаратов', 1, NULL, NULL, NULL, NULL, NULL, 'N', '515', 'production', '', '0', NULL, 9, '2021-02-15 01:36:33'),
(530, '2021-02-15 01:42:37', 3, '2021-02-15 01:32:32', 3, 23, NULL, 'Y', NULL, NULL, 100, 'Почему болят колени при беге?', 438, '<p>К выполнению упражнений стоит приступать только с согласия врача. Причин, <a href=\"\">почему появляется боль в коленном суставе</a>, очень много. И если в программу лечения одних болезней входит физическая культура, то для других она полностью противопоказана. Среди них: инфекционные болезни (воспаления суставов после перенесённой инфекции), новообразования, любые воспаления в острой форме — с повышением температуры, отёком и покраснением.</p>', 'html', 439, '<p>В этой статье рассказываем, какое влияние оказывает гимнастика на коленные суставы, как ее проводить и в каких условиях</p>\r\n            <p>Гимнастика для суставов ног особенно актуальна для тех, кто перенёс травму или заболевания опорно-двигательной системы. Она поможет восстановить подвижность и гибкость. А здоровым людям с малоподвижным образом жизни упражнения для коленных суставов помогут держать тело в тонусе и избежать растяжения или вывиха.</p>\r\n            <p>В качестве реабилитации врачи рекомендуют упражнения для коленных суставов многим пациентам. Они помогут в случаях:</p>\r\n            <ul>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n            </ul>\r\n            <p>Разумеется, к ЛФК следует приступать только в стадии ремиссии, когда здоровью уже ничего не угрожает, и нужно просто вернуть былую подвижность коленей</p>', 'html', 'Почему болят колени при беге?\r\nК выполнению упражнений стоит приступать \r\nтолько с согласия врача. Причин, почему \r\nпоявляется боль в коленном суставе [  ] , \r\nочень много. И если в программу лечения \r\nодних болезней входит физическая культура, \r\nто для других она полностью противопоказана. \r\nСреди них: инфекционные болезни (воспаления \r\nсуставов после перенесённой инфекции), \r\nновообразования, любые воспаления в острой \r\nформе — с повышением температуры, отёком \r\nи покраснением.\r\nВ этой статье рассказываем, какое влияние \r\nоказывает гимнастика на коленные суставы, \r\nкак ее проводить и в каких условиях \r\n\r\nГимнастика для суставов ног особенно актуальна \r\nдля тех, кто перенёс травму или заболевания \r\nопорно-двигательной системы. Она поможет \r\nвосстановить подвижность и гибкость. А \r\nздоровым людям с малоподвижным образом \r\nжизни упражнения для коленных суставов \r\nпомогут держать тело в тонусе и избежать \r\nрастяжения или вывиха. \r\n\r\nВ качестве реабилитации врачи рекомендуют \r\nупражнения для коленных суставов многим \r\nпациентам. Они помогут в случаях: \r\n\r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n\r\nРазумеется, к ЛФК следует приступать только \r\nв стадии ремиссии, когда здоровью уже ничего \r\nне угрожает, и нужно просто вернуть былую \r\nподвижность коленей', 1, NULL, NULL, NULL, NULL, NULL, 'N', '516', 'pochemu_bolyat_koleni_pri_bege', '', '0', NULL, 6, '2021-02-15 02:43:22'),
(531, '2021-02-15 01:32:32', 3, '2021-02-15 01:32:32', 3, 23, NULL, 'Y', NULL, NULL, 200, 'Горный туризм, польза или вред?', 440, '', 'text', 441, '<p>В этой статье рассказываем, какое влияние оказывает гимнастика на коленные суставы, как ее проводить и в каких условиях</p>\r\n            <p>Гимнастика для суставов ног особенно актуальна для тех, кто перенёс травму или заболевания опорно-двигательной системы. Она поможет восстановить подвижность и гибкость. А здоровым людям с малоподвижным образом жизни упражнения для коленных суставов помогут держать тело в тонусе и избежать растяжения или вывиха.</p>\r\n            <p>В качестве реабилитации врачи рекомендуют упражнения для коленных суставов многим пациентам. Они помогут в случаях:</p>\r\n            <ul>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n            </ul>\r\n            <p>Разумеется, к ЛФК следует приступать только в стадии ремиссии, когда здоровью уже ничего не угрожает, и нужно просто вернуть былую подвижность коленей</p>', 'html', 'Горный туризм, польза или вред?\r\n\r\nВ этой статье рассказываем, какое влияние \r\nоказывает гимнастика на коленные суставы, \r\nкак ее проводить и в каких условиях \r\n\r\nГимнастика для суставов ног особенно актуальна \r\nдля тех, кто перенёс травму или заболевания \r\nопорно-двигательной системы. Она поможет \r\nвосстановить подвижность и гибкость. А \r\nздоровым людям с малоподвижным образом \r\nжизни упражнения для коленных суставов \r\nпомогут держать тело в тонусе и избежать \r\nрастяжения или вывиха. \r\n\r\nВ качестве реабилитации врачи рекомендуют \r\nупражнения для коленных суставов многим \r\nпациентам. Они помогут в случаях: \r\n\r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n\r\nРазумеется, к ЛФК следует приступать только \r\nв стадии ремиссии, когда здоровью уже ничего \r\nне угрожает, и нужно просто вернуть былую \r\nподвижность коленей', 1, NULL, NULL, NULL, NULL, NULL, 'N', '517', 'gornyy_turizm_polza_ili_vred', NULL, NULL, NULL, 2, '2021-02-15 02:43:52'),
(532, '2021-02-15 01:32:32', 3, '2021-02-15 01:32:32', 3, 23, NULL, 'Y', NULL, NULL, 300, 'Упражнения для коленных суставов', 442, '', 'text', 443, '<p>В этой статье рассказываем, какое влияние оказывает гимнастика на коленные суставы, как ее проводить и в каких условиях</p>\r\n            <p>Гимнастика для суставов ног особенно актуальна для тех, кто перенёс травму или заболевания опорно-двигательной системы. Она поможет восстановить подвижность и гибкость. А здоровым людям с малоподвижным образом жизни упражнения для коленных суставов помогут держать тело в тонусе и избежать растяжения или вывиха.</p>\r\n            <p>В качестве реабилитации врачи рекомендуют упражнения для коленных суставов многим пациентам. Они помогут в случаях:</p>\r\n            <ul>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n            </ul>\r\n            <p>Разумеется, к ЛФК следует приступать только в стадии ремиссии, когда здоровью уже ничего не угрожает, и нужно просто вернуть былую подвижность коленей</p>', 'html', 'Упражнения для коленных суставов\r\n\r\nВ этой статье рассказываем, какое влияние \r\nоказывает гимнастика на коленные суставы, \r\nкак ее проводить и в каких условиях \r\n\r\nГимнастика для суставов ног особенно актуальна \r\nдля тех, кто перенёс травму или заболевания \r\nопорно-двигательной системы. Она поможет \r\nвосстановить подвижность и гибкость. А \r\nздоровым людям с малоподвижным образом \r\nжизни упражнения для коленных суставов \r\nпомогут держать тело в тонусе и избежать \r\nрастяжения или вывиха. \r\n\r\nВ качестве реабилитации врачи рекомендуют \r\nупражнения для коленных суставов многим \r\nпациентам. Они помогут в случаях: \r\n\r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n\r\nРазумеется, к ЛФК следует приступать только \r\nв стадии ремиссии, когда здоровью уже ничего \r\nне угрожает, и нужно просто вернуть былую \r\nподвижность коленей', 1, NULL, NULL, NULL, NULL, NULL, 'N', '518', 'uprazhneniya_dlya_kolennykh_sustavov', NULL, NULL, NULL, 1, '2021-02-15 02:44:09'),
(533, '2021-02-15 01:32:32', 3, '2021-02-15 01:32:32', 3, 23, NULL, 'Y', NULL, NULL, 400, 'Почему появляется боль в коленном суставе?', 444, '', 'text', 445, '<p>В этой статье рассказываем, какое влияние оказывает гимнастика на коленные суставы, как ее проводить и в каких условиях</p>\r\n            <p>Гимнастика для суставов ног особенно актуальна для тех, кто перенёс травму или заболевания опорно-двигательной системы. Она поможет восстановить подвижность и гибкость. А здоровым людям с малоподвижным образом жизни упражнения для коленных суставов помогут держать тело в тонусе и избежать растяжения или вывиха.</p>\r\n            <p>В качестве реабилитации врачи рекомендуют упражнения для коленных суставов многим пациентам. Они помогут в случаях:</p>\r\n            <ul>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n            </ul>\r\n            <p>Разумеется, к ЛФК следует приступать только в стадии ремиссии, когда здоровью уже ничего не угрожает, и нужно просто вернуть былую подвижность коленей</p>', 'html', 'Почему появляется боль в коленном суставе?\r\n\r\nВ этой статье рассказываем, какое влияние \r\nоказывает гимнастика на коленные суставы, \r\nкак ее проводить и в каких условиях \r\n\r\nГимнастика для суставов ног особенно актуальна \r\nдля тех, кто перенёс травму или заболевания \r\nопорно-двигательной системы. Она поможет \r\nвосстановить подвижность и гибкость. А \r\nздоровым людям с малоподвижным образом \r\nжизни упражнения для коленных суставов \r\nпомогут держать тело в тонусе и избежать \r\nрастяжения или вывиха. \r\n\r\nВ качестве реабилитации врачи рекомендуют \r\nупражнения для коленных суставов многим \r\nпациентам. Они помогут в случаях: \r\n\r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n\r\nРазумеется, к ЛФК следует приступать только \r\nв стадии ремиссии, когда здоровью уже ничего \r\nне угрожает, и нужно просто вернуть былую \r\nподвижность коленей', 1, NULL, NULL, NULL, NULL, NULL, 'N', '519', 'pochemu_poyavlyaetsya_bol_v_kolennom_sustave', NULL, NULL, NULL, 3, '2021-02-15 02:44:26'),
(534, '2021-02-15 01:32:32', 3, '2021-02-15 01:32:32', 3, 23, NULL, 'Y', NULL, NULL, 500, 'Как сделать массаж колена', 446, '', 'text', 447, '<p>В этой статье рассказываем, какое влияние оказывает гимнастика на коленные суставы, как ее проводить и в каких условиях</p>\r\n            <p>Гимнастика для суставов ног особенно актуальна для тех, кто перенёс травму или заболевания опорно-двигательной системы. Она поможет восстановить подвижность и гибкость. А здоровым людям с малоподвижным образом жизни упражнения для коленных суставов помогут держать тело в тонусе и избежать растяжения или вывиха.</p>\r\n            <p>В качестве реабилитации врачи рекомендуют упражнения для коленных суставов многим пациентам. Они помогут в случаях:</p>\r\n            <ul>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n            </ul>\r\n            <p>Разумеется, к ЛФК следует приступать только в стадии ремиссии, когда здоровью уже ничего не угрожает, и нужно просто вернуть былую подвижность коленей</p>', 'html', 'Как сделать массаж колена\r\n\r\nВ этой статье рассказываем, какое влияние \r\nоказывает гимнастика на коленные суставы, \r\nкак ее проводить и в каких условиях \r\n\r\nГимнастика для суставов ног особенно актуальна \r\nдля тех, кто перенёс травму или заболевания \r\nопорно-двигательной системы. Она поможет \r\nвосстановить подвижность и гибкость. А \r\nздоровым людям с малоподвижным образом \r\nжизни упражнения для коленных суставов \r\nпомогут держать тело в тонусе и избежать \r\nрастяжения или вывиха. \r\n\r\nВ качестве реабилитации врачи рекомендуют \r\nупражнения для коленных суставов многим \r\nпациентам. Они помогут в случаях: \r\n\r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n\r\nРазумеется, к ЛФК следует приступать только \r\nв стадии ремиссии, когда здоровью уже ничего \r\nне угрожает, и нужно просто вернуть былую \r\nподвижность коленей', 1, NULL, NULL, NULL, NULL, NULL, 'N', '520', 'kak_sdelat_massazh_kolena', NULL, NULL, NULL, 1, '2021-02-15 02:44:43'),
(535, '2021-02-15 01:32:32', 3, '2021-02-15 01:32:32', 3, 23, NULL, 'Y', NULL, NULL, 600, 'Как сделать массаж колена 2', 448, '', 'text', 449, '<p>В этой статье рассказываем, какое влияние оказывает гимнастика на коленные суставы, как ее проводить и в каких условиях</p>\r\n            <p>Гимнастика для суставов ног особенно актуальна для тех, кто перенёс травму или заболевания опорно-двигательной системы. Она поможет восстановить подвижность и гибкость. А здоровым людям с малоподвижным образом жизни упражнения для коленных суставов помогут держать тело в тонусе и избежать растяжения или вывиха.</p>\r\n            <p>В качестве реабилитации врачи рекомендуют упражнения для коленных суставов многим пациентам. Они помогут в случаях:</p>\r\n            <ul>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n                <li>Травм: растяжения, вывиха, перелома, повреждения мениска</li>\r\n            </ul>\r\n            <p>Разумеется, к ЛФК следует приступать только в стадии ремиссии, когда здоровью уже ничего не угрожает, и нужно просто вернуть былую подвижность коленей</p>', 'html', 'Как сделать массаж колена 2\r\n\r\nВ этой статье рассказываем, какое влияние \r\nоказывает гимнастика на коленные суставы, \r\nкак ее проводить и в каких условиях \r\n\r\nГимнастика для суставов ног особенно актуальна \r\nдля тех, кто перенёс травму или заболевания \r\nопорно-двигательной системы. Она поможет \r\nвосстановить подвижность и гибкость. А \r\nздоровым людям с малоподвижным образом \r\nжизни упражнения для коленных суставов \r\nпомогут держать тело в тонусе и избежать \r\nрастяжения или вывиха. \r\n\r\nВ качестве реабилитации врачи рекомендуют \r\nупражнения для коленных суставов многим \r\nпациентам. Они помогут в случаях: \r\n\r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n- Травм: растяжения, вывиха, перелома, повреждения \r\nмениска \r\n\r\nРазумеется, к ЛФК следует приступать только \r\nв стадии ремиссии, когда здоровью уже ничего \r\nне угрожает, и нужно просто вернуть былую \r\nподвижность коленей', 1, NULL, NULL, NULL, NULL, NULL, 'N', '521', 'kak_sdelat_massazh_kolena_2', NULL, NULL, NULL, NULL, NULL),
(536, '2021-07-13 14:53:42', 3, '2021-02-15 01:32:34', 3, 24, NULL, 'Y', NULL, NULL, 500, 'Где купить', NULL, 'Состав Комбофлекс МСМ вы сможете приобрести в ближайшей к вам аптеке, так как продукция представлена более чем в 80% аптечных учреждений РФ. Посмотреть наличие и выбрать наиболее удобный пункт выдачи вы сможете самостоятельно и уже сейчас, нужно лишь воспользоваться аптечной поисковой системой, которая доступна в вашем городе.', 'text', 470, 'Состав Комбофлекс МСМ вы сможете приобрести в ближайшей к вам аптеке, так как продукция представлена более чем в 80% аптечных учреждений РФ. Посмотреть наличие и выбрать наиболее удобный пункт выдачи вы сможете самостоятельно и уже сейчас, нужно лишь воспользоваться аптечной поисковой системой, которая доступна в вашем городе.', 'html', 'ГДЕ КУПИТЬ\r\nСОСТАВ КОМБОФЛЕКС МСМ ВЫ СМОЖЕТЕ ПРИОБРЕСТИ В БЛИЖАЙШЕЙ К ВАМ АПТЕКЕ, ТАК КАК ПРОДУКЦИЯ ПРЕДСТАВЛЕНА БОЛЕЕ ЧЕМ В 80% АПТЕЧНЫХ УЧРЕЖДЕНИЙ РФ. ПОСМОТРЕТЬ НАЛИЧИЕ И ВЫБРАТЬ НАИБОЛЕЕ УДОБНЫЙ ПУНКТ ВЫДАЧИ ВЫ СМОЖЕТЕ САМОСТОЯТЕЛЬНО И УЖЕ СЕЙЧАС, НУЖНО ЛИШЬ ВОСПОЛЬЗОВАТЬСЯ АПТЕЧНОЙ ПОИСКОВОЙ СИСТЕМОЙ, КОТОРАЯ ДОСТУПНА В ВАШЕМ ГОРОДЕ.\r\nСОСТАВ КОМБОФЛЕКС МСМ ВЫ СМОЖЕТЕ ПРИОБРЕСТИ \r\nВ БЛИЖАЙШЕЙ К ВАМ АПТЕКЕ, ТАК КАК ПРОДУКЦИЯ \r\nПРЕДСТАВЛЕНА БОЛЕЕ ЧЕМ В 80% АПТЕЧНЫХ УЧРЕЖДЕНИЙ \r\nРФ. ПОСМОТРЕТЬ НАЛИЧИЕ И ВЫБРАТЬ НАИБОЛЕЕ \r\nУДОБНЫЙ ПУНКТ ВЫДАЧИ ВЫ СМОЖЕТЕ САМОСТОЯТЕЛЬНО \r\nИ УЖЕ СЕЙЧАС, НУЖНО ЛИШЬ ВОСПОЛЬЗОВАТЬСЯ \r\nАПТЕЧНОЙ ПОИСКОВОЙ СИСТЕМОЙ, КОТОРАЯ ДОСТУПНА \r\nВ ВАШЕМ ГОРОДЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '522', 'where_buy', '', '0', NULL, 9, '2021-02-15 01:37:56'),
(537, '2021-02-15 01:32:36', 3, '2021-02-15 01:32:36', 3, 25, NULL, 'Y', NULL, NULL, 100, 'Общие данные', NULL, '', 'text', NULL, '', 'text', 'Общие данные\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '523', 'general', NULL, NULL, NULL, NULL, NULL),
(538, '2021-03-03 10:35:20', 1, '2021-03-03 10:35:20', 1, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2021-03-03 10:35:20', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2021-03-03 10:35:20', 1, NULL, NULL, NULL, NULL, NULL, 'N', '538', NULL, NULL, NULL, NULL, NULL, NULL),
(539, '2021-03-03 10:35:27', 1, '2021-03-03 10:35:27', 1, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2021-03-03 10:35:27', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2021-03-03 10:35:27', 1, NULL, NULL, NULL, NULL, NULL, 'N', '539', NULL, NULL, NULL, NULL, NULL, NULL),
(540, '2021-03-03 10:35:33', 1, '2021-03-03 10:35:33', 1, 11, NULL, 'Y', NULL, NULL, 500, 'Заполненная форма 2021-03-03 10:35:33', NULL, NULL, 'text', NULL, NULL, 'text', 'ЗАПОЛНЕННАЯ ФОРМА 2021-03-03 10:35:33', 1, NULL, NULL, NULL, NULL, NULL, 'N', '540', NULL, NULL, NULL, NULL, NULL, NULL),
(541, '2021-09-03 17:37:07', 3, '2021-09-03 11:12:43', 3, 26, NULL, 'Y', NULL, NULL, 500, 'ГАСИТ', 472, 'Устраняет изжогу уже через 3 минуты', 'text', 473, '', 'text', 'ГАСИТ\r\nУстраняет изжогу уже через 3 минуты\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '541', 'about', '', '0', NULL, 3, '2021-09-03 11:14:19'),
(542, '2021-09-03 12:31:02', 3, '2021-09-03 12:14:37', 3, 27, NULL, 'Y', NULL, NULL, 500, 'Как действует препарат?', 475, '', 'text', 476, '<b>Кальция карбонат</b> обеспечивает быструю (3 минуты), а <b>магния карбонат</b> продолжительную нейтрализацию соляной кислоты желудочного сока и тем самым оказывает защитное действие на слизистую оболочку желудка', 'html', 'КАК ДЕЙСТВУЕТ ПРЕПАРАТ?\r\n\r\nКАЛЬЦИЯ КАРБОНАТ ОБЕСПЕЧИВАЕТ БЫСТРУЮ \r\n(3 МИНУТЫ), А МАГНИЯ КАРБОНАТ ПРОДОЛЖИТЕЛЬНУЮ \r\nНЕЙТРАЛИЗАЦИЮ СОЛЯНОЙ КИСЛОТЫ ЖЕЛУДОЧНОГО \r\nСОКА И ТЕМ САМЫМ ОКАЗЫВАЕТ ЗАЩИТНОЕ ДЕЙСТВИЕ \r\nНА СЛИЗИСТУЮ ОБОЛОЧКУ ЖЕЛУДКА', 1, NULL, NULL, NULL, NULL, NULL, 'N', '542', 'how_works', '', '0', NULL, 3, '2021-09-03 12:20:50'),
(543, '2021-09-03 12:42:46', 3, '2021-09-03 12:35:03', 3, 28, NULL, 'Y', NULL, NULL, 500, 'Способ применения', NULL, '', 'text', 477, '1-2 таблетки разжевать или держать во рту  до полного  растворения. При необходимости можно повторить прием  препарата через 2 часа. Максимальная суточная доза – 11 таблеток', 'html', 'СПОСОБ ПРИМЕНЕНИЯ\r\n\r\n1-2 ТАБЛЕТКИ РАЗЖЕВАТЬ ИЛИ ДЕРЖАТЬ ВО РТУ \r\nДО ПОЛНОГО РАСТВОРЕНИЯ. ПРИ НЕОБХОДИМОСТИ \r\nМОЖНО ПОВТОРИТЬ ПРИЕМ ПРЕПАРАТА ЧЕРЕЗ 2 \r\nЧАСА. МАКСИМАЛЬНАЯ СУТОЧНАЯ ДОЗА – 11 ТАБЛЕТОК', 1, NULL, NULL, NULL, NULL, NULL, 'N', '543', 'usage', '', '0', NULL, 3, '2021-09-03 12:40:36'),
(544, '2021-09-03 12:55:02', 3, '2021-09-03 12:55:02', 3, 29, NULL, 'Y', NULL, NULL, 10, 'Изжога', 478, '', 'text', NULL, '', 'text', 'ИЗЖОГА\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '544', '', '', '0', NULL, NULL, NULL),
(545, '2021-09-03 12:55:23', 3, '2021-09-03 12:55:23', 3, 29, NULL, 'Y', NULL, NULL, 20, 'Диспепсия беременных', 479, '', 'text', NULL, '', 'text', 'ДИСПЕПСИЯ БЕРЕМЕННЫХ\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '545', '', '', '0', NULL, NULL, NULL),
(546, '2021-09-03 12:57:28', 3, '2021-09-03 12:57:28', 3, 29, NULL, 'Y', NULL, NULL, 30, 'Кислая отрыжка', 480, '', 'text', NULL, '', 'text', 'КИСЛАЯ ОТРЫЖКА\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '546', '', '', '0', NULL, NULL, NULL),
(547, '2021-09-03 12:58:10', 3, '2021-09-03 12:58:10', 3, 29, NULL, 'Y', NULL, NULL, 40, 'Периодические боли в области желудка', 481, '', 'text', NULL, '', 'text', 'ПЕРИОДИЧЕСКИЕ БОЛИ В ОБЛАСТИ ЖЕЛУДКА\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '547', '', '', '0', NULL, NULL, NULL),
(548, '2021-09-03 13:03:28', 3, '2021-09-03 12:58:32', 3, 29, NULL, 'Y', NULL, NULL, 50, 'Диспепсия', 482, '(в том числе, вызванная погрешностью в диете, приемом лекарств, злоупотреблением алкоголем, кофе, никотином)', 'text', NULL, '', 'text', 'ДИСПЕПСИЯ\r\n(В ТОМ ЧИСЛЕ, ВЫЗВАННАЯ ПОГРЕШНОСТЬЮ В ДИЕТЕ, ПРИЕМОМ ЛЕКАРСТВ, ЗЛОУПОТРЕБЛЕНИЕМ АЛКОГОЛЕМ, КОФЕ, НИКОТИНОМ)\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '548', '', '', '0', NULL, NULL, NULL),
(549, '2021-09-03 13:03:36', 3, '2021-09-03 12:58:49', 3, 29, NULL, 'Y', NULL, NULL, 60, 'Чувство переполнения или тяжести в эпистрагальной области', 483, '', 'text', NULL, '', 'text', 'ЧУВСТВО ПЕРЕПОЛНЕНИЯ ИЛИ ТЯЖЕСТИ В ЭПИСТРАГАЛЬНОЙ ОБЛАСТИ\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '549', '', '', '0', NULL, NULL, NULL),
(550, '2021-09-03 13:20:27', 3, '2021-09-03 13:20:27', 3, 30, NULL, 'Y', NULL, NULL, 10, 'Zdravcity', 484, '', 'text', NULL, '', 'text', 'ZDRAVCITY\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '550', '', '', '0', NULL, NULL, NULL),
(551, '2021-09-03 14:13:37', 3, '2021-09-03 14:13:37', 3, 30, NULL, 'Y', NULL, NULL, 20, 'Eapteka', 485, '', 'text', NULL, '', 'text', 'EAPTEKA\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '551', '', '', '0', NULL, NULL, NULL),
(552, '2021-09-03 14:14:30', 3, '2021-09-03 14:14:00', 3, 30, NULL, 'Y', NULL, NULL, 30, 'Apteka.ru', 486, '', 'text', NULL, '', 'text', 'APTEKA.RU\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '552', '', '', '0', NULL, NULL, NULL),
(553, '2021-09-03 14:14:39', 3, '2021-09-03 14:14:21', 3, 30, NULL, 'Y', NULL, NULL, 40, 'Piluli', 487, '', 'text', NULL, '', 'text', 'PILULI\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '553', '', '', '0', NULL, NULL, NULL),
(554, '2021-09-03 14:15:12', 3, '2021-09-03 14:15:12', 3, 30, NULL, 'Y', NULL, NULL, 50, 'Piluli2', 488, '', 'text', NULL, '', 'text', 'PILULI2\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '554', '', '', '0', NULL, NULL, NULL),
(555, '2021-09-03 15:33:13', 3, '2021-09-03 14:45:06', 3, 31, NULL, 'Y', NULL, NULL, 500, 'Видео', NULL, '', 'text', 489, '', 'text', 'ВИДЕО\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '555', 'video', '', '0', NULL, 1, '2021-09-03 15:15:23'),
(556, '2021-09-03 17:39:44', 3, '2021-09-03 16:17:21', 3, 32, NULL, 'Y', NULL, NULL, 500, 'Общие сведения', NULL, '<h1><b>Политика конфиденциальности</b></h1>\r\n\r\n<span>Далее идёт текст положений</span>\r\n', 'html', NULL, '<h1><b>Правила пользования сайтом</b></h1>\r\n\r\n<span>Далее идёт текст правил</span>', 'html', 'Общие сведения\r\nПолитика конфиденциальности Далее идёт \r\nтекст положений\r\nПравила пользования сайтом Далее идёт \r\nтекст правил', 1, NULL, NULL, NULL, NULL, NULL, 'N', '556', 'common', '', '0', NULL, NULL, NULL);
-- -----------------------------------
-- Dumping table b_iblock_element_iprop
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_iprop`;
CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_iprop` VALUES
(2, 0, 63, 15, 'Никотиновая кислота (ниацин) в продуктах'),
(2, 0, 64, 15, 'Причины выпадения волос'),
(2, 0, 65, 15, 'Совместимость никотиновой кислоты с другими препаратами и витаминами'),
(2, 0, 66, 15, 'Никотиновая кислота для бровей'),
(2, 0, 76, 15, 'Витамины для волос от выпадения: какие органические вещества необходимы для здоровья и красоты локонов'),
(2, 0, 80, 15, 'Сильное выпадение волос у женщин: причины, лечение, профилактика'),
(2, 0, 81, 15, 'Поможет ли никотиновая кислота избавиться от прыщей, излишней жирности кожи, морщин и других несовершенств?'),
(2, 0, 110, 15, 'Битва за красивые и здоровые локоны: никотиновая кислота против витаминов группы В'),
(2, 0, 114, 15, 'Помогают ли трихологи, когда самолечение волос безрезультатно?'),
(2, 0, 126, 15, 'Выпадение волос у мужчин в молодом возрасте: причины, лечение и профилактика'),
(2, 0, 127, 15, 'Никотиновая кислота в таблетках: показания, нюансы применения и эффективность'),
(2, 0, 140, 15, 'Почему домашние маски для волос на основе никотиновой кислоты не работают на 100%'),
(2, 0, 141, 15, 'Полезна ли никотиновая кислота в стеклянных ампулах?'),
(2, 0, 142, 15, '10 витаминов, которые помогут быстро отрастить здоровые роскошные волосы'),
(2, 0, 143, 15, 'Никотиновая кислота – доступное косметическое средство для профилактики выпадения волос'),
(2, 0, 144, 15, 'Можно ли использовать никотиновую кислоту для стимуляции роста ресниц?'),
(2, 0, 145, 15, 'Реакция организма на никотиновую кислоту: аллергия или естественный процесс?'),
(2, 0, 146, 15, 'Как нарушение гормонального баланса влияет на состояние наших волос?'),
(2, 0, 147, 15, 'Сезонное выпадение волос: как бороться за красоту локонов?'),
(2, 0, 148, 15, 'Выпадение волос у подростков: причины и методы борьбы'),
(2, 0, 169, 15, 'Выпадение волос у детей: большая проблема малышей'),
(2, 0, 170, 15, 'Какие витамины необходимы для нормального роста и здорового состояния волос у детей?'),
(2, 0, 171, 15, 'Как никотиновая кислота помогает сохранить женщинам красоту и здоровье?'),
(2, 0, 172, 15, 'Какие витамины необходимы мужчинам, чтобы предупредить выпадение волос и поддержать здоровье шевелюры'),
(2, 0, 173, 17, 'Секреты правильного ухода за волосами в домашних условиях'),
(2, 0, 174, 15, 'Женские секреты: витамины, которые помогут отрастить сильные и красивые локоны'),
(2, 0, 178, 15, 'Строение волос: секреты, спрятанные под кожей'),
(2, 0, 179, 15, 'Правильный рацион: что нужно есть, чтобы волосы лучше росли?'),
(2, 0, 180, 15, 'test1'),
(2, 0, 183, 15, 'Стресс – причина выпадения волос, затрагивающая детей и взрослых'),
(2, 0, 196, 15, 'Естественный процесс или отклонение от нормы: сколько волосков должно выпадать в день?'),
(2, 0, 197, 15, '6 привычек, которые вредят вашим волосам'),
(2, 0, 198, 15, 'Витамин А – открытие для желающих быстро отрастить волосы'),
(2, 0, 199, 15, 'Как витамин Е помогает нашим волосам оставаться густыми и шелковистыми'),
(2, 0, 200, 15, 'Как масла влияют на здоровье и внешний вид волос'),
(2, 0, 201, 15, 'Укрепляем волосы, чтобы предотвратить их выпадение'),
(2, 0, 202, 15, 'Очаговое облысение: опасный недуг или мелкая неприятность?'),
(2, 0, 203, 15, 'Алопеция: причины, разновидности, методы лечения'),
(2, 0, 209, 15, 'Как и зачем применяют никотиновую кислоту?'),
(2, 0, 219, 15, 'Применение никотиновой кислоты во время беременности'),
(2, 0, 220, 15, 'Выпадение волос у 30-летних женщин: причины и методы борьбы'),
(2, 0, 222, 15, 'Выпадение волос у женщин после 40 лет: причины проблемы и пути решения'),
(2, 0, 223, 15, 'О выпадении волос у женщин старше 50 лет: причины, методы лечения'),
(2, 0, 226, 15, 'Надо знать врага в лицо: распространенные заболевания волос и кожи головы'),
(2, 0, 227, 15, 'Всё ли мы знаем о сыворотках от выпадения волос: особенности данных средств'),
(2, 0, 264, 15, 'Чем опасен недостаток никотиновой кислоты в организме?'),
(2, 0, 265, 18, 'Применение никотиновой кислоты(ниацин) для волос'),
(2, 0, 265, 19, 'никотиновая кислота, инструкция, применение, ниацин'),
(2, 0, 265, 20, 'Инструкция по применению никотиновой кислоты для волос'),
(2, 0, 266, 15, 'Химиотерапия и волосы: как вернуть роскошную шевелюру'),
(2, 0, 267, 15, 'Андрогены – гормоны, которые провоцируют потерю волос'),
(2, 0, 290, 15, 'Выпадение волос в первые месяцы после родов: причины и методы борьбы'),
(2, 0, 291, 15, 'Истончение и поредение волос – проблемы, которые можно решить'),
(2, 0, 292, 15, 'Как остановить выпадение волос после окрашивания?'),
(2, 0, 293, 15, ' «Бабушкины советы»: так ли хороши народные средства от облысения, как о том говорят'),
(2, 0, 295, 15, 'Актуальный вопрос для молодых мам: выпадение волос при грудном вскармливании'),
(2, 0, 296, 15, 'Что такое реактивное выпадение волос и как с ним бороться?'),
(2, 0, 387, 15, 'Как еще называют никотиновую кислоту и почему?'),
(2, 0, 398, 15, 'Как определить тип волос?'),
(2, 0, 410, 15, 'Спорный вопрос: помогает ли гомеопатия в борьбе с выпадением волос');
-- -----------------------------------
-- Dumping table b_iblock_element_lock
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_lock`;
CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m15
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m15`;
CREATE TABLE `b_iblock_element_prop_m15` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m15_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m15_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m15_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m16
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m16`;
CREATE TABLE `b_iblock_element_prop_m16` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m16_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m16_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m16_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_m16` VALUES
(1, 521, 66, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjE1MDoi0KHQvtC00LXRgNC20LjRgiDQstGL0YHQvtC60YPRjiDRgdGD0YLQvtGH0L3Rg9GOINC60L7QvdGG0LXQvdGC0YDQsNGG0LjRjiA8YSBocmVmPSIjd2hlcmUtYnV5IiA+0LPQu9GO0LrQvtC30LDQvNC40L3QsDwvYT4g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L3QsCoqIjt9czozOiJJTUciO2k6NDU2O30=', NULL, 0.0000, ''),
(2, 521, 66, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMiI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjE1MDoi0KHQvtC00LXRgNC20LjRgiDQstGL0YHQvtC60YPRjiDRgdGD0YLQvtGH0L3Rg9GOINC60L7QvdGG0LXQvdGC0YDQsNGG0LjRjiA8YSBocmVmPSIjd2hlcmUtYnV5IiA+0LPQu9GO0LrQvtC30LDQvNC40L3QsDwvYT4g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L3QsCoqIjt9czozOiJJTUciO2k6NDU3O30=', NULL, 0.0000, ''),
(3, 521, 66, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMyI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjE1MDoi0KHQvtC00LXRgNC20LjRgiDQstGL0YHQvtC60YPRjiDRgdGD0YLQvtGH0L3Rg9GOINC60L7QvdGG0LXQvdGC0YDQsNGG0LjRjiA8YSBocmVmPSIjd2hlcmUtYnV5IiA+0LPQu9GO0LrQvtC30LDQvNC40L3QsDwvYT4g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L3QsCoqIjt9czozOiJJTUciO2k6NDU4O30=', NULL, 0.0000, ''),
(4, 521, 66, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiNCI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjE1MDoi0KHQvtC00LXRgNC20LjRgiDQstGL0YHQvtC60YPRjiDRgdGD0YLQvtGH0L3Rg9GOINC60L7QvdGG0LXQvdGC0YDQsNGG0LjRjiA8YSBocmVmPSIjd2hlcmUtYnV5IiA+0LPQu9GO0LrQvtC30LDQvNC40L3QsDwvYT4g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L3QsCoqIjt9czozOiJJTUciO2k6NDU5O30=', NULL, 0.0000, '');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_m17
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m17`;
CREATE TABLE `b_iblock_element_prop_m17` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m17_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m17_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m17_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_m17` VALUES
(1, 522, 67, 'YTozOntzOjQ6Ik5BTUUiO3M6MjA6ItCT0LvRjtC60L7Qt9Cw0LzQuNC9IjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6MzAzOiLQk9C70Y7QutC+0LfQsNC80LjQvSDRj9Cy0LvRj9C10YLRgdGPINGB0YLRgNGD0LrRgtGD0YDQvdGL0Lwg0LrQvtC80L/QvtC90LXQvdGC0L7QvCDQtNC70Y8g0L7QsdGA0LDQt9C+0LLQsNC90LjRjyAo0YHQuNC90YLQtdC30LApINC00YDRg9Cz0LjRhSDQutC+0LzQv9C+0L3QtdC90YLQvtCyINGF0YDRj9GJ0LXQstGL0YUg0YHRgtGA0YPQutGC0YPRgCwg0YLQvtGA0LzQvtC30LjRgiDRgNCw0LfQstC40YLQuNC1INC00LXQs9C10L3QtdGA0LDRgtC40LLQvdGL0YUg0L/RgNC+0YbQtdGB0YHQvtCyINCyINGB0YPRgdGC0LDQstCw0YUiO31zOjM6IklNRyI7YTo1OntzOjQ6Im5hbWUiO3M6MDoiIjtzOjQ6InR5cGUiO3M6MDoiIjtzOjg6InRtcF9uYW1lIjtzOjA6IiI7czo1OiJlcnJvciI7aTo0O3M6NDoic2l6ZSI7aTowO319', NULL, 0.0000, ''),
(2, 522, 67, 'YTozOntzOjQ6Ik5BTUUiO3M6MjA6ItCT0LvRjtC60L7Qt9Cw0LzQuNC9IjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6MzAzOiLQk9C70Y7QutC+0LfQsNC80LjQvSDRj9Cy0LvRj9C10YLRgdGPINGB0YLRgNGD0LrRgtGD0YDQvdGL0Lwg0LrQvtC80L/QvtC90LXQvdGC0L7QvCDQtNC70Y8g0L7QsdGA0LDQt9C+0LLQsNC90LjRjyAo0YHQuNC90YLQtdC30LApINC00YDRg9Cz0LjRhSDQutC+0LzQv9C+0L3QtdC90YLQvtCyINGF0YDRj9GJ0LXQstGL0YUg0YHRgtGA0YPQutGC0YPRgCwg0YLQvtGA0LzQvtC30LjRgiDRgNCw0LfQstC40YLQuNC1INC00LXQs9C10L3QtdGA0LDRgtC40LLQvdGL0YUg0L/RgNC+0YbQtdGB0YHQvtCyINCyINGB0YPRgdGC0LDQstCw0YUiO31zOjM6IklNRyI7aTowO30=', NULL, 0.0000, ''),
(3, 522, 67, 'YTozOntzOjQ6Ik5BTUUiO3M6MjA6ItCT0LvRjtC60L7Qt9Cw0LzQuNC9IjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6MzAzOiLQk9C70Y7QutC+0LfQsNC80LjQvSDRj9Cy0LvRj9C10YLRgdGPINGB0YLRgNGD0LrRgtGD0YDQvdGL0Lwg0LrQvtC80L/QvtC90LXQvdGC0L7QvCDQtNC70Y8g0L7QsdGA0LDQt9C+0LLQsNC90LjRjyAo0YHQuNC90YLQtdC30LApINC00YDRg9Cz0LjRhSDQutC+0LzQv9C+0L3QtdC90YLQvtCyINGF0YDRj9GJ0LXQstGL0YUg0YHRgtGA0YPQutGC0YPRgCwg0YLQvtGA0LzQvtC30LjRgiDRgNCw0LfQstC40YLQuNC1INC00LXQs9C10L3QtdGA0LDRgtC40LLQvdGL0YUg0L/RgNC+0YbQtdGB0YHQvtCyINCyINGB0YPRgdGC0LDQstCw0YUiO31zOjM6IklNRyI7YTo1OntzOjQ6Im5hbWUiO3M6MDoiIjtzOjQ6InR5cGUiO3M6MDoiIjtzOjg6InRtcF9uYW1lIjtzOjA6IiI7czo1OiJlcnJvciI7aTo0O3M6NDoic2l6ZSI7aTowO319', NULL, 0.0000, '');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_m18
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m18`;
CREATE TABLE `b_iblock_element_prop_m18` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m18_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m18_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m18_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_m18` VALUES
(1, 523, 68, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjM1MDoi0JPQu9GO0LrQvtC30LDQvNC40L0sINGF0L7QvdC00YDQvtC40YLQuNC9LCDQvNC10YLQuNC70YHRg9C70YzRhNC+0L3QuNC70LzQtdGC0LDQvSwg0LLRhdC+0LTRj9GJ0LjQtSDQsiDRgdC+0YHRgtCw0LIg0LrQvtC80L/Qu9C10LrRgdCwLCDQuNC80LXRjtGCINC90LDRgtGD0YDQsNC70YzQvdC+0LUg0L/RgNC+0LjRgdGF0L7QttC00LXQvdC40LUuINCf0L7RjdGC0L7QvNGDINC00LvQuNGC0LXQu9GM0L3Ri9C1INC60YPRgNGB0Ysg0LPQu9GO0LrQvtC30LDQvNC40L3QsCDQuCDRhdC+0L3QtNGA0L7QuNGC0LjQvdCwINCx0LXQt9C+0L/QsNGB0L3Riywg0YXQvtGA0L7RiNC+INC/0LXRgNC10L3QvtGB0Y/RgtGB0Y8iO31zOjM6IklNRyI7aTowO30=', NULL, 0.0000, ''),
(2, 523, 68, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMiI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjIyOToi0JLRi9GB0L7QutC+0LUg0YHQvtC00LXRgNC20LDQvdC40LUg0LTQtdC50YHRgtCy0YPRjtGJ0LjRhSDQstC10YnQtdGB0YLQsiDQsiDQutC+0LzQv9C70LXQutGB0LUg0L7QsdC70LDQtNCw0Y7RgiDRgdC40L3QtdGA0LPQuNGH0LXRgdC60LjQvCDRjdGE0YTQtdC60YLQvtC8LCDQtNC+0L/QvtC70L3Rj9GPINC4INGD0YHQuNC70LjQstCw0Y8g0Y3RhNGE0LXQutGC0Ysg0LTRgNGD0LMg0LTRgNGD0LPQsCI7fXM6MzoiSU1HIjthOjU6e3M6NDoibmFtZSI7czowOiIiO3M6NDoidHlwZSI7czowOiIiO3M6ODoidG1wX25hbWUiO3M6MDoiIjtzOjU6ImVycm9yIjtpOjQ7czo0OiJzaXplIjtpOjA7fX0=', NULL, 0.0000, ''),
(3, 523, 68, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMyI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjIyNDoi0JPQu9GO0LrQvtC30LDQvNC40L0g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L0g0LLRhdC+0LTRj9GCINCyINC+0YHQvdC+0LLQvdGL0LUg0LzQtdC20LTRg9C90LDRgNC+0LTQvdGL0LUg0Lgg0KDQvtGB0YHQuNC50YHQutC40LUg0LrQu9C40L3QuNGH0LXRgdC60LjQtSDRgNC10LrQvtC80LXQvdC00LDRhtC40Lgg0L/QviDQu9C10YfQtdC90LjRjiDQvtGB0YLQtdC+0LDRgNGC0YDQuNGC0LAqKioiO31zOjM6IklNRyI7aTowO30=', NULL, 0.0000, '');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_m19
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m19`;
CREATE TABLE `b_iblock_element_prop_m19` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m19_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m19_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m19_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_m19` VALUES
(1, 524, 69, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjQ0OiLQl9Cw0YnQuNGC0LUg0YHRg9GB0YLQsNCy0L3QvtCz0L4g0YXRgNGP0YnQsCI7fXM6MzoiSU1HIjtpOjQ2MDt9', NULL, 0.0000, ''),
(2, 524, 69, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMiI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjQ0OiLQl9Cw0YnQuNGC0LUg0YHRg9GB0YLQsNCy0L3QvtCz0L4g0YXRgNGP0YnQsCI7fXM6MzoiSU1HIjtpOjQ2MTt9', NULL, 0.0000, ''),
(3, 524, 69, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMyI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjQ0OiLQl9Cw0YnQuNGC0LUg0YHRg9GB0YLQsNCy0L3QvtCz0L4g0YXRgNGP0YnQsCI7fXM6MzoiSU1HIjtpOjQ2Mjt9', NULL, 0.0000, ''),
(4, 524, 69, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiNCI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjExMzoi0KPQu9GD0YfRiNC10L3QuNGOINGE0YPQvdC60YbQuNC+0L3QsNC70YzQvdC+0LPQviDRgdC+0YHRgtC+0Y/QvdC40Y8g0YHRg9GB0YLQsNCy0L7QsiDQuCDQv9C+0LfQstC+0L3QvtGH0L3QuNC60LAiO31zOjM6IklNRyI7aTo0NjM7fQ==', NULL, 0.0000, ''),
(5, 524, 69, 'YTozOntzOjQ6Ik5BTUUiO3M6MToiNSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjEyNzoi0K/QstC70Y/RjtGC0YHRjyDQuNGB0YLQvtGH0L3QuNC60L7QvCDQtNC70Y8g0L7QsdGA0LDQt9C+0LLQsNC90LjRjyDRhdGA0Y/RidC10LLQvtC5INC4INGB0L7QtdC00LjQvdC40YLQtdC70YzQvdC+0Lkg0YLQutCw0L3QuCI7fXM6MzoiSU1HIjtpOjQ2NDt9', NULL, 0.0000, '');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_m20
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m20`;
CREATE TABLE `b_iblock_element_prop_m20` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m20_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m20_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m20_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m21
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m21`;
CREATE TABLE `b_iblock_element_prop_m21` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m21_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m21_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m21_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m22
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m22`;
CREATE TABLE `b_iblock_element_prop_m22` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m22_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m22_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m22_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_m22` VALUES
(1, 529, 73, '436', NULL, 436.0000, NULL),
(2, 529, 73, '437', NULL, 437.0000, NULL),
(3, 529, 74, 'YTozOntzOjQ6Ik5BTUUiO3M6MjY6ItCg0LDRgdC/0L7Qu9C+0LbQtdC90LjQtSAxIjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6Njk5OiI8cD7Qn9GA0L7QuNC30LLQvtC00YHRgtCy0LXQvdC90L4t0LjRgdGB0LvQtdC00L7QstCw0YLQtdC70YzRgdC60LjQuSDQutC+0LzQv9C70LXQutGBINGA0LDRgdC/0L7Qu9C+0LbQtdC9INCyINCzLiDQndC+0LLQvtGB0LjQsdC40YDRgdC60LUg0Lgg0LIg0Y3QutC+0LvQvtCz0LjRh9C10YHQutC4LdGH0LjRgdGC0L7QuSDQv9GA0L7QvNGL0YjQu9C10L3QvdC+0Lkg0LfQvtC90LUg0J3QvtCy0L7RgdC40LHQuNGA0YHQutC+0Lkg0L7QsdC70LDRgdGC0LggKNCh0YPQt9GD0L0pLiDQktGB0LUg0L/RgNC+0LjQt9Cy0L7QtNGB0YLQstC10L3QvdGL0LUg0L/Qu9C+0YnQsNC00LrQuCDQv9GA0LXQtNC/0YDQuNGP0YLQuNGPINC+0YDQs9Cw0L3QuNC30L7QstCw0L3RiyDRgdC+0LPQu9Cw0YHQvdC+INGB0L7QstGA0LXQvNC10L3QvdGL0Lwg0YHRgtCw0L3QtNCw0YDRgtCw0LwgR01QICjQn9GA0LDQstC40LvQsNC8INC/0YDQvtC40LfQstC+0LTRgdGC0LLQsCDQuCDQutC+0L3RgtGA0L7Qu9GPINC60LDRh9C10YHRgtCy0LAg0LvQtdC60LDRgNGB0YLQstC10L3QvdGL0YUg0YHRgNC10LTRgdGC0LIpINCwINC60L7QvdGC0YDQvtC70Ywg0LzQtdC90LXQtNC20LzQtdC90YLQsCDQutCw0YfQtdGB0YLQstCwINC+0YHRg9GJ0LXRgdGC0LLQu9GP0LXRgtGB0Y8g0L/QviDRgdGC0LDQvdC00LDRgNGC0LDQvCBJU08gOTAwMToyMDE1LjwvcD4iO31zOjM6IklNRyI7aTo0NjU7fQ==', NULL, 0.0000, ''),
(4, 529, 74, 'YTozOntzOjQ6Ik5BTUUiO3M6MjY6ItCg0LDRgdC/0L7Qu9C+0LbQtdC90LjQtSAyIjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6Njk5OiI8cD7Qn9GA0L7QuNC30LLQvtC00YHRgtCy0LXQvdC90L4t0LjRgdGB0LvQtdC00L7QstCw0YLQtdC70YzRgdC60LjQuSDQutC+0LzQv9C70LXQutGBINGA0LDRgdC/0L7Qu9C+0LbQtdC9INCyINCzLiDQndC+0LLQvtGB0LjQsdC40YDRgdC60LUg0Lgg0LIg0Y3QutC+0LvQvtCz0LjRh9C10YHQutC4LdGH0LjRgdGC0L7QuSDQv9GA0L7QvNGL0YjQu9C10L3QvdC+0Lkg0LfQvtC90LUg0J3QvtCy0L7RgdC40LHQuNGA0YHQutC+0Lkg0L7QsdC70LDRgdGC0LggKNCh0YPQt9GD0L0pLiDQktGB0LUg0L/RgNC+0LjQt9Cy0L7QtNGB0YLQstC10L3QvdGL0LUg0L/Qu9C+0YnQsNC00LrQuCDQv9GA0LXQtNC/0YDQuNGP0YLQuNGPINC+0YDQs9Cw0L3QuNC30L7QstCw0L3RiyDRgdC+0LPQu9Cw0YHQvdC+INGB0L7QstGA0LXQvNC10L3QvdGL0Lwg0YHRgtCw0L3QtNCw0YDRgtCw0LwgR01QICjQn9GA0LDQstC40LvQsNC8INC/0YDQvtC40LfQstC+0LTRgdGC0LLQsCDQuCDQutC+0L3RgtGA0L7Qu9GPINC60LDRh9C10YHRgtCy0LAg0LvQtdC60LDRgNGB0YLQstC10L3QvdGL0YUg0YHRgNC10LTRgdGC0LIpINCwINC60L7QvdGC0YDQvtC70Ywg0LzQtdC90LXQtNC20LzQtdC90YLQsCDQutCw0YfQtdGB0YLQstCwINC+0YHRg9GJ0LXRgdGC0LLQu9GP0LXRgtGB0Y8g0L/QviDRgdGC0LDQvdC00LDRgNGC0LDQvCBJU08gOTAwMToyMDE1LjwvcD4iO31zOjM6IklNRyI7aTo0NjY7fQ==', NULL, 0.0000, ''),
(5, 529, 74, 'YTozOntzOjQ6Ik5BTUUiO3M6MjY6ItCg0LDRgdC/0L7Qu9C+0LbQtdC90LjQtSAzIjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6Njk5OiI8cD7Qn9GA0L7QuNC30LLQvtC00YHRgtCy0LXQvdC90L4t0LjRgdGB0LvQtdC00L7QstCw0YLQtdC70YzRgdC60LjQuSDQutC+0LzQv9C70LXQutGBINGA0LDRgdC/0L7Qu9C+0LbQtdC9INCyINCzLiDQndC+0LLQvtGB0LjQsdC40YDRgdC60LUg0Lgg0LIg0Y3QutC+0LvQvtCz0LjRh9C10YHQutC4LdGH0LjRgdGC0L7QuSDQv9GA0L7QvNGL0YjQu9C10L3QvdC+0Lkg0LfQvtC90LUg0J3QvtCy0L7RgdC40LHQuNGA0YHQutC+0Lkg0L7QsdC70LDRgdGC0LggKNCh0YPQt9GD0L0pLiDQktGB0LUg0L/RgNC+0LjQt9Cy0L7QtNGB0YLQstC10L3QvdGL0LUg0L/Qu9C+0YnQsNC00LrQuCDQv9GA0LXQtNC/0YDQuNGP0YLQuNGPINC+0YDQs9Cw0L3QuNC30L7QstCw0L3RiyDRgdC+0LPQu9Cw0YHQvdC+INGB0L7QstGA0LXQvNC10L3QvdGL0Lwg0YHRgtCw0L3QtNCw0YDRgtCw0LwgR01QICjQn9GA0LDQstC40LvQsNC8INC/0YDQvtC40LfQstC+0LTRgdGC0LLQsCDQuCDQutC+0L3RgtGA0L7Qu9GPINC60LDRh9C10YHRgtCy0LAg0LvQtdC60LDRgNGB0YLQstC10L3QvdGL0YUg0YHRgNC10LTRgdGC0LIpINCwINC60L7QvdGC0YDQvtC70Ywg0LzQtdC90LXQtNC20LzQtdC90YLQsCDQutCw0YfQtdGB0YLQstCwINC+0YHRg9GJ0LXRgdGC0LLQu9GP0LXRgtGB0Y8g0L/QviDRgdGC0LDQvdC00LDRgNGC0LDQvCBJU08gOTAwMToyMDE1LjwvcD4iO31zOjM6IklNRyI7aTo0Njc7fQ==', NULL, 0.0000, ''),
(6, 529, 74, 'YTozOntzOjQ6Ik5BTUUiO3M6MjY6ItCg0LDRgdC/0L7Qu9C+0LbQtdC90LjQtSA0IjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6Njk5OiI8cD7Qn9GA0L7QuNC30LLQvtC00YHRgtCy0LXQvdC90L4t0LjRgdGB0LvQtdC00L7QstCw0YLQtdC70YzRgdC60LjQuSDQutC+0LzQv9C70LXQutGBINGA0LDRgdC/0L7Qu9C+0LbQtdC9INCyINCzLiDQndC+0LLQvtGB0LjQsdC40YDRgdC60LUg0Lgg0LIg0Y3QutC+0LvQvtCz0LjRh9C10YHQutC4LdGH0LjRgdGC0L7QuSDQv9GA0L7QvNGL0YjQu9C10L3QvdC+0Lkg0LfQvtC90LUg0J3QvtCy0L7RgdC40LHQuNGA0YHQutC+0Lkg0L7QsdC70LDRgdGC0LggKNCh0YPQt9GD0L0pLiDQktGB0LUg0L/RgNC+0LjQt9Cy0L7QtNGB0YLQstC10L3QvdGL0LUg0L/Qu9C+0YnQsNC00LrQuCDQv9GA0LXQtNC/0YDQuNGP0YLQuNGPINC+0YDQs9Cw0L3QuNC30L7QstCw0L3RiyDRgdC+0LPQu9Cw0YHQvdC+INGB0L7QstGA0LXQvNC10L3QvdGL0Lwg0YHRgtCw0L3QtNCw0YDRgtCw0LwgR01QICjQn9GA0LDQstC40LvQsNC8INC/0YDQvtC40LfQstC+0LTRgdGC0LLQsCDQuCDQutC+0L3RgtGA0L7Qu9GPINC60LDRh9C10YHRgtCy0LAg0LvQtdC60LDRgNGB0YLQstC10L3QvdGL0YUg0YHRgNC10LTRgdGC0LIpINCwINC60L7QvdGC0YDQvtC70Ywg0LzQtdC90LXQtNC20LzQtdC90YLQsCDQutCw0YfQtdGB0YLQstCwINC+0YHRg9GJ0LXRgdGC0LLQu9GP0LXRgtGB0Y8g0L/QviDRgdGC0LDQvdC00LDRgNGC0LDQvCBJU08gOTAwMToyMDE1LjwvcD4iO31zOjM6IklNRyI7aTo0Njg7fQ==', NULL, 0.0000, '');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_m23
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m23`;
CREATE TABLE `b_iblock_element_prop_m23` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m23_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m23_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m23_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m24
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m24`;
CREATE TABLE `b_iblock_element_prop_m24` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m24_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m24_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m24_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_m24` VALUES
(1, 536, 77, 'http://piluli.ru/', NULL, 0.0000, 'piluli.ru'),
(2, 536, 77, 'http://piluli.ru/', NULL, 0.0000, 'piluli.ru'),
(3, 536, 77, 'http://piluli.ru/', NULL, 0.0000, 'piluli.ru'),
(4, 536, 77, 'http://piluli.ru/', NULL, 0.0000, 'piluli.ru'),
(5, 536, 78, '450', NULL, 450.0000, 'http://ya.ru/'),
(6, 536, 78, '451', NULL, 451.0000, 'http://ya.ru/'),
(7, 536, 78, '452', NULL, 452.0000, 'http://ya.ru/'),
(8, 536, 78, '453', NULL, 453.0000, 'http://ya.ru/'),
(9, 536, 78, '454', NULL, 454.0000, 'http://ya.ru/');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_m26
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m26`;
CREATE TABLE `b_iblock_element_prop_m26` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m26_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m26_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m26_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_m26` VALUES
(1, 541, 86, 'Кальция карбонат', NULL, 0.0000, ''),
(2, 541, 86, 'Магния карбонат', NULL, 0.0000, ''),
(3, 541, 89, 'Не содержит сахар', NULL, 0.0000, ''),
(4, 541, 89, 'Жевательные таблетки с приятным мятным вкусом', NULL, 0.0000, ''),
(5, 541, 89, 'Можно принимать во время беременности и лактации', NULL, 0.0000, '');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_m27
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m27`;
CREATE TABLE `b_iblock_element_prop_m27` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m27_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m27_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m27_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_m27` VALUES
(1, 542, 90, 'Кислота желудочного сока попадает в пищевод', NULL, 0.0000, ''),
(2, 542, 90, 'Появляются жжение, боль, и дискомфорт', NULL, 0.0000, ''),
(3, 542, 90, 'У нижнего сфинктера пищевода снижен тонус', NULL, 0.0000, '');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_m28
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m28`;
CREATE TABLE `b_iblock_element_prop_m28` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m28_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m28_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m28_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m29
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m29`;
CREATE TABLE `b_iblock_element_prop_m29` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m29_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m29_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m29_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m30
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m30`;
CREATE TABLE `b_iblock_element_prop_m30` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m30_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m30_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m30_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m31
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m31`;
CREATE TABLE `b_iblock_element_prop_m31` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m31_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m31_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m31_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_m32
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_m32`;
CREATE TABLE `b_iblock_element_prop_m32` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_elem_prop_m32_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m32_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_elem_prop_m32_3` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_element_prop_s15
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s15`;
CREATE TABLE `b_iblock_element_prop_s15` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s15` VALUES
(518),
(519),
(520);
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s16
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s16`;
CREATE TABLE `b_iblock_element_prop_s16` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_62` int(11) DEFAULT NULL,
  `PROPERTY_63` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_64` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_65` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_66` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s16` VALUES
(521, 431, 'Скачать подробную инструкцию', '#where-buy', 'Где купить', 'a:3:{s:5:\"VALUE\";a:4:{i:0;s:336:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjE1MDoi0KHQvtC00LXRgNC20LjRgiDQstGL0YHQvtC60YPRjiDRgdGD0YLQvtGH0L3Rg9GOINC60L7QvdGG0LXQvdGC0YDQsNGG0LjRjiA8YSBocmVmPSIjd2hlcmUtYnV5IiA+0LPQu9GO0LrQvtC30LDQvNC40L3QsDwvYT4g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L3QsCoqIjt9czozOiJJTUciO2k6NDU2O30=\";i:1;s:336:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMiI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjE1MDoi0KHQvtC00LXRgNC20LjRgiDQstGL0YHQvtC60YPRjiDRgdGD0YLQvtGH0L3Rg9GOINC60L7QvdGG0LXQvdGC0YDQsNGG0LjRjiA8YSBocmVmPSIjd2hlcmUtYnV5IiA+0LPQu9GO0LrQvtC30LDQvNC40L3QsDwvYT4g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L3QsCoqIjt9czozOiJJTUciO2k6NDU3O30=\";i:2;s:336:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMyI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjE1MDoi0KHQvtC00LXRgNC20LjRgiDQstGL0YHQvtC60YPRjiDRgdGD0YLQvtGH0L3Rg9GOINC60L7QvdGG0LXQvdGC0YDQsNGG0LjRjiA8YSBocmVmPSIjd2hlcmUtYnV5IiA+0LPQu9GO0LrQvtC30LDQvNC40L3QsDwvYT4g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L3QsCoqIjt9czozOiJJTUciO2k6NDU4O30=\";i:3;s:336:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiNCI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjE1MDoi0KHQvtC00LXRgNC20LjRgiDQstGL0YHQvtC60YPRjiDRgdGD0YLQvtGH0L3Rg9GOINC60L7QvdGG0LXQvdGC0YDQsNGG0LjRjiA8YSBocmVmPSIjd2hlcmUtYnV5IiA+0LPQu9GO0LrQvtC30LDQvNC40L3QsDwvYT4g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L3QsCoqIjt9czozOiJJTUciO2k6NDU5O30=\";}s:11:\"DESCRIPTION\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}s:2:\"ID\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}}');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s17
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s17`;
CREATE TABLE `b_iblock_element_prop_s17` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_67` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s17` VALUES
(522, 'a:3:{s:5:\"VALUE\";a:3:{i:0;s:684:\"YTozOntzOjQ6Ik5BTUUiO3M6MjA6ItCT0LvRjtC60L7Qt9Cw0LzQuNC9IjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6MzAzOiLQk9C70Y7QutC+0LfQsNC80LjQvSDRj9Cy0LvRj9C10YLRgdGPINGB0YLRgNGD0LrRgtGD0YDQvdGL0Lwg0LrQvtC80L/QvtC90LXQvdGC0L7QvCDQtNC70Y8g0L7QsdGA0LDQt9C+0LLQsNC90LjRjyAo0YHQuNC90YLQtdC30LApINC00YDRg9Cz0LjRhSDQutC+0LzQv9C+0L3QtdC90YLQvtCyINGF0YDRj9GJ0LXQstGL0YUg0YHRgtGA0YPQutGC0YPRgCwg0YLQvtGA0LzQvtC30LjRgiDRgNCw0LfQstC40YLQuNC1INC00LXQs9C10L3QtdGA0LDRgtC40LLQvdGL0YUg0L/RgNC+0YbQtdGB0YHQvtCyINCyINGB0YPRgdGC0LDQstCw0YUiO31zOjM6IklNRyI7YTo1OntzOjQ6Im5hbWUiO3M6MDoiIjtzOjQ6InR5cGUiO3M6MDoiIjtzOjg6InRtcF9uYW1lIjtzOjA6IiI7czo1OiJlcnJvciI7aTo0O3M6NDoic2l6ZSI7aTowO319\";i:1;s:564:\"YTozOntzOjQ6Ik5BTUUiO3M6MjA6ItCT0LvRjtC60L7Qt9Cw0LzQuNC9IjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6MzAzOiLQk9C70Y7QutC+0LfQsNC80LjQvSDRj9Cy0LvRj9C10YLRgdGPINGB0YLRgNGD0LrRgtGD0YDQvdGL0Lwg0LrQvtC80L/QvtC90LXQvdGC0L7QvCDQtNC70Y8g0L7QsdGA0LDQt9C+0LLQsNC90LjRjyAo0YHQuNC90YLQtdC30LApINC00YDRg9Cz0LjRhSDQutC+0LzQv9C+0L3QtdC90YLQvtCyINGF0YDRj9GJ0LXQstGL0YUg0YHRgtGA0YPQutGC0YPRgCwg0YLQvtGA0LzQvtC30LjRgiDRgNCw0LfQstC40YLQuNC1INC00LXQs9C10L3QtdGA0LDRgtC40LLQvdGL0YUg0L/RgNC+0YbQtdGB0YHQvtCyINCyINGB0YPRgdGC0LDQstCw0YUiO31zOjM6IklNRyI7aTowO30=\";i:2;s:684:\"YTozOntzOjQ6Ik5BTUUiO3M6MjA6ItCT0LvRjtC60L7Qt9Cw0LzQuNC9IjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6MzAzOiLQk9C70Y7QutC+0LfQsNC80LjQvSDRj9Cy0LvRj9C10YLRgdGPINGB0YLRgNGD0LrRgtGD0YDQvdGL0Lwg0LrQvtC80L/QvtC90LXQvdGC0L7QvCDQtNC70Y8g0L7QsdGA0LDQt9C+0LLQsNC90LjRjyAo0YHQuNC90YLQtdC30LApINC00YDRg9Cz0LjRhSDQutC+0LzQv9C+0L3QtdC90YLQvtCyINGF0YDRj9GJ0LXQstGL0YUg0YHRgtGA0YPQutGC0YPRgCwg0YLQvtGA0LzQvtC30LjRgiDRgNCw0LfQstC40YLQuNC1INC00LXQs9C10L3QtdGA0LDRgtC40LLQvdGL0YUg0L/RgNC+0YbQtdGB0YHQvtCyINCyINGB0YPRgdGC0LDQstCw0YUiO31zOjM6IklNRyI7YTo1OntzOjQ6Im5hbWUiO3M6MDoiIjtzOjQ6InR5cGUiO3M6MDoiIjtzOjg6InRtcF9uYW1lIjtzOjA6IiI7czo1OiJlcnJvciI7aTo0O3M6NDoic2l6ZSI7aTowO319\";}s:11:\"DESCRIPTION\";a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}s:2:\"ID\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}}');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s18
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s18`;
CREATE TABLE `b_iblock_element_prop_s18` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_68` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_82` int(11) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s18` VALUES
(523, 'a:3:{s:5:\"VALUE\";a:3:{i:0;s:600:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjM1MDoi0JPQu9GO0LrQvtC30LDQvNC40L0sINGF0L7QvdC00YDQvtC40YLQuNC9LCDQvNC10YLQuNC70YHRg9C70YzRhNC+0L3QuNC70LzQtdGC0LDQvSwg0LLRhdC+0LTRj9GJ0LjQtSDQsiDRgdC+0YHRgtCw0LIg0LrQvtC80L/Qu9C10LrRgdCwLCDQuNC80LXRjtGCINC90LDRgtGD0YDQsNC70YzQvdC+0LUg0L/RgNC+0LjRgdGF0L7QttC00LXQvdC40LUuINCf0L7RjdGC0L7QvNGDINC00LvQuNGC0LXQu9GM0L3Ri9C1INC60YPRgNGB0Ysg0LPQu9GO0LrQvtC30LDQvNC40L3QsCDQuCDRhdC+0L3QtNGA0L7QuNGC0LjQvdCwINCx0LXQt9C+0L/QsNGB0L3Riywg0YXQvtGA0L7RiNC+INC/0LXRgNC10L3QvtGB0Y/RgtGB0Y8iO31zOjM6IklNRyI7aTowO30=\";i:1;s:560:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMiI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjIyOToi0JLRi9GB0L7QutC+0LUg0YHQvtC00LXRgNC20LDQvdC40LUg0LTQtdC50YHRgtCy0YPRjtGJ0LjRhSDQstC10YnQtdGB0YLQsiDQsiDQutC+0LzQv9C70LXQutGB0LUg0L7QsdC70LDQtNCw0Y7RgiDRgdC40L3QtdGA0LPQuNGH0LXRgdC60LjQvCDRjdGE0YTQtdC60YLQvtC8LCDQtNC+0L/QvtC70L3Rj9GPINC4INGD0YHQuNC70LjQstCw0Y8g0Y3RhNGE0LXQutGC0Ysg0LTRgNGD0LMg0LTRgNGD0LPQsCI7fXM6MzoiSU1HIjthOjU6e3M6NDoibmFtZSI7czowOiIiO3M6NDoidHlwZSI7czowOiIiO3M6ODoidG1wX25hbWUiO3M6MDoiIjtzOjU6ImVycm9yIjtpOjQ7czo0OiJzaXplIjtpOjA7fX0=\";i:2;s:432:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMyI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjIyNDoi0JPQu9GO0LrQvtC30LDQvNC40L0g0Lgg0YXQvtC90LTRgNC+0LjRgtC40L0g0LLRhdC+0LTRj9GCINCyINC+0YHQvdC+0LLQvdGL0LUg0LzQtdC20LTRg9C90LDRgNC+0LTQvdGL0LUg0Lgg0KDQvtGB0YHQuNC50YHQutC40LUg0LrQu9C40L3QuNGH0LXRgdC60LjQtSDRgNC10LrQvtC80LXQvdC00LDRhtC40Lgg0L/QviDQu9C10YfQtdC90LjRjiDQvtGB0YLQtdC+0LDRgNGC0YDQuNGC0LAqKioiO31zOjM6IklNRyI7aTowO30=\";}s:11:\"DESCRIPTION\";a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}s:2:\"ID\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}}', 1);
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s19
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s19`;
CREATE TABLE `b_iblock_element_prop_s19` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_69` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s19` VALUES
(524, 'a:3:{s:5:\"VALUE\";a:5:{i:0;s:192:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjQ0OiLQl9Cw0YnQuNGC0LUg0YHRg9GB0YLQsNCy0L3QvtCz0L4g0YXRgNGP0YnQsCI7fXM6MzoiSU1HIjtpOjQ2MDt9\";i:1;s:192:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMiI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjQ0OiLQl9Cw0YnQuNGC0LUg0YHRg9GB0YLQsNCy0L3QvtCz0L4g0YXRgNGP0YnQsCI7fXM6MzoiSU1HIjtpOjQ2MTt9\";i:2;s:192:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiMyI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjQ0OiLQl9Cw0YnQuNGC0LUg0YHRg9GB0YLQsNCy0L3QvtCz0L4g0YXRgNGP0YnQsCI7fXM6MzoiSU1HIjtpOjQ2Mjt9\";i:3;s:288:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiNCI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjExMzoi0KPQu9GD0YfRiNC10L3QuNGOINGE0YPQvdC60YbQuNC+0L3QsNC70YzQvdC+0LPQviDRgdC+0YHRgtC+0Y/QvdC40Y8g0YHRg9GB0YLQsNCy0L7QsiDQuCDQv9C+0LfQstC+0L3QvtGH0L3QuNC60LAiO31zOjM6IklNRyI7aTo0NjM7fQ==\";i:4;s:304:\"YTozOntzOjQ6Ik5BTUUiO3M6MToiNSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjEyNzoi0K/QstC70Y/RjtGC0YHRjyDQuNGB0YLQvtGH0L3QuNC60L7QvCDQtNC70Y8g0L7QsdGA0LDQt9C+0LLQsNC90LjRjyDRhdGA0Y/RidC10LLQvtC5INC4INGB0L7QtdC00LjQvdC40YLQtdC70YzQvdC+0Lkg0YLQutCw0L3QuCI7fXM6MzoiSU1HIjtpOjQ2NDt9\";}s:11:\"DESCRIPTION\";a:5:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}s:2:\"ID\";a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";}}');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s20
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s20`;
CREATE TABLE `b_iblock_element_prop_s20` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_70` decimal(18,4) DEFAULT NULL,
  `PROPERTY_71` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s20` VALUES
(525, 2.0000, 'капсулы'),
(526, 2.0000, 'раза в день во время еды'),
(527, 2.0000, 'месяца');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s21
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s21`;
CREATE TABLE `b_iblock_element_prop_s21` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_72` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s21` VALUES
(528, 'a:4:{i:0;a:2:{i:0;s:67:\"Биологически активные вещества (БАВ)\";i:1;s:80:\"Содержание БАВ в суточной дозе, мг(4 капсулы)\";}i:1;a:2:{i:0;s:94:\"Глюкозамина гидрохлорид(в пересчете на глюкозамин)\";i:1;s:11:\"1 275(1060)\";}i:2;a:2:{i:0;s:94:\"Глюкозамина гидрохлорид(в пересчете на глюкозамин)\";i:1;s:11:\"1 275(1060)\";}i:3;a:2:{i:0;s:94:\"Глюкозамина гидрохлорид(в пересчете на глюкозамин)\";i:1;s:11:\"1 275(1060)\";}}');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s22
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s22`;
CREATE TABLE `b_iblock_element_prop_s22` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_73` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_74` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s22` VALUES
(529, 'a:3:{s:5:\"VALUE\";a:2:{i:0;s:3:\"436\";i:1;s:3:\"437\";}s:11:\"DESCRIPTION\";a:2:{i:0;N;i:1;N;}s:2:\"ID\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}}', 'a:3:{s:5:\"VALUE\";a:4:{i:0;s:1104:\"YTozOntzOjQ6Ik5BTUUiO3M6MjY6ItCg0LDRgdC/0L7Qu9C+0LbQtdC90LjQtSAxIjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6Njk5OiI8cD7Qn9GA0L7QuNC30LLQvtC00YHRgtCy0LXQvdC90L4t0LjRgdGB0LvQtdC00L7QstCw0YLQtdC70YzRgdC60LjQuSDQutC+0LzQv9C70LXQutGBINGA0LDRgdC/0L7Qu9C+0LbQtdC9INCyINCzLiDQndC+0LLQvtGB0LjQsdC40YDRgdC60LUg0Lgg0LIg0Y3QutC+0LvQvtCz0LjRh9C10YHQutC4LdGH0LjRgdGC0L7QuSDQv9GA0L7QvNGL0YjQu9C10L3QvdC+0Lkg0LfQvtC90LUg0J3QvtCy0L7RgdC40LHQuNGA0YHQutC+0Lkg0L7QsdC70LDRgdGC0LggKNCh0YPQt9GD0L0pLiDQktGB0LUg0L/RgNC+0LjQt9Cy0L7QtNGB0YLQstC10L3QvdGL0LUg0L/Qu9C+0YnQsNC00LrQuCDQv9GA0LXQtNC/0YDQuNGP0YLQuNGPINC+0YDQs9Cw0L3QuNC30L7QstCw0L3RiyDRgdC+0LPQu9Cw0YHQvdC+INGB0L7QstGA0LXQvNC10L3QvdGL0Lwg0YHRgtCw0L3QtNCw0YDRgtCw0LwgR01QICjQn9GA0LDQstC40LvQsNC8INC/0YDQvtC40LfQstC+0LTRgdGC0LLQsCDQuCDQutC+0L3RgtGA0L7Qu9GPINC60LDRh9C10YHRgtCy0LAg0LvQtdC60LDRgNGB0YLQstC10L3QvdGL0YUg0YHRgNC10LTRgdGC0LIpINCwINC60L7QvdGC0YDQvtC70Ywg0LzQtdC90LXQtNC20LzQtdC90YLQsCDQutCw0YfQtdGB0YLQstCwINC+0YHRg9GJ0LXRgdGC0LLQu9GP0LXRgtGB0Y8g0L/QviDRgdGC0LDQvdC00LDRgNGC0LDQvCBJU08gOTAwMToyMDE1LjwvcD4iO31zOjM6IklNRyI7aTo0NjU7fQ==\";i:1;s:1104:\"YTozOntzOjQ6Ik5BTUUiO3M6MjY6ItCg0LDRgdC/0L7Qu9C+0LbQtdC90LjQtSAyIjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6Njk5OiI8cD7Qn9GA0L7QuNC30LLQvtC00YHRgtCy0LXQvdC90L4t0LjRgdGB0LvQtdC00L7QstCw0YLQtdC70YzRgdC60LjQuSDQutC+0LzQv9C70LXQutGBINGA0LDRgdC/0L7Qu9C+0LbQtdC9INCyINCzLiDQndC+0LLQvtGB0LjQsdC40YDRgdC60LUg0Lgg0LIg0Y3QutC+0LvQvtCz0LjRh9C10YHQutC4LdGH0LjRgdGC0L7QuSDQv9GA0L7QvNGL0YjQu9C10L3QvdC+0Lkg0LfQvtC90LUg0J3QvtCy0L7RgdC40LHQuNGA0YHQutC+0Lkg0L7QsdC70LDRgdGC0LggKNCh0YPQt9GD0L0pLiDQktGB0LUg0L/RgNC+0LjQt9Cy0L7QtNGB0YLQstC10L3QvdGL0LUg0L/Qu9C+0YnQsNC00LrQuCDQv9GA0LXQtNC/0YDQuNGP0YLQuNGPINC+0YDQs9Cw0L3QuNC30L7QstCw0L3RiyDRgdC+0LPQu9Cw0YHQvdC+INGB0L7QstGA0LXQvNC10L3QvdGL0Lwg0YHRgtCw0L3QtNCw0YDRgtCw0LwgR01QICjQn9GA0LDQstC40LvQsNC8INC/0YDQvtC40LfQstC+0LTRgdGC0LLQsCDQuCDQutC+0L3RgtGA0L7Qu9GPINC60LDRh9C10YHRgtCy0LAg0LvQtdC60LDRgNGB0YLQstC10L3QvdGL0YUg0YHRgNC10LTRgdGC0LIpINCwINC60L7QvdGC0YDQvtC70Ywg0LzQtdC90LXQtNC20LzQtdC90YLQsCDQutCw0YfQtdGB0YLQstCwINC+0YHRg9GJ0LXRgdGC0LLQu9GP0LXRgtGB0Y8g0L/QviDRgdGC0LDQvdC00LDRgNGC0LDQvCBJU08gOTAwMToyMDE1LjwvcD4iO31zOjM6IklNRyI7aTo0NjY7fQ==\";i:2;s:1104:\"YTozOntzOjQ6Ik5BTUUiO3M6MjY6ItCg0LDRgdC/0L7Qu9C+0LbQtdC90LjQtSAzIjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6Njk5OiI8cD7Qn9GA0L7QuNC30LLQvtC00YHRgtCy0LXQvdC90L4t0LjRgdGB0LvQtdC00L7QstCw0YLQtdC70YzRgdC60LjQuSDQutC+0LzQv9C70LXQutGBINGA0LDRgdC/0L7Qu9C+0LbQtdC9INCyINCzLiDQndC+0LLQvtGB0LjQsdC40YDRgdC60LUg0Lgg0LIg0Y3QutC+0LvQvtCz0LjRh9C10YHQutC4LdGH0LjRgdGC0L7QuSDQv9GA0L7QvNGL0YjQu9C10L3QvdC+0Lkg0LfQvtC90LUg0J3QvtCy0L7RgdC40LHQuNGA0YHQutC+0Lkg0L7QsdC70LDRgdGC0LggKNCh0YPQt9GD0L0pLiDQktGB0LUg0L/RgNC+0LjQt9Cy0L7QtNGB0YLQstC10L3QvdGL0LUg0L/Qu9C+0YnQsNC00LrQuCDQv9GA0LXQtNC/0YDQuNGP0YLQuNGPINC+0YDQs9Cw0L3QuNC30L7QstCw0L3RiyDRgdC+0LPQu9Cw0YHQvdC+INGB0L7QstGA0LXQvNC10L3QvdGL0Lwg0YHRgtCw0L3QtNCw0YDRgtCw0LwgR01QICjQn9GA0LDQstC40LvQsNC8INC/0YDQvtC40LfQstC+0LTRgdGC0LLQsCDQuCDQutC+0L3RgtGA0L7Qu9GPINC60LDRh9C10YHRgtCy0LAg0LvQtdC60LDRgNGB0YLQstC10L3QvdGL0YUg0YHRgNC10LTRgdGC0LIpINCwINC60L7QvdGC0YDQvtC70Ywg0LzQtdC90LXQtNC20LzQtdC90YLQsCDQutCw0YfQtdGB0YLQstCwINC+0YHRg9GJ0LXRgdGC0LLQu9GP0LXRgtGB0Y8g0L/QviDRgdGC0LDQvdC00LDRgNGC0LDQvCBJU08gOTAwMToyMDE1LjwvcD4iO31zOjM6IklNRyI7aTo0Njc7fQ==\";i:3;s:1104:\"YTozOntzOjQ6Ik5BTUUiO3M6MjY6ItCg0LDRgdC/0L7Qu9C+0LbQtdC90LjQtSA0IjtzOjU6IkRFU0NSIjthOjI6e3M6NDoiVFlQRSI7czo0OiJodG1sIjtzOjQ6IlRFWFQiO3M6Njk5OiI8cD7Qn9GA0L7QuNC30LLQvtC00YHRgtCy0LXQvdC90L4t0LjRgdGB0LvQtdC00L7QstCw0YLQtdC70YzRgdC60LjQuSDQutC+0LzQv9C70LXQutGBINGA0LDRgdC/0L7Qu9C+0LbQtdC9INCyINCzLiDQndC+0LLQvtGB0LjQsdC40YDRgdC60LUg0Lgg0LIg0Y3QutC+0LvQvtCz0LjRh9C10YHQutC4LdGH0LjRgdGC0L7QuSDQv9GA0L7QvNGL0YjQu9C10L3QvdC+0Lkg0LfQvtC90LUg0J3QvtCy0L7RgdC40LHQuNGA0YHQutC+0Lkg0L7QsdC70LDRgdGC0LggKNCh0YPQt9GD0L0pLiDQktGB0LUg0L/RgNC+0LjQt9Cy0L7QtNGB0YLQstC10L3QvdGL0LUg0L/Qu9C+0YnQsNC00LrQuCDQv9GA0LXQtNC/0YDQuNGP0YLQuNGPINC+0YDQs9Cw0L3QuNC30L7QstCw0L3RiyDRgdC+0LPQu9Cw0YHQvdC+INGB0L7QstGA0LXQvNC10L3QvdGL0Lwg0YHRgtCw0L3QtNCw0YDRgtCw0LwgR01QICjQn9GA0LDQstC40LvQsNC8INC/0YDQvtC40LfQstC+0LTRgdGC0LLQsCDQuCDQutC+0L3RgtGA0L7Qu9GPINC60LDRh9C10YHRgtCy0LAg0LvQtdC60LDRgNGB0YLQstC10L3QvdGL0YUg0YHRgNC10LTRgdGC0LIpINCwINC60L7QvdGC0YDQvtC70Ywg0LzQtdC90LXQtNC20LzQtdC90YLQsCDQutCw0YfQtdGB0YLQstCwINC+0YHRg9GJ0LXRgdGC0LLQu9GP0LXRgtGB0Y8g0L/QviDRgdGC0LDQvdC00LDRgNGC0LDQvCBJU08gOTAwMToyMDE1LjwvcD4iO31zOjM6IklNRyI7aTo0Njg7fQ==\";}s:11:\"DESCRIPTION\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}s:2:\"ID\";a:4:{i:0;s:1:\"3\";i:1;s:1:\"4\";i:2;s:1:\"5\";i:3;s:1:\"6\";}}');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s23
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s23`;
CREATE TABLE `b_iblock_element_prop_s23` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_75` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_76` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s23` VALUES
(530, '2021-02-01', 'YTozOntzOjQ6Ik5BTUUiO3M6MToiMSI7czo1OiJERVNDUiI7YToyOntzOjQ6IlRZUEUiO3M6NDoiaHRtbCI7czo0OiJURVhUIjtzOjI5ODoi0J/RgNC4INGC0YDQsNCy0LzQsNGFINCy0YvQv9C+0LvQvdGP0YLRjCDQs9C40LzQvdCw0YHRgtC40LrRgyDQvdC10LvRjNC30Y8uINCd0YPQttC90L4g0LTQvtC20LTQsNGC0YzRgdGPINC/0L7Qu9C90L7Qs9C+INC30LDQttC40LLQu9C10L3QuNGPLiDQpdC+0YLRjyDQv9GA0Lgg0YHQvtCx0LvRjtC00LXQvdC40Lgg0L/QvtGB0YLQtdC70YzQvdC+0LPQviDRgNC10LbQuNC80LAg0LvRkdCz0LrQuNC1INC00LLQuNC20LXQvdC40Y8g0YLQvtC70YzQutC+INGD0YHQutC+0YDRj9GCINGN0YLQvtGCINC/0YDQvtGG0LXRgdGBLiI7fXM6MzoiSU1HIjtpOjQ2OTt9'),
(531, '2021-01-13', NULL),
(532, '2021-01-08', NULL),
(533, '2021-01-04', NULL),
(534, '2020-12-31', NULL),
(535, '2020-11-18', NULL);
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s24
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s24`;
CREATE TABLE `b_iblock_element_prop_s24` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_77` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_77` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_78` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_78` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s24` VALUES
(536, 'a:3:{s:5:\"VALUE\";a:4:{i:0;s:17:\"http://piluli.ru/\";i:1;s:17:\"http://piluli.ru/\";i:2;s:17:\"http://piluli.ru/\";i:3;s:17:\"http://piluli.ru/\";}s:11:\"DESCRIPTION\";a:4:{i:0;s:9:\"piluli.ru\";i:1;s:9:\"piluli.ru\";i:2;s:9:\"piluli.ru\";i:3;s:9:\"piluli.ru\";}s:2:\"ID\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}}', NULL, 'a:3:{s:5:\"VALUE\";a:5:{i:0;s:3:\"450\";i:1;s:3:\"451\";i:2;s:3:\"452\";i:3;s:3:\"453\";i:4;s:3:\"454\";}s:11:\"DESCRIPTION\";a:5:{i:0;s:13:\"http://ya.ru/\";i:1;s:13:\"http://ya.ru/\";i:2;s:13:\"http://ya.ru/\";i:3;s:13:\"http://ya.ru/\";i:4;s:13:\"http://ya.ru/\";}s:2:\"ID\";a:5:{i:0;s:1:\"5\";i:1;s:1:\"6\";i:2;s:1:\"7\";i:3;s:1:\"8\";i:4;s:1:\"9\";}}', NULL);
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s26
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s26`;
CREATE TABLE `b_iblock_element_prop_s26` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_83` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_85` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_86` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_87` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_89` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s26` VALUES
(541, 'Где купить', 'Действующие вещества:', NULL, '#where_buy', NULL);
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s27
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s27`;
CREATE TABLE `b_iblock_element_prop_s27` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_90` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s27` VALUES
(542, 'a:3:{s:5:\"VALUE\";a:3:{i:0;s:81:\"Кислота желудочного сока попадает в пищевод\";i:1;s:68:\"Появляются жжение, боль, и дискомфорт\";i:2;s:77:\"У нижнего сфинктера пищевода снижен тонус\";}s:11:\"DESCRIPTION\";a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}s:2:\"ID\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}}');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s28
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s28`;
CREATE TABLE `b_iblock_element_prop_s28` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_91` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s28` VALUES
(543, 'Взрослым и детям от 12 лет');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s29
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s29`;
CREATE TABLE `b_iblock_element_prop_s29` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s29` VALUES
(544),
(545),
(546),
(547),
(548),
(549);
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s30
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s30`;
CREATE TABLE `b_iblock_element_prop_s30` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_92` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s30` VALUES
(550, 'https://Zdravcity.ru/'),
(551, 'https://Eapteka.ru/'),
(552, 'https://Apteka.ru/'),
(553, 'https://Piluli.ru/'),
(554, 'https://Piluli.ru/');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s31
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s31`;
CREATE TABLE `b_iblock_element_prop_s31` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_93` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s31` VALUES
(555, 'https://www.youtube.com/embed/7jlpiU6V008?autoplay=1');
-- -----------------------------------
-- Dumping table b_iblock_element_prop_s32
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_prop_s32`;
CREATE TABLE `b_iblock_element_prop_s32` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `PROPERTY_94` int(11) DEFAULT NULL,
  `PROPERTY_95` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_96` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_97` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_98` int(11) DEFAULT NULL,
  `PROPERTY_99` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_100` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_101` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_prop_s32` VALUES
(556, 490, 'a:2:{s:4:\"TEXT\";s:41:\"Продукт компании RENEWAL®\";s:4:\"TYPE\";s:4:\"TEXT\";}', '8-800-200-0995', 'Скачать инструкцию.pdf', 491, 'a:2:{s:4:\"TEXT\";s:210:\"имеются противопоказания. перед применением внимательно прочитайте инструкцию или проконсультируйтесь с врачом.\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'a:2:{s:4:\"TEXT\";s:210:\"ИМЕЮТСЯ ПРОТИВОПОКАЗАНИЯ. ПЕРЕД ПРИМЕНЕНИЕМ ВНИМАТЕЛЬНО ПРОЧИТАЙТЕ ИНСТРУКЦИЮ ИЛИ ПРОКОНСУЛЬТИРУЙТЕСЬ С ВРАЧОМ.\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'a:2:{s:4:\"TEXT\";s:310:\"Сайт использует файлы cookies и сервис сбора данных его посетителей. Продолжая использовать данный сайт, вы автоматически соглашаетесь с использованием данных технологий.\";s:4:\"TYPE\";s:4:\"TEXT\";}');
-- -----------------------------------
-- Dumping table b_iblock_element_property
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_property`;
CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1044 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_element_property` VALUES
(498, 13, 469, '2', 'text', NULL, 2.0000, ''),
(499, 24, 469, 'Современные ', 'text', NULL, 0.0000, ''),
(500, 24, 469, 'Надежные ', 'text', NULL, 0.0000, ''),
(501, 24, 469, 'Гипоаллергенные', 'text', NULL, 0.0000, ''),
(502, 11, 469, 'a:2:{s:4:\"TEXT\";s:78:\"Не содержат красителей br\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(503, 11, 469, 'a:2:{s:4:\"TEXT\";s:223:\"Комфортное применение в качестве \r\nдополнительной защиты \r\nв конце цикла \r\nи в критическии дни \r\nпри использовании тампонов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(504, 11, 469, 'a:2:{s:4:\"TEXT\";s:42:\"Ультратонкие, менее 3мм\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'text', NULL, 0.0000, ''),
(505, 18, 469, '2,6 мм', 'text', NULL, 2.0000, ''),
(506, 19, 469, '180 мм', 'text', NULL, 180.0000, ''),
(507, 22, 469, '10 штук', 'text', NULL, 10.0000, ''),
(511, 10, 469, 'Мягкая поверхность, 10 штук', 'text', NULL, 0.0000, ''),
(512, 12, 469, 'images/ico-11.svg', 'text', NULL, 0.0000, ''),
(513, 12, 469, 'images/ico-12.svg', 'text', NULL, 0.0000, ''),
(514, 12, 469, 'images/ico-13.svg', 'text', NULL, 0.0000, ''),
(515, 14, 469, 'images/arrow-right-b.svg', 'text', NULL, 0.0000, ''),
(516, 15, 469, 'images/img-zoom-1.png', 'text', NULL, 0.0000, ''),
(517, 16, 469, 'images/img-loading-1.png', 'text', NULL, 0.0000, ''),
(518, 17, 469, 'images/sprites/img-sprite-1.png', 'text', NULL, 0.0000, ''),
(519, 20, 469, 'Y', 'text', NULL, 0.0000, ''),
(520, 23, 469, 'images/img-scheme-1.png', 'text', NULL, 0.0000, ''),
(521, 26, 469, 'images/img-zoom-1-back.png', 'text', NULL, 0.0000, ''),
(522, 28, 469, 'images/ind-1.svg', 'text', NULL, 0.0000, ''),
(523, 29, 469, 'images/ind-2-na.svg', 'text', NULL, 0.0000, ''),
(524, 9, 469, 'images/a-img-1.png', 'text', NULL, 0.0000, ''),
(525, 9, 470, 'images/a-img-2.png', 'text', NULL, 0.0000, ''),
(526, 10, 470, 'С поверхностью «сетка», 10 штук', 'text', NULL, 0.0000, ''),
(527, 11, 470, 'a:2:{s:4:\"TEXT\";s:78:\"Не содержат красителей br\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(528, 11, 470, 'a:2:{s:4:\"TEXT\";s:165:\"Обеспечивают бережный уход за кожей br\r\nв интимной области, без трения br\r\nи раздражений кожи\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(529, 11, 470, 'a:2:{s:4:\"TEXT\";s:43:\"Ультратонкие, менее 3 мм\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'text', NULL, 0.0000, ''),
(530, 12, 470, 'images/ico-21.svg', 'text', NULL, 0.0000, ''),
(531, 12, 470, 'images/ico-22.svg', 'text', NULL, 0.0000, ''),
(532, 12, 470, 'images/ico-23.svg', 'text', NULL, 0.0000, ''),
(533, 14, 470, 'images/arrow-right-f.svg', 'text', NULL, 0.0000, ''),
(534, 15, 470, 'images/img-zoom-2.png', 'text', NULL, 0.0000, ''),
(535, 16, 470, 'images/img-loading-2.png', 'text', NULL, 0.0000, ''),
(536, 17, 470, 'images/sprites/img-sprite-2.png', 'text', NULL, 0.0000, ''),
(537, 18, 470, '2.6 мм', 'text', NULL, 2.6000, ''),
(538, 19, 470, '240 мм', 'text', NULL, 240.0000, ''),
(539, 20, 470, 'Y', 'text', NULL, 0.0000, ''),
(540, 21, 470, 'Y', 'text', NULL, 0.0000, ''),
(541, 22, 470, '10 штук', 'text', NULL, 10.0000, ''),
(542, 23, 470, 'images/img-scheme-2.png', 'text', NULL, 0.0000, ''),
(543, 24, 470, 'Гипоаллергенные', 'text', NULL, 0.0000, ''),
(544, 24, 470, 'Современные', 'text', NULL, 0.0000, ''),
(545, 24, 470, 'Надежные', 'text', NULL, 0.0000, ''),
(546, 25, 470, 'a:2:{s:4:\"TEXT\";s:174:\"Прокладки Nuage Normal<br>не содержат красителей<br>и ароматизаторов. Все материалы<br>гипоаллергенные.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(547, 25, 470, 'a:2:{s:4:\"TEXT\";s:244:\"Содержат 5 слоев, выполненных<br>из современных материалов,<br>что позволяет обеспечивать<br>максимальную высокотехнологичную<br>защиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(548, 25, 470, 'a:2:{s:4:\"TEXT\";s:206:\"Крылышки и удерживающая<br>прокладку на белье основа<br>надежно фиксируют прокладку<br>и предотвращают протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(549, 26, 470, 'images/img-zoom-2-back.png', 'text', NULL, 0.0000, ''),
(550, 28, 470, 'images/ind-12.svg', 'text', NULL, 0.0000, ''),
(551, 29, 470, 'images/ind-22.svg', 'text', NULL, 0.0000, ''),
(552, 10, 471, 'С поверхностью «сетка», 10 штук', 'text', NULL, 0.0000, ''),
(553, 9, 471, 'images/a-img-3.png', 'text', NULL, 0.0000, ''),
(554, 11, 471, 'a:2:{s:4:\"TEXT\";s:74:\"Не содержат красителей и ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(555, 11, 471, 'a:2:{s:4:\"TEXT\";s:157:\"Обеспечивают бережный уход за кожей в интимной области, без трения и раздражений кожи\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(556, 11, 471, 'a:2:{s:4:\"TEXT\";s:43:\"Ультратонкие, менее 3 мм\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'text', NULL, 0.0000, ''),
(557, 12, 471, 'images/ico-31.svg', 'text', NULL, 0.0000, ''),
(558, 12, 471, 'images/ico-32.svg', 'text', NULL, 0.0000, ''),
(559, 12, 471, 'images/ico-33.svg', 'text', NULL, 0.0000, ''),
(560, 14, 471, 'images/arrow-right-p3.svg', 'text', NULL, 0.0000, ''),
(561, 15, 471, 'images/img-zoom-3.png', 'text', NULL, 0.0000, ''),
(562, 16, 471, 'images/img-loading-3.png', 'text', NULL, 0.0000, ''),
(563, 17, 471, 'images/sprites/img-sprite-3.png', 'text', NULL, 0.0000, ''),
(564, 18, 471, '2.6 мм', 'text', NULL, 2.6000, ''),
(565, 19, 471, '285 мм', 'text', NULL, 285.0000, ''),
(566, 20, 471, 'Y', 'text', NULL, 0.0000, ''),
(567, 21, 471, 'Y', 'text', NULL, 0.0000, ''),
(568, 23, 471, 'images/img-scheme-3.png', 'text', NULL, 0.0000, ''),
(569, 24, 471, 'Современные', 'text', NULL, 0.0000, ''),
(570, 24, 471, 'Для обильных 										выделений', 'text', NULL, 0.0000, ''),
(571, 24, 471, 'Надежные', 'text', NULL, 0.0000, ''),
(572, 24, 471, 'Гипоаллергенные', 'text', NULL, 0.0000, ''),
(573, 25, 471, 'a:2:{s:4:\"TEXT\";s:232:\"Содержат 5 слоев, выполненных из современных материалов, что позволяет обеспечивать максимальную высокотехнологичную защиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(574, 25, 471, 'a:2:{s:4:\"TEXT\";s:74:\"Увеличенные скорость и объем впитывания\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(575, 25, 471, 'a:2:{s:4:\"TEXT\";s:194:\"Крылышки и удерживающая прокладку на белье основа надежно фиксируют прокладку предотвращают протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(576, 25, 471, 'a:2:{s:4:\"TEXT\";s:164:\"Прокладки Nuage Super не содержат красителей и ароматизаторов. Все материалы гипоаллергенные.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(577, 26, 471, 'images/img-zoom-3-back.png', 'text', NULL, 0.0000, ''),
(578, 28, 471, 'images/ind-23.svg', 'text', NULL, 0.0000, ''),
(579, 29, 471, 'images/ind-13.svg', 'text', NULL, 0.0000, ''),
(580, 13, 471, '5', 'text', NULL, 5.0000, ''),
(581, 22, 471, '10 штук', 'text', NULL, 10.0000, ''),
(582, 11, 472, 'a:2:{s:4:\"TEXT\";s:78:\"Не содержат красителей br\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(583, 11, 472, 'a:2:{s:4:\"TEXT\";s:69:\"В 2 раза надежнее. <br/> Двойная фиксация\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(584, 11, 472, 'a:2:{s:4:\"TEXT\";s:56:\"Ультратонкие,\r\n												менее 3 мм\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'text', NULL, 0.0000, ''),
(585, 12, 472, 'images/ico-41.svg', 'text', NULL, 0.0000, ''),
(586, 12, 472, 'images/ico-42.svg', 'text', NULL, 0.0000, ''),
(587, 12, 472, 'images/ico-43.svg', 'text', NULL, 0.0000, ''),
(588, 13, 472, '5', 'text', NULL, 5.0000, ''),
(589, 14, 472, 'images/arrow-right-p4.svg', 'text', NULL, 0.0000, ''),
(590, 15, 472, 'images/img-zoom-4.png', 'text', NULL, 0.0000, ''),
(591, 16, 472, 'images/img-loading-4.png', 'text', NULL, 0.0000, ''),
(592, 17, 472, 'images/sprites/img-sprite-4.png', 'text', NULL, 0.0000, ''),
(593, 18, 472, '2.6 мм', 'text', NULL, 2.6000, ''),
(594, 19, 472, ' 285 мм', 'text', NULL, 285.0000, ''),
(595, 22, 472, '8 штук', 'text', NULL, 8.0000, ''),
(596, 26, 472, 'images/img-zoom-4-back.png', 'text', NULL, 0.0000, ''),
(597, 13, 470, '4', 'text', NULL, 4.0000, ''),
(598, 33, 470, 'drops-2', 'text', NULL, 0.0000, ''),
(599, 33, 471, 'drops-3', 'text', NULL, 0.0000, ''),
(600, 9, 472, 'images/a-img-4.png', 'text', NULL, 0.0000, ''),
(601, 10, 472, 'Мягкая поверхность, 8 штук', 'text', NULL, 0.0000, ''),
(602, 20, 472, 'Y', 'text', NULL, 0.0000, ''),
(603, 21, 472, 'Y', 'text', NULL, 0.0000, ''),
(604, 23, 472, 'images/img-scheme-4.png', 'text', NULL, 0.0000, ''),
(605, 24, 472, 'Современные', 'text', NULL, 0.0000, ''),
(606, 24, 472, 'Надежные', 'text', NULL, 0.0000, ''),
(607, 24, 472, 'Гипоаллергенные', 'text', NULL, 0.0000, ''),
(608, 25, 472, 'a:2:{s:4:\"TEXT\";s:255:\"Содержат 5 слоев, выполненных<br>\r\nиз современных материалов, <br>\r\nчто позволяет обеспечивать <br>\r\nмаксимальную высокотехнологичную <br>\r\nзащиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(609, 25, 472, 'a:2:{s:4:\"TEXT\";s:461:\"Двойные&nbsp;крылышки&nbsp;-&nbsp;в&nbsp;средней&nbsp;<br>\r\nи&nbsp;задней&nbsp;части&nbsp;прокладки,<br>\r\nспециальние&nbsp;защитные&nbsp;бортики<br>\r\nи&nbsp;удерживающая&nbsp;прокладку&nbsp;на&nbsp;белье<br>\r\nоснова&nbsp;надежно&nbsp;фиксируют&nbsp;прокладку&nbsp;<br>\r\nи&nbsp;предотвращают&nbsp;протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(610, 25, 472, 'a:2:{s:4:\"TEXT\";s:179:\"Прокладки Nuage Night<br>\r\nне содержат красителей<br>\r\nи ароматизаторов. Все материалы<br>\r\nгипоаллергенные.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(611, 28, 472, 'images/ind-14.svg', 'text', NULL, 0.0000, ''),
(612, 29, 472, 'images/ind-24.svg', 'text', NULL, 0.0000, ''),
(613, 33, 472, 'drops-4', 'text', NULL, 0.0000, ''),
(614, 9, 473, 'images/a-img-5.png', 'text', NULL, 0.0000, ''),
(615, 10, 473, 'Мягкая поверхность, 6 штук', 'text', NULL, 0.0000, ''),
(616, 11, 473, 'a:2:{s:4:\"TEXT\";s:78:\"Не содержат красителей br\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(617, 11, 473, 'a:2:{s:4:\"TEXT\";s:282:\"Двойные крылышки в средней и задней \r\nчасти прокладки и удерживающая \r\nпрокладку на белье основа надежно \r\nфиксируют прокладку и предотвращают протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(618, 11, 473, 'a:2:{s:4:\"TEXT\";s:103:\"Ультратонкие, менее 3 мм. Специальные br\r\nзащитные бортики\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(619, 12, 473, 'images/ico-51.svg', 'text', NULL, 0.0000, ''),
(620, 12, 473, 'images/ico-52.svg', 'text', NULL, 0.0000, ''),
(621, 12, 473, 'images/ico-53.svg', 'text', NULL, 0.0000, ''),
(622, 13, 473, '7', 'text', NULL, 7.0000, ''),
(623, 14, 473, 'images/arrow-right-p5.svg', 'text', NULL, 0.0000, ''),
(624, 15, 473, 'images/img-zoom-5.png', 'text', NULL, 0.0000, ''),
(625, 16, 473, 'images/img-loading-5.png', 'text', NULL, 0.0000, ''),
(626, 17, 473, 'images/sprites/img-sprite-55.png', 'text', NULL, 0.0000, ''),
(627, 18, 473, '3 мм', 'text', NULL, 3.0000, ''),
(628, 19, 473, '360 мм', 'text', NULL, 360.0000, ''),
(629, 20, 473, 'Y', 'text', NULL, 0.0000, ''),
(630, 21, 473, 'Y', 'text', NULL, 0.0000, ''),
(631, 22, 473, '6 штук', 'text', NULL, 6.0000, ''),
(632, 26, 473, 'images/img-zoom-5-back.png', 'text', NULL, 0.0000, ''),
(633, 28, 473, 'images/ind-15.svg', 'text', NULL, 0.0000, ''),
(634, 29, 473, 'images/ind-2-na.svg', 'text', NULL, 0.0000, ''),
(635, 33, 473, 'drops-5', 'text', NULL, 0.0000, ''),
(636, 23, 473, 'images/img-scheme-5.png', 'text', NULL, 0.0000, ''),
(637, 24, 473, 'Современные', 'text', NULL, 0.0000, ''),
(638, 24, 473, 'Надежные', 'text', NULL, 0.0000, ''),
(639, 24, 473, 'Гипоаллергенные', 'text', NULL, 0.0000, ''),
(640, 25, 473, 'a:2:{s:4:\"TEXT\";s:256:\"Содержат 5 слоев, выполненных <br>\r\nиз современных материалов, <br>\r\nчто позволяет обеспечивать <br>\r\nмаксимальную высокотехнологичную <br>\r\nзащиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(641, 25, 473, 'a:2:{s:4:\"TEXT\";s:485:\"Двойные&nbsp;крылышки&nbsp;-&nbsp;&nbsp;в&nbsp;средней&nbsp;<br>\r\nи&nbsp;задней&nbsp;части&nbsp;прокладки,&nbsp;<br>\r\nспециальние&nbsp;защитные&nbsp;бортики&nbsp;<br>\r\nи&nbsp;удерживающая&nbsp;прокладку&nbsp;на&nbsp;белье&nbsp;<br>\r\nоснова&nbsp;надежно&nbsp;фиксируют&nbsp;прокладку&nbsp;<br>\r\nи&nbsp;предотвращают&nbsp;протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(642, 25, 473, 'a:2:{s:4:\"TEXT\";s:182:\"Прокладки Nuage Night <br>\r\nне содержат красителей <br>\r\nи ароматизаторов. Все материалы <br>\r\nгипоаллергенные.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(643, 9, 474, 'images/a-img-6.png', 'text', NULL, 0.0000, ''),
(644, 10, 474, 'Мягкая поверхность, 20 штук', 'text', NULL, 0.0000, ''),
(645, 11, 474, 'a:2:{s:4:\"TEXT\";s:80:\"Не содержат красителей <br>\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(646, 11, 474, 'a:2:{s:4:\"TEXT\";s:95:\"В миниатюрной упаковке, легко \r\nпомещаются в сумочку\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'text', NULL, 0.0000, 'Y'),
(647, 11, 474, 'a:2:{s:4:\"TEXT\";s:43:\"Ультратонкие, менее 1 мм\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'text', NULL, 0.0000, ''),
(648, 12, 474, 'images/ico-61.svg', 'text', NULL, 0.0000, ''),
(649, 12, 474, 'images/ico-62.svg', 'text', NULL, 0.0000, ''),
(650, 12, 474, 'images/ico-63.svg', 'text', NULL, 0.0000, ''),
(651, 13, 474, '1', 'text', NULL, 1.0000, ''),
(652, 14, 474, 'images/arrow-right-p6.svg', 'text', NULL, 0.0000, ''),
(653, 15, 474, 'images/img-zoom-6.png', 'text', NULL, 0.0000, ''),
(654, 16, 474, 'images/img-loading-6.png', 'text', NULL, 0.0000, ''),
(655, 17, 474, 'images/sprites/img-sprite-6.png', 'text', NULL, 0.0000, ''),
(656, 18, 474, '< 1 мм', 'text', NULL, 0.0000, ''),
(657, 19, 474, '155 мм', 'text', NULL, 155.0000, ''),
(658, 20, 474, 'Y', 'text', NULL, 0.0000, ''),
(659, 21, 474, 'Y', 'text', NULL, 0.0000, ''),
(660, 22, 474, '20 штук', 'text', NULL, 20.0000, ''),
(661, 23, 474, 'images/img-scheme-6.png', 'text', NULL, 0.0000, ''),
(662, 24, 474, 'Высокотехнологичные', 'text', NULL, 0.0000, ''),
(663, 24, 474, 'Надежные', 'text', NULL, 0.0000, ''),
(664, 24, 474, 'Гипоаллергенные', 'text', NULL, 0.0000, ''),
(665, 24, 474, 'В индивидуальной 									упаковке', 'text', NULL, 0.0000, ''),
(666, 25, 474, 'a:2:{s:4:\"TEXT\";s:141:\"3 высокотехнологичных слоя, сдерживающих запахи и влагу <br>\r\nвнутри прокладки.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(667, 25, 474, 'a:2:{s:4:\"TEXT\";s:282:\"Мягкая&nbsp;нежная&nbsp;поверхность&nbsp;легко br касается&nbsp;тела.&nbsp;Предотвращающая br протекание&nbsp;основа&nbsp;надежно br удерживает&nbsp;прокладку&nbsp;на&nbsp;белье.\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'text', NULL, 0.0000, ''),
(668, 25, 474, 'a:2:{s:4:\"TEXT\";s:232:\"Не&nbsp;содержат&nbsp;ароматизаторов&nbsp;и br красителей.&nbsp;Только&nbsp;естественные br ощущения&nbspсвежести,&nbsp;легкости&nbsp;и br чистоты.\";s:4:\"TYPE\";s:4:\"TEXT\";}', 'text', NULL, 0.0000, ''),
(669, 25, 474, 'a:2:{s:4:\"TEXT\";s:85:\"Каждая прокладка<br> в индивидуальной упаковке.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(670, 26, 474, 'images/img-zoom-6-back.png', 'text', NULL, 0.0000, ''),
(671, 28, 474, 'images/ind-16.svg', 'text', NULL, 0.0000, ''),
(672, 29, 474, 'images/ind-2-na.svg', 'text', NULL, 0.0000, ''),
(673, 33, 474, 'drops-6', 'text', NULL, 0.0000, ''),
(674, 27, 469, 'Прокладки Nuage Light специально созданы для женщин с необильными менструальными выделениями. Комфортное применение в качестве дополнительной защиты при использовании тампонов в критические дни.', 'text', NULL, 0.0000, ''),
(675, 27, 470, 'Прокладки Nuage Normal с нежной 									микроперфорированной поверхностью или с мягкой сеточкой 									обеспечивают бережный уход за кожей в интимной области, без 									трения и раздражений кожи.', 'text', NULL, 0.0000, ''),
(676, 27, 471, 'Прокладки Nuage Super для обильных 									выделений с увеличенной скоростью и объемом впитывания. Нежная 									микроперфорированная поверхность или мягкая сеточка 									обеспечивают бережный уход за кожей в интимной области, без 									трения и раздражений кожи.', 'text', NULL, 0.0000, ''),
(677, 27, 472, 'Прокладки Nuage Night ночные 									удлиненные. 2X надежней, чем раньше. Двойная фиксация! Нежная 									микроперфорированная поверхность или мягкая сеточка 									обеспечивают бережный уход за кожей в интимной области, без 									трения и раздражений кожи.', 'text', NULL, 0.0000, ''),
(678, 27, 473, 'Прокладки Nuage Night Plus 									специальной формы длиной 36 сантиметров, ночные и при очень 									обильных выделениях. Нежная мягкая поверхность обеспечивает 									бережный уход за кожей в интимной области, без трения и 									раздражений кожи.', 'text', NULL, 0.0000, ''),
(679, 27, 474, 'Ежедневные прокладки классической 									формы, повторяющей изгибы тела. В миниатюрной упаковке, легко 									помещаются в сумочку. Индивидуальная упаковка каждой прокладки. 									Мягкая нежная поверхность легко касается тела.', 'text', NULL, 0.0000, ''),
(680, 30, 489, 'Потребитель из тестовой группы', 'text', NULL, 0.0000, ''),
(682, 32, 489, 'clients', 'text', NULL, 0.0000, ''),
(683, 30, 490, 'Сотрудник лаборатории «NUAGE»', 'text', NULL, 0.0000, ''),
(685, 32, 490, 'workers', 'text', NULL, 0.0000, ''),
(686, 30, 491, 'Врач', 'text', NULL, 0.0000, ''),
(688, 32, 491, 'doctors', 'text', NULL, 0.0000, ''),
(692, 25, 469, 'a:2:{s:4:\"TEXT\";s:239:\"Содержат 5 слоев, выполненых<br>из современных материалов,<br>что позволяет обеспечить<br> максимальную высокотехнологичную<br>защиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(693, 25, 469, 'a:2:{s:4:\"TEXT\";s:215:\"Крылышки и удерживающая <br>\r\nпрокладку на белье основа <br>\r\nнадежно фиксируют прокладку <br>\r\nи предотвращают протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(694, 25, 469, 'a:2:{s:4:\"TEXT\";s:201:\"Не содержит ароматизаторов <br> и красителей. Только естественные <br>\r\nощущения свежести, легкости <br>\r\nи чистоты.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(733, 43, 473, 'Nuage Night Plus - сравнение', 'text', NULL, 0.0000, ''),
(734, 44, 473, 'description Night Plus - сравнение', 'text', NULL, 0.0000, ''),
(735, 45, 473, 'Nuage Night Plus - состав', 'text', NULL, 0.0000, ''),
(736, 46, 473, 'description Night Plus - состав', 'text', NULL, 0.0000, ''),
(739, 41, 473, 'Nuage Night Plus', 'text', NULL, 0.0000, ''),
(740, 41, 474, 'Nuage Daily', 'text', NULL, 0.0000, ''),
(741, 43, 474, 'Nuage Daily - сравнение', 'text', NULL, 0.0000, ''),
(742, 45, 474, 'Nuage Daily - состав', 'text', NULL, 0.0000, ''),
(743, 41, 472, 'Nuage Night', 'text', NULL, 0.0000, ''),
(744, 43, 472, 'Nuage Night - сравнение', 'text', NULL, 0.0000, ''),
(745, 45, 472, 'Nuage Night - состав', 'text', NULL, 0.0000, ''),
(746, 41, 471, 'Nuage Super', 'text', NULL, 0.0000, ''),
(747, 43, 471, 'Nuage Super - сравнение', 'text', NULL, 0.0000, ''),
(748, 45, 471, 'Nuage Super - состав', 'text', NULL, 0.0000, ''),
(749, 41, 470, 'Nuage Normal', 'text', NULL, 0.0000, ''),
(750, 43, 470, 'Nuage Normal - сравнение', 'text', NULL, 0.0000, ''),
(751, 45, 470, 'Nuage Normal - состав', 'text', NULL, 0.0000, ''),
(752, 41, 469, 'Nuage Light', 'text', NULL, 0.0000, ''),
(753, 43, 469, 'Nuage Light - сравнение', 'text', NULL, 0.0000, ''),
(754, 45, 469, 'Nuage Light - состав', 'text', NULL, 0.0000, ''),
(755, 34, 492, 'dsa', 'text', NULL, 0.0000, NULL),
(756, 35, 492, 'dsa@dsds.ru', 'text', NULL, 0.0000, NULL),
(757, 36, 492, '+7 321 321 32 13', 'text', NULL, 7.0000, NULL),
(758, 37, 492, 'dsadsa', 'text', NULL, 0.0000, NULL),
(759, 38, 492, '32.13.2132', 'text', NULL, 32.1300, NULL),
(760, 39, 492, 'sdfds', 'text', NULL, 0.0000, NULL),
(761, 40, 492, 'fsdfdsfsd', 'text', NULL, 0.0000, NULL),
(762, 34, 493, 'Елизавета', 'text', NULL, 0.0000, NULL),
(763, 36, 493, '+7 903 998 82 28', 'text', NULL, 7.0000, NULL),
(764, 37, 493, 'Новосибирск', 'text', NULL, 0.0000, NULL),
(765, 38, 493, '18.11.1987', 'text', NULL, 18.1100, NULL),
(766, 39, 493, 'Прокладки', 'text', NULL, 0.0000, NULL),
(767, 40, 493, 'Прокладки', 'text', NULL, 0.0000, NULL),
(768, 34, 494, 'Михаил Михайлович Зверев', 'text', NULL, 0.0000, NULL),
(769, 35, 494, '9861010@gmail.com', 'text', NULL, 9861010.0000, NULL),
(770, 36, 494, '+7 996 543 04 42', 'text', NULL, 7.0000, NULL),
(771, 38, 494, '10.10.1986', 'text', NULL, 10.1000, NULL),
(772, 39, 494, 'опт', 'text', NULL, 0.0000, NULL),
(773, 40, 494, 'фыв', 'text', NULL, 0.0000, NULL),
(774, 34, 495, 'тест', 'text', NULL, 0.0000, NULL),
(775, 35, 495, 'sergei_alekseenk@list.ru', 'text', NULL, 0.0000, NULL),
(776, 36, 495, '+7 111 111 11 11', 'text', NULL, 7.0000, NULL),
(777, 37, 495, 'тест', 'text', NULL, 0.0000, NULL),
(778, 38, 495, '11.11.1111', 'text', NULL, 11.1100, NULL),
(779, 39, 495, 'тест', 'text', NULL, 0.0000, NULL),
(780, 40, 495, 'тест', 'text', NULL, 0.0000, NULL),
(781, 50, 496, 'a:2:{s:4:\"NAME\";s:9:\"apteka.ru\";s:3:\"URL\";s:101:\"https://apteka.ru/product/nuage-daily-prokladki-zhenskie-na-kazhdyj-den-n20-5e8ecd5d9324f60001598d9d/\";}', 'text', NULL, 0.0000, ''),
(784, 50, 497, 'a:2:{s:4:\"NAME\";s:9:\"apteka.ru\";s:3:\"URL\";s:129:\"https://apteka.ru/product/nuage-normal-prokladki-zhensk-dlya-kriticheskix-dnej-s-poverxnostyu-setka-n10-5e8ecedeb6d6500001de7b6a/\";}', 'text', NULL, 0.0000, ''),
(787, 50, 498, 'a:2:{s:4:\"NAME\";s:9:\"apteka.ru\";s:3:\"URL\";s:130:\"https://apteka.ru/product/nuage-super-prokladki-zhenskie-dlya-kriticheskix-dnej-s-poverxnostyu-setka-n10-5e8ecf49b6d6500001de7bb1/\";}', 'text', NULL, 0.0000, ''),
(790, 50, 499, 'a:2:{s:4:\"NAME\";s:9:\"apteka.ru\";s:3:\"URL\";s:101:\"https://apteka.ru/product/nuage-daily-prokladki-zhenskie-na-kazhdyj-den-n20-5e8ecd5d9324f60001598d9d/\";}', 'text', NULL, 0.0000, ''),
(793, 50, 500, 'a:2:{s:4:\"NAME\";s:9:\"apteka.ru\";s:3:\"URL\";s:136:\"https://apteka.ru/product/nuage-night-plus-prokladki-zhenskie-dlya-kriticheskix-dnej-s-myagkoj-poverxnostyu-n6-5e8ecdcb3d694e00019ec442/\";}', 'text', NULL, 0.0000, ''),
(796, 34, 501, 'S2T3IBVIG www.yandex.ru', 'text', NULL, 0.0000, NULL),
(797, 35, 501, 'KlavdiyaBrueva8044@mail.ru', 'text', NULL, 0.0000, NULL),
(798, 36, 501, 'S2T3IBVIG www.yandex.ru', 'text', NULL, 0.0000, NULL),
(799, 37, 501, 'S2T3IBVIG www.yandex.ru', 'text', NULL, 0.0000, NULL),
(800, 38, 501, 'S2T3IBVIG www.yandex.ru', 'text', NULL, 0.0000, NULL),
(801, 39, 501, 'S2T3IBVIG www.yandex.ru', 'text', NULL, 0.0000, NULL),
(802, 40, 501, 'S2T3IBVIG www.yandex.ru', 'text', NULL, 0.0000, NULL),
(803, 34, 502, '9GZ9UGG8EZ www.yandex.ru', 'text', NULL, 9.0000, NULL),
(804, 35, 502, 'KlavdiyaBrueva8044@mail.ru', 'text', NULL, 0.0000, NULL),
(805, 36, 502, '9GZ9UGG8EZ www.yandex.ru', 'text', NULL, 9.0000, NULL),
(806, 37, 502, '9GZ9UGG8EZ www.yandex.ru', 'text', NULL, 9.0000, NULL),
(807, 38, 502, '9GZ9UGG8EZ www.yandex.ru', 'text', NULL, 9.0000, NULL),
(808, 39, 502, '9GZ9UGG8EZ www.yandex.ru', 'text', NULL, 9.0000, NULL),
(809, 40, 502, '9GZ9UGG8EZ www.yandex.ru', 'text', NULL, 9.0000, NULL),
(810, 34, 503, 'test', 'text', NULL, 0.0000, NULL),
(811, 35, 503, 'testHita@yandex.ru', 'text', NULL, 0.0000, NULL),
(812, 36, 503, '+7 111 111 11 11', 'text', NULL, 7.0000, NULL),
(813, 37, 503, 'test', 'text', NULL, 0.0000, NULL),
(814, 38, 503, '11.11.1111', 'text', NULL, 11.1100, NULL),
(815, 39, 503, 'test', 'text', NULL, 0.0000, NULL),
(816, 40, 503, 'test', 'text', NULL, 0.0000, NULL),
(817, 51, 471, 'prod_yellow', 'text', NULL, 0.0000, ''),
(818, 51, 472, 'prod_pink', 'text', NULL, 0.0000, ''),
(819, 51, 473, 'prod_purple', 'text', NULL, 0.0000, ''),
(820, 51, 474, 'prod_orange', 'text', NULL, 0.0000, ''),
(821, 51, 470, 'prod_pink', 'text', NULL, 0.0000, ''),
(822, 34, 504, 'Olga Ibragimova', 'text', NULL, 0.0000, NULL),
(823, 35, 504, 'ibragimova.olga@gmail.com', 'text', NULL, 0.0000, NULL),
(824, 36, 504, '+7(911)357-36-86', 'text', NULL, 7.0000, NULL),
(825, 37, 504, 'Псков', 'text', NULL, 0.0000, NULL),
(826, 40, 504, 'Куку тест', 'text', NULL, 0.0000, NULL),
(827, 34, 505, 'Olga', 'text', NULL, 0.0000, NULL),
(828, 36, 505, '+44-44-4444-4444', 'text', NULL, 44.0000, NULL),
(829, 40, 505, 'Йцу', 'text', NULL, 0.0000, NULL),
(830, 34, 506, 'Тест', 'text', NULL, 0.0000, NULL),
(831, 36, 506, '+56-6-6666-6666', 'text', NULL, 56.0000, NULL),
(832, 40, 506, 'Йцукк', 'text', NULL, 0.0000, NULL),
(833, 52, 470, '357', 'text', NULL, 357.0000, NULL),
(834, 52, 470, '358', 'text', NULL, 358.0000, NULL),
(835, 52, 470, '359', 'text', NULL, 359.0000, NULL),
(836, 53, 470, '360', 'text', NULL, 360.0000, ''),
(837, 53, 470, '361', 'text', NULL, 361.0000, ''),
(838, 53, 470, '362', 'text', NULL, 362.0000, ''),
(839, 54, 470, 'a:2:{s:4:\"TEXT\";s:78:\"Не содержат красителей br\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(840, 54, 470, 'a:2:{s:4:\"TEXT\";s:165:\"Обеспечивают бережный уход за кожей br\r\nв интимной области, без трения br\r\nи раздражений кожи\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(841, 54, 470, 'a:2:{s:4:\"TEXT\";s:43:\"Ультратонкие, менее 3 мм\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(842, 55, 470, 'a:2:{s:4:\"TEXT\";s:60:\"Все материалы<br>гипоаллергенные.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(843, 55, 470, 'a:2:{s:4:\"TEXT\";s:244:\"Содержат 5 слоев, выполненных<br>из современных материалов,<br>что позволяет обеспечивать<br>максимальную высокотехнологичную<br>защиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(844, 55, 470, 'a:2:{s:4:\"TEXT\";s:206:\"Крылышки и удерживающая<br>прокладку на белье основа<br>надежно фиксируют прокладку<br>и предотвращают протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(845, 53, 471, '363', 'text', NULL, 363.0000, ''),
(846, 53, 471, '364', 'text', NULL, 364.0000, ''),
(847, 53, 471, '365', 'text', NULL, 365.0000, ''),
(848, 54, 471, 'a:2:{s:4:\"TEXT\";s:74:\"Не содержат красителей и ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(849, 55, 471, 'a:2:{s:4:\"TEXT\";s:232:\"Содержат 5 слоев, выполненных из современных материалов, что позволяет обеспечивать максимальную высокотехнологичную защиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(850, 54, 471, 'a:2:{s:4:\"TEXT\";s:157:\"Обеспечивают бережный уход за кожей в интимной области, без трения и раздражений кожи\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(851, 54, 471, 'a:2:{s:4:\"TEXT\";s:43:\"Ультратонкие, менее 3 мм\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(852, 55, 471, 'a:2:{s:4:\"TEXT\";s:77:\"Увеличенные скорость и объем<br>впитывания\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(853, 55, 471, 'a:2:{s:4:\"TEXT\";s:251:\"Крылышки&nbsp;и&nbsp;удерживающая<br>прокладку&nbsp;на&nbsp;белье&nbsp;основа<br>надежно&nbsp;фиксируют&nbsp;прокладку<br>и&nbsp;предотвращают&nbsp;протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(854, 52, 471, '367', 'text', NULL, 367.0000, NULL),
(855, 52, 471, '368', 'text', NULL, 368.0000, NULL),
(856, 52, 471, '369', 'text', NULL, 369.0000, NULL),
(863, 54, 474, 'a:2:{s:4:\"TEXT\";s:80:\"Не содержат красителей <br>\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(864, 54, 474, 'a:2:{s:4:\"TEXT\";s:95:\"В миниатюрной упаковке, легко \r\nпомещаются в сумочку\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(865, 54, 474, 'a:2:{s:4:\"TEXT\";s:43:\"Ультратонкие, менее 1 мм\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(866, 55, 474, 'a:2:{s:4:\"TEXT\";s:282:\"Мягкая&nbsp;нежная&nbsp;поверхность&nbsp;легко br касается&nbsp;тела.&nbsp;Предотвращающая br протекание&nbsp;основа&nbsp;надежно br удерживает&nbsp;прокладку&nbsp;на&nbsp;белье.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(867, 55, 474, 'a:2:{s:4:\"TEXT\";s:135:\"3 высокотехнологичных слоя, сдерживающих запахи и влагу внутри прокладки.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(868, 55, 474, 'a:2:{s:4:\"TEXT\";s:133:\"Только&nbsp;естественные br ощущения&nbspсвежести,&nbsp;легкости&nbsp;и br чистоты.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(869, 55, 474, 'a:2:{s:4:\"TEXT\";s:85:\"Каждая прокладка<br> в индивидуальной упаковке.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(870, 53, 473, '377', 'text', NULL, 377.0000, ''),
(871, 53, 473, '378', 'text', NULL, 378.0000, ''),
(872, 53, 473, '379', 'text', NULL, 379.0000, ''),
(873, 54, 473, 'a:2:{s:4:\"TEXT\";s:78:\"Не содержат красителей br\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(874, 54, 473, 'a:2:{s:4:\"TEXT\";s:282:\"Двойные крылышки в средней и задней \r\nчасти прокладки и удерживающая \r\nпрокладку на белье основа надежно \r\nфиксируют прокладку и предотвращают протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(875, 54, 473, 'a:2:{s:4:\"TEXT\";s:103:\"Ультратонкие, менее 3 мм. Специальные br\r\nзащитные бортики\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(876, 55, 473, 'a:2:{s:4:\"TEXT\";s:63:\"Все материалы <br>\r\nгипоаллергенные.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(879, 52, 473, '381', 'text', NULL, 381.0000, NULL),
(880, 52, 473, '382', 'text', NULL, 382.0000, NULL),
(881, 52, 472, '384', 'text', NULL, 384.0000, NULL),
(882, 52, 472, '385', 'text', NULL, 385.0000, NULL),
(883, 52, 472, '386', 'text', NULL, 386.0000, NULL),
(887, 54, 472, 'a:2:{s:4:\"TEXT\";s:78:\"Не содержат красителей br\r\nи ароматизаторов\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(888, 54, 472, 'a:2:{s:4:\"TEXT\";s:69:\"В 2 раза надежнее. <br/> Двойная фиксация\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, 'Y'),
(889, 54, 472, 'a:2:{s:4:\"TEXT\";s:43:\"Ультратонкие, менее 3 мм\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(890, 55, 472, 'a:2:{s:4:\"TEXT\";s:62:\"Все материалы<br>\r\nгипоаллергенные.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(891, 55, 472, 'a:2:{s:4:\"TEXT\";s:391:\"Двойные&nbsp;крылышки&nbsp;-&nbsp;в&nbsp;средней&nbsp;<br>\r\nи&nbsp;задней&nbsp;части&nbsp;прокладки,<br>\r\nи&nbsp;удерживающая&nbsp;прокладку&nbsp;на&nbsp;белье<br>\r\nоснова&nbsp;надежно&nbsp;фиксируют&nbsp;прокладку&nbsp;<br>\r\nи&nbsp;предотвращают&nbsp;протекание.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(892, 55, 472, 'a:2:{s:4:\"TEXT\";s:255:\"Содержат 5 слоев, выполненных<br>\r\nиз современных материалов, <br>\r\nчто позволяет обеспечивать <br>\r\nмаксимальную высокотехнологичную <br>\r\nзащиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(894, 53, 472, '387', 'text', NULL, 387.0000, ''),
(895, 53, 472, '390', 'text', NULL, 390.0000, ''),
(896, 53, 472, '389', 'text', NULL, 389.0000, ''),
(897, 55, 473, 'a:2:{s:4:\"TEXT\";s:256:\"Содержат 5 слоев, выполненных <br>\r\nиз современных материалов, <br>\r\nчто позволяет обеспечивать <br>\r\nмаксимальную высокотехнологичную <br>\r\nзащиту.\";s:4:\"TYPE\";s:4:\"HTML\";}', 'text', NULL, 0.0000, ''),
(899, 57, 470, '400', 'text', NULL, 400.0000, ''),
(900, 56, 471, '500', 'text', NULL, 500.0000, ''),
(901, 57, 471, '400', 'text', NULL, 400.0000, ''),
(903, 57, 472, '400', 'text', NULL, 400.0000, ''),
(905, 57, 473, '400', 'text', NULL, 400.0000, ''),
(907, 57, 474, '400', 'text', NULL, 400.0000, ''),
(908, 52, 474, '371', 'text', NULL, 371.0000, NULL),
(909, 52, 474, '372', 'text', NULL, 372.0000, NULL),
(910, 52, 474, '391', 'text', NULL, 391.0000, NULL),
(911, 52, 474, '373', 'text', NULL, 373.0000, NULL),
(912, 52, 470, '394', 'text', NULL, 394.0000, NULL),
(913, 52, 471, '395', 'text', NULL, 395.0000, NULL),
(914, 52, 472, '396', 'text', NULL, 396.0000, NULL),
(915, 52, 473, '397', 'text', NULL, 397.0000, NULL),
(916, 52, 474, '398', 'text', NULL, 398.0000, NULL),
(917, 60, 507, '6', 'text', NULL, 6.0000, ''),
(918, 60, 510, '13', 'text', NULL, 13.0000, ''),
(919, 61, 510, '509', 'text', NULL, 509.0000, ''),
(920, 60, 511, '9', 'text', NULL, 9.0000, ''),
(921, 61, 511, '508', 'text', NULL, 508.0000, ''),
(922, 60, 512, '22', 'text', NULL, 22.0000, ''),
(923, 61, 512, '509', 'text', NULL, 509.0000, ''),
(924, 60, 513, '4', 'text', NULL, 4.0000, ''),
(925, 61, 513, '509', 'text', NULL, 509.0000, ''),
(926, 60, 514, '2', 'text', NULL, 2.0000, ''),
(927, 61, 514, '509', 'text', NULL, 509.0000, ''),
(928, 60, 515, '5', 'text', NULL, 5.0000, ''),
(929, 61, 515, '508', 'text', NULL, 508.0000, ''),
(931, 58, 510, '1', 'text', NULL, 1.0000, NULL),
(939, 58, 513, '1', 'text', NULL, 1.0000, NULL),
(946, 58, 511, '1', 'text', NULL, 1.0000, NULL),
(947, 60, 517, '12', 'text', NULL, 12.0000, ''),
(948, 61, 517, '516', 'text', NULL, 516.0000, ''),
(964, 59, 510, '3', 'text', NULL, 3.0000, NULL),
(968, 58, 512, '1', 'text', NULL, 1.0000, NULL),
(972, 59, 514, '1', 'text', NULL, 1.0000, NULL),
(975, 58, 517, '2', 'text', NULL, 2.0000, NULL),
(1002, 58, 515, '2', 'text', NULL, 2.0000, NULL),
(1003, 79, 537, '455', 'text', NULL, 455.0000, NULL),
(1005, 59, 512, '5', 'text', NULL, 5.0000, NULL),
(1007, 59, 513, '5', 'text', NULL, 5.0000, NULL),
(1010, 59, 517, '25', 'text', NULL, 25.0000, NULL),
(1011, 59, 507, '5', 'text', NULL, 5.0000, NULL),
(1012, 59, 511, '11', 'text', NULL, 11.0000, NULL),
(1013, 59, 515, '17', 'text', NULL, 17.0000, NULL),
(1014, 34, 538, 'ТЕСТ ТЕСТ ТЕСТ', 'text', NULL, 0.0000, NULL),
(1015, 35, 538, 'inakato@gmail.com', 'text', NULL, 0.0000, NULL),
(1016, 36, 538, '+7 999 888 44 55', 'text', NULL, 7.0000, NULL),
(1017, 37, 538, 'MOSKVA', 'text', NULL, 0.0000, NULL),
(1018, 38, 538, '12.05.2000', 'text', NULL, 12.0500, NULL),
(1019, 39, 538, 'ТЕСТ ТЕСТ', 'text', NULL, 0.0000, NULL),
(1020, 40, 538, 'ТЕСТОВОЕ ОБРАЩЕНИ ПРО РАЗНЫЕ ТЕСТОВЫЕ ТЕМЫ.', 'text', NULL, 0.0000, NULL),
(1021, 34, 539, 'ТЕСТ ТЕСТ ТЕСТ', 'text', NULL, 0.0000, NULL),
(1022, 35, 539, 'inakato@gmail.com', 'text', NULL, 0.0000, NULL),
(1023, 36, 539, '+7 999 888 44 55', 'text', NULL, 7.0000, NULL),
(1024, 37, 539, 'MOSKVA', 'text', NULL, 0.0000, NULL),
(1025, 38, 539, '12.05.2000', 'text', NULL, 12.0500, NULL),
(1026, 39, 539, 'ТЕСТ ТЕСТ', 'text', NULL, 0.0000, NULL),
(1027, 40, 539, 'ТЕСТОВОЕ ОБРАЩЕНИ ПРО РАЗНЫЕ ТЕСТОВЫЕ ТЕМЫ.', 'text', NULL, 0.0000, NULL),
(1028, 34, 540, 'ТЕСТ ТЕСТ ТЕСТ', 'text', NULL, 0.0000, NULL),
(1029, 35, 540, 'inakato@gmail.com', 'text', NULL, 0.0000, NULL),
(1030, 36, 540, '+7 999 888 44 55', 'text', NULL, 7.0000, NULL),
(1031, 37, 540, 'MOSKVA', 'text', NULL, 0.0000, NULL),
(1032, 38, 540, '12.05.2000', 'text', NULL, 12.0500, NULL),
(1033, 39, 540, 'ТЕСТ ТЕСТ', 'text', NULL, 0.0000, NULL),
(1034, 40, 540, 'ТЕСТОВОЕ ОБРАЩЕНИ ПРО РАЗНЫЕ ТЕСТОВЫЕ ТЕМЫ.', 'text', NULL, 0.0000, NULL),
(1035, 81, 471, '368754', 'text', NULL, 368754.0000, ''),
(1036, 81, 473, '368751', 'text', NULL, 368751.0000, ''),
(1037, 53, 474, '375', 'text', NULL, 375.0000, 'Y'),
(1038, 53, 474, '374', 'text', NULL, 374.0000, ''),
(1039, 53, 474, '376', 'text', NULL, 376.0000, ''),
(1040, 81, 474, '368759', 'text', NULL, 368759.0000, ''),
(1041, 81, 470, '368752', 'text', NULL, 368752.0000, ''),
(1042, 81, 472, '368754', 'text', NULL, 368754.0000, '');
-- -----------------------------------
-- Dumping table b_iblock_element_right
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_element_right`;
CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_fields
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_fields`;
CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_fields` VALUES
(8, 'ACTIVE', 'Y', 'Y'),
(8, 'ACTIVE_FROM', 'N', ''),
(8, 'ACTIVE_TO', 'N', ''),
(8, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(8, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(8, 'DETAIL_TEXT', 'N', ''),
(8, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(8, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(8, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(8, 'LOG_ELEMENT_ADD', 'N', NULL),
(8, 'LOG_ELEMENT_DELETE', 'N', NULL),
(8, 'LOG_ELEMENT_EDIT', 'N', NULL),
(8, 'LOG_SECTION_ADD', 'N', NULL),
(8, 'LOG_SECTION_DELETE', 'N', NULL),
(8, 'LOG_SECTION_EDIT', 'N', NULL),
(8, 'NAME', 'Y', ''),
(8, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(8, 'PREVIEW_TEXT', 'N', ''),
(8, 'PREVIEW_TEXT_TYPE', 'Y', 'html'),
(8, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(8, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(8, 'SECTION_DESCRIPTION', 'N', ''),
(8, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(8, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(8, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(8, 'SECTION_NAME', 'Y', ''),
(8, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(8, 'SECTION_XML_ID', 'N', ''),
(8, 'SORT', 'N', '0'),
(8, 'TAGS', 'N', ''),
(8, 'XML_ID', 'Y', ''),
(8, 'XML_IMPORT_START_TIME', 'N', NULL),
(9, 'ACTIVE', 'Y', 'Y'),
(9, 'ACTIVE_FROM', 'N', ''),
(9, 'ACTIVE_TO', 'N', ''),
(9, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(9, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(9, 'DETAIL_TEXT', 'N', ''),
(9, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(9, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(9, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(9, 'LOG_ELEMENT_ADD', 'N', NULL),
(9, 'LOG_ELEMENT_DELETE', 'N', NULL),
(9, 'LOG_ELEMENT_EDIT', 'N', NULL),
(9, 'LOG_SECTION_ADD', 'N', NULL),
(9, 'LOG_SECTION_DELETE', 'N', NULL),
(9, 'LOG_SECTION_EDIT', 'N', NULL),
(9, 'NAME', 'Y', ''),
(9, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(9, 'PREVIEW_TEXT', 'N', ''),
(9, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(9, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(9, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(9, 'SECTION_DESCRIPTION', 'N', ''),
(9, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(9, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(9, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(9, 'SECTION_NAME', 'Y', ''),
(9, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(9, 'SECTION_XML_ID', 'N', ''),
(9, 'SORT', 'N', '0'),
(9, 'TAGS', 'N', ''),
(9, 'XML_ID', 'Y', ''),
(9, 'XML_IMPORT_START_TIME', 'N', NULL),
(10, 'ACTIVE', 'Y', 'Y'),
(10, 'ACTIVE_FROM', 'N', ''),
(10, 'ACTIVE_TO', 'N', ''),
(10, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(10, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(10, 'DETAIL_TEXT', 'N', ''),
(10, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(10, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(10, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(10, 'LOG_ELEMENT_ADD', 'N', NULL),
(10, 'LOG_ELEMENT_DELETE', 'N', NULL),
(10, 'LOG_ELEMENT_EDIT', 'N', NULL),
(10, 'LOG_SECTION_ADD', 'N', NULL),
(10, 'LOG_SECTION_DELETE', 'N', NULL),
(10, 'LOG_SECTION_EDIT', 'N', NULL),
(10, 'NAME', 'Y', ''),
(10, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(10, 'PREVIEW_TEXT', 'N', ''),
(10, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(10, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(10, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(10, 'SECTION_DESCRIPTION', 'N', ''),
(10, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(10, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(10, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(10, 'SECTION_NAME', 'Y', ''),
(10, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(10, 'SECTION_XML_ID', 'N', ''),
(10, 'SORT', 'N', '0'),
(10, 'TAGS', 'N', ''),
(10, 'XML_ID', 'Y', ''),
(10, 'XML_IMPORT_START_TIME', 'N', NULL),
(11, 'ACTIVE', 'Y', 'Y'),
(11, 'ACTIVE_FROM', 'N', ''),
(11, 'ACTIVE_TO', 'N', ''),
(11, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(11, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(11, 'DETAIL_TEXT', 'N', ''),
(11, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(11, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(11, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(11, 'LOG_ELEMENT_ADD', 'N', NULL),
(11, 'LOG_ELEMENT_DELETE', 'N', NULL),
(11, 'LOG_ELEMENT_EDIT', 'N', NULL),
(11, 'LOG_SECTION_ADD', 'N', NULL),
(11, 'LOG_SECTION_DELETE', 'N', NULL),
(11, 'LOG_SECTION_EDIT', 'N', NULL),
(11, 'NAME', 'Y', ''),
(11, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(11, 'PREVIEW_TEXT', 'N', ''),
(11, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(11, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(11, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(11, 'SECTION_DESCRIPTION', 'N', ''),
(11, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(11, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(11, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(11, 'SECTION_NAME', 'Y', ''),
(11, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(11, 'SECTION_XML_ID', 'N', ''),
(11, 'SORT', 'N', '0'),
(11, 'TAGS', 'N', ''),
(11, 'XML_ID', 'Y', ''),
(11, 'XML_IMPORT_START_TIME', 'N', NULL),
(12, 'ACTIVE', 'Y', 'Y'),
(12, 'ACTIVE_FROM', 'N', ''),
(12, 'ACTIVE_TO', 'N', ''),
(12, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(12, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(12, 'DETAIL_TEXT', 'N', ''),
(12, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(12, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(12, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(12, 'LOG_ELEMENT_ADD', 'N', NULL),
(12, 'LOG_ELEMENT_DELETE', 'N', NULL),
(12, 'LOG_ELEMENT_EDIT', 'N', NULL),
(12, 'LOG_SECTION_ADD', 'N', NULL),
(12, 'LOG_SECTION_DELETE', 'N', NULL),
(12, 'LOG_SECTION_EDIT', 'N', NULL),
(12, 'NAME', 'Y', ''),
(12, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(12, 'PREVIEW_TEXT', 'N', ''),
(12, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(12, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(12, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(12, 'SECTION_DESCRIPTION', 'N', ''),
(12, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(12, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(12, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(12, 'SECTION_NAME', 'Y', ''),
(12, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(12, 'SECTION_XML_ID', 'N', ''),
(12, 'SORT', 'N', '0'),
(12, 'TAGS', 'N', ''),
(12, 'XML_ID', 'Y', ''),
(12, 'XML_IMPORT_START_TIME', 'N', NULL),
(13, 'ACTIVE', 'Y', 'Y'),
(13, 'ACTIVE_FROM', 'Y', '=now'),
(13, 'ACTIVE_TO', 'N', ''),
(13, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(13, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(13, 'DETAIL_TEXT', 'N', ''),
(13, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(13, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(13, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(13, 'LOG_ELEMENT_ADD', 'N', NULL),
(13, 'LOG_ELEMENT_DELETE', 'N', NULL),
(13, 'LOG_ELEMENT_EDIT', 'N', NULL),
(13, 'LOG_SECTION_ADD', 'N', NULL),
(13, 'LOG_SECTION_DELETE', 'N', NULL),
(13, 'LOG_SECTION_EDIT', 'N', NULL),
(13, 'NAME', 'Y', ''),
(13, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(13, 'PREVIEW_TEXT', 'N', ''),
(13, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(13, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(13, 'SECTION_CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(13, 'SECTION_DESCRIPTION', 'N', ''),
(13, 'SECTION_DESCRIPTION_TYPE', 'Y', 'html'),
(13, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(13, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(13, 'SECTION_NAME', 'Y', ''),
(13, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(13, 'SECTION_XML_ID', 'N', ''),
(13, 'SORT', 'N', '0'),
(13, 'TAGS', 'N', ''),
(13, 'XML_ID', 'Y', ''),
(13, 'XML_IMPORT_START_TIME', 'N', NULL),
(14, 'ACTIVE', 'Y', 'Y'),
(14, 'ACTIVE_FROM', 'N', ''),
(14, 'ACTIVE_TO', 'N', ''),
(14, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(14, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(14, 'DETAIL_TEXT', 'N', ''),
(14, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(14, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(14, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(14, 'LOG_ELEMENT_ADD', 'N', NULL),
(14, 'LOG_ELEMENT_DELETE', 'N', NULL),
(14, 'LOG_ELEMENT_EDIT', 'N', NULL),
(14, 'LOG_SECTION_ADD', 'N', NULL),
(14, 'LOG_SECTION_DELETE', 'N', NULL),
(14, 'LOG_SECTION_EDIT', 'N', NULL),
(14, 'NAME', 'Y', ''),
(14, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(14, 'PREVIEW_TEXT', 'N', ''),
(14, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(14, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(14, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(14, 'SECTION_DESCRIPTION', 'N', ''),
(14, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(14, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(14, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(14, 'SECTION_NAME', 'Y', ''),
(14, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(14, 'SECTION_XML_ID', 'N', ''),
(14, 'SORT', 'N', '0'),
(14, 'TAGS', 'N', ''),
(14, 'XML_ID', 'Y', ''),
(14, 'XML_IMPORT_START_TIME', 'N', NULL),
(15, 'ACTIVE', 'Y', 'Y'),
(15, 'ACTIVE_FROM', 'N', ''),
(15, 'ACTIVE_TO', 'N', ''),
(15, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(15, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(15, 'DETAIL_TEXT', 'N', ''),
(15, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(15, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(15, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(15, 'LOG_ELEMENT_ADD', 'N', NULL),
(15, 'LOG_ELEMENT_DELETE', 'N', NULL),
(15, 'LOG_ELEMENT_EDIT', 'N', NULL),
(15, 'LOG_SECTION_ADD', 'N', NULL),
(15, 'LOG_SECTION_DELETE', 'N', NULL),
(15, 'LOG_SECTION_EDIT', 'N', NULL),
(15, 'NAME', 'Y', ''),
(15, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(15, 'PREVIEW_TEXT', 'N', ''),
(15, 'PREVIEW_TEXT_TYPE', 'Y', 'html'),
(15, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(15, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(15, 'SECTION_DESCRIPTION', 'N', ''),
(15, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(15, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(15, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(15, 'SECTION_NAME', 'Y', ''),
(15, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(15, 'SECTION_XML_ID', 'N', ''),
(15, 'SORT', 'N', '0'),
(15, 'TAGS', 'N', ''),
(15, 'XML_ID', 'Y', ''),
(15, 'XML_IMPORT_START_TIME', 'N', NULL),
(16, 'ACTIVE', 'Y', 'Y'),
(16, 'ACTIVE_FROM', 'N', ''),
(16, 'ACTIVE_TO', 'N', ''),
(16, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(16, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(16, 'DETAIL_TEXT', 'N', ''),
(16, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(16, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(16, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(16, 'LOG_ELEMENT_ADD', 'N', NULL),
(16, 'LOG_ELEMENT_DELETE', 'N', NULL),
(16, 'LOG_ELEMENT_EDIT', 'N', NULL),
(16, 'LOG_SECTION_ADD', 'N', NULL),
(16, 'LOG_SECTION_DELETE', 'N', NULL),
(16, 'LOG_SECTION_EDIT', 'N', NULL),
(16, 'NAME', 'Y', ''),
(16, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(16, 'PREVIEW_TEXT', 'N', ''),
(16, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(16, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(16, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(16, 'SECTION_DESCRIPTION', 'N', ''),
(16, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(16, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(16, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(16, 'SECTION_NAME', 'Y', ''),
(16, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(16, 'SECTION_XML_ID', 'N', ''),
(16, 'SORT', 'N', '0'),
(16, 'TAGS', 'N', ''),
(16, 'XML_ID', 'Y', ''),
(16, 'XML_IMPORT_START_TIME', 'N', NULL),
(17, 'ACTIVE', 'Y', 'Y'),
(17, 'ACTIVE_FROM', 'N', ''),
(17, 'ACTIVE_TO', 'N', ''),
(17, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(17, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(17, 'DETAIL_TEXT', 'N', ''),
(17, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(17, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(17, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(17, 'LOG_ELEMENT_ADD', 'N', NULL),
(17, 'LOG_ELEMENT_DELETE', 'N', NULL),
(17, 'LOG_ELEMENT_EDIT', 'N', NULL),
(17, 'LOG_SECTION_ADD', 'N', NULL),
(17, 'LOG_SECTION_DELETE', 'N', NULL),
(17, 'LOG_SECTION_EDIT', 'N', NULL),
(17, 'NAME', 'Y', ''),
(17, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(17, 'PREVIEW_TEXT', 'N', ''),
(17, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(17, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(17, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(17, 'SECTION_DESCRIPTION', 'N', ''),
(17, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(17, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(17, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(17, 'SECTION_NAME', 'Y', ''),
(17, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(17, 'SECTION_XML_ID', 'N', ''),
(17, 'SORT', 'N', '0'),
(17, 'TAGS', 'N', ''),
(17, 'XML_ID', 'Y', ''),
(17, 'XML_IMPORT_START_TIME', 'N', NULL),
(18, 'ACTIVE', 'Y', 'Y'),
(18, 'ACTIVE_FROM', 'N', ''),
(18, 'ACTIVE_TO', 'N', ''),
(18, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(18, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(18, 'DETAIL_TEXT', 'N', ''),
(18, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(18, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(18, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(18, 'LOG_ELEMENT_ADD', 'N', NULL),
(18, 'LOG_ELEMENT_DELETE', 'N', NULL),
(18, 'LOG_ELEMENT_EDIT', 'N', NULL),
(18, 'LOG_SECTION_ADD', 'N', NULL),
(18, 'LOG_SECTION_DELETE', 'N', NULL),
(18, 'LOG_SECTION_EDIT', 'N', NULL),
(18, 'NAME', 'Y', ''),
(18, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(18, 'PREVIEW_TEXT', 'N', ''),
(18, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(18, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(18, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(18, 'SECTION_DESCRIPTION', 'N', ''),
(18, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(18, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(18, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(18, 'SECTION_NAME', 'Y', ''),
(18, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(18, 'SECTION_XML_ID', 'N', ''),
(18, 'SORT', 'N', '0'),
(18, 'TAGS', 'N', ''),
(18, 'XML_ID', 'Y', ''),
(18, 'XML_IMPORT_START_TIME', 'N', NULL),
(19, 'ACTIVE', 'Y', 'Y'),
(19, 'ACTIVE_FROM', 'N', ''),
(19, 'ACTIVE_TO', 'N', ''),
(19, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(19, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(19, 'DETAIL_TEXT', 'N', ''),
(19, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(19, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(19, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(19, 'LOG_ELEMENT_ADD', 'N', NULL),
(19, 'LOG_ELEMENT_DELETE', 'N', NULL),
(19, 'LOG_ELEMENT_EDIT', 'N', NULL),
(19, 'LOG_SECTION_ADD', 'N', NULL),
(19, 'LOG_SECTION_DELETE', 'N', NULL),
(19, 'LOG_SECTION_EDIT', 'N', NULL),
(19, 'NAME', 'Y', ''),
(19, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(19, 'PREVIEW_TEXT', 'N', ''),
(19, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(19, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(19, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(19, 'SECTION_DESCRIPTION', 'N', ''),
(19, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(19, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(19, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(19, 'SECTION_NAME', 'Y', ''),
(19, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(19, 'SECTION_XML_ID', 'N', ''),
(19, 'SORT', 'N', '0'),
(19, 'TAGS', 'N', ''),
(19, 'XML_ID', 'Y', ''),
(19, 'XML_IMPORT_START_TIME', 'N', NULL),
(20, 'ACTIVE', 'Y', 'Y'),
(20, 'ACTIVE_FROM', 'N', ''),
(20, 'ACTIVE_TO', 'N', ''),
(20, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(20, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(20, 'DETAIL_TEXT', 'N', ''),
(20, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(20, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(20, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(20, 'LOG_ELEMENT_ADD', 'N', NULL),
(20, 'LOG_ELEMENT_DELETE', 'N', NULL),
(20, 'LOG_ELEMENT_EDIT', 'N', NULL),
(20, 'LOG_SECTION_ADD', 'N', NULL),
(20, 'LOG_SECTION_DELETE', 'N', NULL),
(20, 'LOG_SECTION_EDIT', 'N', NULL),
(20, 'NAME', 'Y', ''),
(20, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(20, 'PREVIEW_TEXT', 'N', ''),
(20, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(20, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(20, 'SECTION_CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(20, 'SECTION_DESCRIPTION', 'N', ''),
(20, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(20, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(20, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(20, 'SECTION_NAME', 'Y', ''),
(20, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(20, 'SECTION_XML_ID', 'N', ''),
(20, 'SORT', 'N', '0'),
(20, 'TAGS', 'N', ''),
(20, 'XML_ID', 'Y', ''),
(20, 'XML_IMPORT_START_TIME', 'N', NULL),
(21, 'ACTIVE', 'Y', 'Y'),
(21, 'ACTIVE_FROM', 'N', ''),
(21, 'ACTIVE_TO', 'N', ''),
(21, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(21, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(21, 'DETAIL_TEXT', 'N', ''),
(21, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(21, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(21, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(21, 'LOG_ELEMENT_ADD', 'N', NULL),
(21, 'LOG_ELEMENT_DELETE', 'N', NULL),
(21, 'LOG_ELEMENT_EDIT', 'N', NULL),
(21, 'LOG_SECTION_ADD', 'N', NULL),
(21, 'LOG_SECTION_DELETE', 'N', NULL),
(21, 'LOG_SECTION_EDIT', 'N', NULL),
(21, 'NAME', 'Y', ''),
(21, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(21, 'PREVIEW_TEXT', 'N', ''),
(21, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(21, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(21, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(21, 'SECTION_DESCRIPTION', 'N', ''),
(21, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(21, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(21, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(21, 'SECTION_NAME', 'Y', ''),
(21, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(21, 'SECTION_XML_ID', 'N', ''),
(21, 'SORT', 'N', '0'),
(21, 'TAGS', 'N', ''),
(21, 'XML_ID', 'Y', ''),
(21, 'XML_IMPORT_START_TIME', 'N', NULL),
(22, 'ACTIVE', 'Y', 'Y'),
(22, 'ACTIVE_FROM', 'N', ''),
(22, 'ACTIVE_TO', 'N', ''),
(22, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(22, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(22, 'DETAIL_TEXT', 'N', ''),
(22, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(22, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(22, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(22, 'LOG_ELEMENT_ADD', 'N', NULL),
(22, 'LOG_ELEMENT_DELETE', 'N', NULL),
(22, 'LOG_ELEMENT_EDIT', 'N', NULL),
(22, 'LOG_SECTION_ADD', 'N', NULL),
(22, 'LOG_SECTION_DELETE', 'N', NULL),
(22, 'LOG_SECTION_EDIT', 'N', NULL),
(22, 'NAME', 'Y', ''),
(22, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(22, 'PREVIEW_TEXT', 'N', ''),
(22, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(22, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(22, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(22, 'SECTION_DESCRIPTION', 'N', ''),
(22, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(22, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(22, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(22, 'SECTION_NAME', 'Y', ''),
(22, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(22, 'SECTION_XML_ID', 'N', ''),
(22, 'SORT', 'N', '0'),
(22, 'TAGS', 'N', ''),
(22, 'XML_ID', 'Y', ''),
(22, 'XML_IMPORT_START_TIME', 'N', NULL),
(23, 'ACTIVE', 'Y', 'Y'),
(23, 'ACTIVE_FROM', 'N', ''),
(23, 'ACTIVE_TO', 'N', ''),
(23, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"_\";s:11:\"TRANS_OTHER\";s:1:\"_\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(23, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(23, 'DETAIL_TEXT', 'Y', ''),
(23, 'DETAIL_TEXT_TYPE', 'Y', 'html'),
(23, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(23, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(23, 'LOG_ELEMENT_ADD', 'N', NULL),
(23, 'LOG_ELEMENT_DELETE', 'N', NULL),
(23, 'LOG_ELEMENT_EDIT', 'N', NULL),
(23, 'LOG_SECTION_ADD', 'N', NULL),
(23, 'LOG_SECTION_DELETE', 'N', NULL),
(23, 'LOG_SECTION_EDIT', 'N', NULL),
(23, 'NAME', 'Y', ''),
(23, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"Y\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"Y\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"Y\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(23, 'PREVIEW_TEXT', 'N', ''),
(23, 'PREVIEW_TEXT_TYPE', 'Y', 'html'),
(23, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(23, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(23, 'SECTION_DESCRIPTION', 'N', ''),
(23, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(23, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(23, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(23, 'SECTION_NAME', 'Y', ''),
(23, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(23, 'SECTION_XML_ID', 'N', ''),
(23, 'SORT', 'N', '0'),
(23, 'TAGS', 'N', ''),
(23, 'XML_ID', 'Y', ''),
(23, 'XML_IMPORT_START_TIME', 'N', NULL),
(24, 'ACTIVE', 'Y', 'Y'),
(24, 'ACTIVE_FROM', 'N', ''),
(24, 'ACTIVE_TO', 'N', ''),
(24, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(24, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(24, 'DETAIL_TEXT', 'N', ''),
(24, 'DETAIL_TEXT_TYPE', 'Y', 'html'),
(24, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(24, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(24, 'LOG_ELEMENT_ADD', 'N', NULL),
(24, 'LOG_ELEMENT_DELETE', 'N', NULL),
(24, 'LOG_ELEMENT_EDIT', 'N', NULL),
(24, 'LOG_SECTION_ADD', 'N', NULL),
(24, 'LOG_SECTION_DELETE', 'N', NULL),
(24, 'LOG_SECTION_EDIT', 'N', NULL),
(24, 'NAME', 'Y', ''),
(24, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(24, 'PREVIEW_TEXT', 'N', ''),
(24, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(24, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(24, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(24, 'SECTION_DESCRIPTION', 'N', ''),
(24, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(24, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(24, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(24, 'SECTION_NAME', 'Y', ''),
(24, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(24, 'SECTION_XML_ID', 'N', ''),
(24, 'SORT', 'N', '0'),
(24, 'TAGS', 'N', ''),
(24, 'XML_ID', 'Y', ''),
(24, 'XML_IMPORT_START_TIME', 'N', NULL),
(25, 'ACTIVE', 'Y', 'Y'),
(25, 'ACTIVE_FROM', 'N', ''),
(25, 'ACTIVE_TO', 'N', ''),
(25, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(25, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(25, 'DETAIL_TEXT', 'N', ''),
(25, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(25, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(25, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(25, 'LOG_ELEMENT_ADD', 'N', NULL),
(25, 'LOG_ELEMENT_DELETE', 'N', NULL),
(25, 'LOG_ELEMENT_EDIT', 'N', NULL),
(25, 'LOG_SECTION_ADD', 'N', NULL),
(25, 'LOG_SECTION_DELETE', 'N', NULL),
(25, 'LOG_SECTION_EDIT', 'N', NULL),
(25, 'NAME', 'Y', ''),
(25, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(25, 'PREVIEW_TEXT', 'N', ''),
(25, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(25, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', NULL),
(25, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(25, 'SECTION_DESCRIPTION', 'N', ''),
(25, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(25, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', NULL),
(25, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(25, 'SECTION_NAME', 'Y', ''),
(25, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(25, 'SECTION_XML_ID', 'N', ''),
(25, 'SORT', 'N', '0'),
(25, 'TAGS', 'N', ''),
(25, 'XML_ID', 'Y', ''),
(25, 'XML_IMPORT_START_TIME', 'N', NULL),
(26, 'ACTIVE', 'Y', 'Y'),
(26, 'ACTIVE_FROM', 'N', ''),
(26, 'ACTIVE_TO', 'N', ''),
(26, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(26, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(26, 'DETAIL_TEXT', 'N', ''),
(26, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(26, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(26, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(26, 'LOG_ELEMENT_ADD', 'N', NULL),
(26, 'LOG_ELEMENT_DELETE', 'N', NULL),
(26, 'LOG_ELEMENT_EDIT', 'N', NULL),
(26, 'LOG_SECTION_ADD', 'N', NULL),
(26, 'LOG_SECTION_DELETE', 'N', NULL),
(26, 'LOG_SECTION_EDIT', 'N', NULL),
(26, 'NAME', 'Y', ''),
(26, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(26, 'PREVIEW_TEXT', 'N', ''),
(26, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(26, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(26, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(26, 'SECTION_DESCRIPTION', 'N', ''),
(26, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(26, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(26, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(26, 'SECTION_NAME', 'Y', ''),
(26, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(26, 'SECTION_XML_ID', 'N', ''),
(26, 'SORT', 'N', '0'),
(26, 'TAGS', 'N', ''),
(26, 'XML_ID', 'Y', ''),
(26, 'XML_IMPORT_START_TIME', 'N', NULL),
(27, 'ACTIVE', 'Y', 'Y'),
(27, 'ACTIVE_FROM', 'N', ''),
(27, 'ACTIVE_TO', 'N', ''),
(27, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(27, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(27, 'DETAIL_TEXT', 'N', ''),
(27, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(27, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(27, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(27, 'LOG_ELEMENT_ADD', 'N', NULL),
(27, 'LOG_ELEMENT_DELETE', 'N', NULL),
(27, 'LOG_ELEMENT_EDIT', 'N', NULL),
(27, 'LOG_SECTION_ADD', 'N', NULL),
(27, 'LOG_SECTION_DELETE', 'N', NULL),
(27, 'LOG_SECTION_EDIT', 'N', NULL),
(27, 'NAME', 'Y', ''),
(27, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(27, 'PREVIEW_TEXT', 'N', ''),
(27, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(27, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(27, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(27, 'SECTION_DESCRIPTION', 'N', ''),
(27, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(27, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(27, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(27, 'SECTION_NAME', 'Y', ''),
(27, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(27, 'SECTION_XML_ID', 'N', ''),
(27, 'SORT', 'N', '0'),
(27, 'TAGS', 'N', ''),
(27, 'XML_ID', 'Y', ''),
(27, 'XML_IMPORT_START_TIME', 'N', NULL),
(28, 'ACTIVE', 'Y', 'Y'),
(28, 'ACTIVE_FROM', 'N', ''),
(28, 'ACTIVE_TO', 'N', ''),
(28, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(28, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(28, 'DETAIL_TEXT', 'N', ''),
(28, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(28, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(28, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(28, 'LOG_ELEMENT_ADD', 'N', NULL),
(28, 'LOG_ELEMENT_DELETE', 'N', NULL),
(28, 'LOG_ELEMENT_EDIT', 'N', NULL),
(28, 'LOG_SECTION_ADD', 'N', NULL),
(28, 'LOG_SECTION_DELETE', 'N', NULL),
(28, 'LOG_SECTION_EDIT', 'N', NULL),
(28, 'NAME', 'Y', ''),
(28, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(28, 'PREVIEW_TEXT', 'N', ''),
(28, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(28, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(28, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(28, 'SECTION_DESCRIPTION', 'N', ''),
(28, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(28, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(28, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(28, 'SECTION_NAME', 'Y', ''),
(28, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(28, 'SECTION_XML_ID', 'N', ''),
(28, 'SORT', 'N', '0'),
(28, 'TAGS', 'N', ''),
(28, 'XML_ID', 'Y', ''),
(28, 'XML_IMPORT_START_TIME', 'N', NULL),
(29, 'ACTIVE', 'Y', 'Y'),
(29, 'ACTIVE_FROM', 'N', ''),
(29, 'ACTIVE_TO', 'N', ''),
(29, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(29, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(29, 'DETAIL_TEXT', 'N', ''),
(29, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(29, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(29, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(29, 'LOG_ELEMENT_ADD', 'N', NULL),
(29, 'LOG_ELEMENT_DELETE', 'N', NULL),
(29, 'LOG_ELEMENT_EDIT', 'N', NULL),
(29, 'LOG_SECTION_ADD', 'N', NULL),
(29, 'LOG_SECTION_DELETE', 'N', NULL),
(29, 'LOG_SECTION_EDIT', 'N', NULL),
(29, 'NAME', 'Y', ''),
(29, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(29, 'PREVIEW_TEXT', 'N', ''),
(29, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(29, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(29, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(29, 'SECTION_DESCRIPTION', 'N', ''),
(29, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(29, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(29, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(29, 'SECTION_NAME', 'Y', ''),
(29, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(29, 'SECTION_XML_ID', 'N', ''),
(29, 'SORT', 'N', '0'),
(29, 'TAGS', 'N', ''),
(29, 'XML_ID', 'Y', ''),
(29, 'XML_IMPORT_START_TIME', 'N', NULL),
(30, 'ACTIVE', 'Y', 'Y'),
(30, 'ACTIVE_FROM', 'N', ''),
(30, 'ACTIVE_TO', 'N', ''),
(30, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(30, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(30, 'DETAIL_TEXT', 'N', ''),
(30, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(30, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(30, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(30, 'LOG_ELEMENT_ADD', 'N', NULL),
(30, 'LOG_ELEMENT_DELETE', 'N', NULL),
(30, 'LOG_ELEMENT_EDIT', 'N', NULL),
(30, 'LOG_SECTION_ADD', 'N', NULL),
(30, 'LOG_SECTION_DELETE', 'N', NULL),
(30, 'LOG_SECTION_EDIT', 'N', NULL),
(30, 'NAME', 'Y', ''),
(30, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(30, 'PREVIEW_TEXT', 'N', ''),
(30, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(30, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(30, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(30, 'SECTION_DESCRIPTION', 'N', ''),
(30, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(30, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(30, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(30, 'SECTION_NAME', 'Y', ''),
(30, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(30, 'SECTION_XML_ID', 'N', ''),
(30, 'SORT', 'N', '0'),
(30, 'TAGS', 'N', ''),
(30, 'XML_ID', 'Y', ''),
(30, 'XML_IMPORT_START_TIME', 'N', NULL),
(31, 'ACTIVE', 'Y', 'Y'),
(31, 'ACTIVE_FROM', 'N', ''),
(31, 'ACTIVE_TO', 'N', ''),
(31, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(31, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(31, 'DETAIL_TEXT', 'N', ''),
(31, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(31, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(31, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(31, 'LOG_ELEMENT_ADD', 'N', NULL),
(31, 'LOG_ELEMENT_DELETE', 'N', NULL),
(31, 'LOG_ELEMENT_EDIT', 'N', NULL),
(31, 'LOG_SECTION_ADD', 'N', NULL),
(31, 'LOG_SECTION_DELETE', 'N', NULL),
(31, 'LOG_SECTION_EDIT', 'N', NULL),
(31, 'NAME', 'Y', ''),
(31, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(31, 'PREVIEW_TEXT', 'N', ''),
(31, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(31, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(31, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(31, 'SECTION_DESCRIPTION', 'N', ''),
(31, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(31, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(31, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(31, 'SECTION_NAME', 'Y', ''),
(31, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(31, 'SECTION_XML_ID', 'N', ''),
(31, 'SORT', 'N', '0'),
(31, 'TAGS', 'N', ''),
(31, 'XML_ID', 'Y', ''),
(31, 'XML_IMPORT_START_TIME', 'N', NULL),
(32, 'ACTIVE', 'Y', 'Y'),
(32, 'ACTIVE_FROM', 'N', ''),
(32, 'ACTIVE_TO', 'N', ''),
(32, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(32, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(32, 'DETAIL_TEXT', 'N', ''),
(32, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(32, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(32, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(32, 'LOG_ELEMENT_ADD', 'N', NULL),
(32, 'LOG_ELEMENT_DELETE', 'N', NULL),
(32, 'LOG_ELEMENT_EDIT', 'N', NULL),
(32, 'LOG_SECTION_ADD', 'N', NULL),
(32, 'LOG_SECTION_DELETE', 'N', NULL),
(32, 'LOG_SECTION_EDIT', 'N', NULL),
(32, 'NAME', 'Y', ''),
(32, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(32, 'PREVIEW_TEXT', 'N', ''),
(32, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(32, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(32, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(32, 'SECTION_DESCRIPTION', 'N', ''),
(32, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(32, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(32, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(32, 'SECTION_NAME', 'Y', ''),
(32, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(32, 'SECTION_XML_ID', 'N', ''),
(32, 'SORT', 'N', '0'),
(32, 'TAGS', 'N', ''),
(32, 'XML_ID', 'Y', ''),
(32, 'XML_IMPORT_START_TIME', 'N', NULL);
-- -----------------------------------
-- Dumping table b_iblock_group
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_group`;
CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_group` VALUES
(8, 1, 'X'),
(8, 2, 'R'),
(9, 1, 'X'),
(9, 2, 'R'),
(10, 1, 'X'),
(10, 2, 'R'),
(11, 1, 'X'),
(11, 2, 'R'),
(12, 1, 'X'),
(12, 2, 'R'),
(13, 1, 'X'),
(13, 2, 'R'),
(14, 1, 'X'),
(15, 1, 'X'),
(15, 2, 'R'),
(16, 1, 'X'),
(16, 2, 'R'),
(17, 1, 'X'),
(17, 2, 'R'),
(18, 1, 'X'),
(18, 2, 'R'),
(19, 1, 'X'),
(19, 2, 'R'),
(20, 1, 'X'),
(20, 2, 'R'),
(21, 1, 'X'),
(21, 2, 'R'),
(22, 1, 'X'),
(22, 2, 'R'),
(23, 1, 'X'),
(23, 2, 'R'),
(24, 1, 'X'),
(24, 2, 'R'),
(25, 1, 'X'),
(25, 2, 'R'),
(26, 1, 'X'),
(26, 2, 'R'),
(27, 1, 'X'),
(27, 2, 'R'),
(28, 1, 'X'),
(28, 2, 'R'),
(29, 1, 'X'),
(29, 2, 'R'),
(30, 1, 'X'),
(30, 2, 'R'),
(31, 1, 'X'),
(31, 2, 'R'),
(32, 1, 'X'),
(32, 2, 'R');
-- -----------------------------------
-- Dumping table b_iblock_iblock_iprop
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_iblock_iprop`;
CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_iproperty
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_iproperty`;
CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_iproperty` VALUES
(1, 13, 'ELEMENT_META_TITLE', 'B', 13, '{=this.Name}');
-- -----------------------------------
-- Dumping table b_iblock_messages
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_messages`;
CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_messages` VALUES
(8, 'ELEMENT_ADD', 'Добавить элемент'),
(8, 'ELEMENT_DELETE', 'Удалить элемент'),
(8, 'ELEMENT_EDIT', 'Изменить элемент'),
(8, 'ELEMENT_NAME', 'Элемент'),
(8, 'ELEMENTS_NAME', 'Элементы'),
(8, 'SECTION_ADD', 'Добавить раздел'),
(8, 'SECTION_DELETE', 'Удалить раздел'),
(8, 'SECTION_EDIT', 'Изменить раздел'),
(8, 'SECTION_NAME', 'Раздел'),
(8, 'SECTIONS_NAME', 'Разделы'),
(9, 'ELEMENT_ADD', 'Добавить элемент'),
(9, 'ELEMENT_DELETE', 'Удалить элемент'),
(9, 'ELEMENT_EDIT', 'Изменить элемент'),
(9, 'ELEMENT_NAME', 'Элемент'),
(9, 'ELEMENTS_NAME', 'Элементы'),
(9, 'SECTION_ADD', 'Добавить раздел'),
(9, 'SECTION_DELETE', 'Удалить раздел'),
(9, 'SECTION_EDIT', 'Изменить раздел'),
(9, 'SECTION_NAME', 'Раздел'),
(9, 'SECTIONS_NAME', 'Разделы'),
(10, 'ELEMENT_ADD', 'Добавить элемент'),
(10, 'ELEMENT_DELETE', 'Удалить элемент'),
(10, 'ELEMENT_EDIT', 'Изменить элемент'),
(10, 'ELEMENT_NAME', 'Элемент'),
(10, 'ELEMENTS_NAME', 'Элементы'),
(10, 'SECTION_ADD', 'Добавить раздел'),
(10, 'SECTION_DELETE', 'Удалить раздел'),
(10, 'SECTION_EDIT', 'Изменить раздел'),
(10, 'SECTION_NAME', 'Раздел'),
(10, 'SECTIONS_NAME', 'Разделы'),
(11, 'ELEMENT_ADD', 'Добавить элемент'),
(11, 'ELEMENT_DELETE', 'Удалить элемент'),
(11, 'ELEMENT_EDIT', 'Изменить элемент'),
(11, 'ELEMENT_NAME', 'Элемент'),
(11, 'ELEMENTS_NAME', 'Элементы'),
(12, 'ELEMENT_ADD', 'Добавить элемент'),
(12, 'ELEMENT_DELETE', 'Удалить элемент'),
(12, 'ELEMENT_EDIT', 'Изменить элемент'),
(12, 'ELEMENT_NAME', 'Элемент'),
(12, 'ELEMENTS_NAME', 'Элементы'),
(12, 'SECTION_ADD', 'Добавить раздел'),
(12, 'SECTION_DELETE', 'Удалить раздел'),
(12, 'SECTION_EDIT', 'Изменить раздел'),
(12, 'SECTION_NAME', 'Раздел'),
(12, 'SECTIONS_NAME', 'Разделы'),
(13, 'ELEMENT_ADD', 'Добавить элемент'),
(13, 'ELEMENT_DELETE', 'Удалить элемент'),
(13, 'ELEMENT_EDIT', 'Изменить элемент'),
(13, 'ELEMENT_NAME', 'Элемент'),
(13, 'ELEMENTS_NAME', 'Элементы'),
(13, 'SECTION_ADD', 'Добавить раздел'),
(13, 'SECTION_DELETE', 'Удалить раздел'),
(13, 'SECTION_EDIT', 'Изменить раздел'),
(13, 'SECTION_NAME', 'Раздел'),
(13, 'SECTIONS_NAME', 'Разделы'),
(14, 'ELEMENT_ADD', 'Добавить элемент'),
(14, 'ELEMENT_DELETE', 'Удалить элемент'),
(14, 'ELEMENT_EDIT', 'Изменить элемент'),
(14, 'ELEMENT_NAME', 'Элемент'),
(14, 'ELEMENTS_NAME', 'Элементы'),
(14, 'SECTION_ADD', 'Добавить раздел'),
(14, 'SECTION_DELETE', 'Удалить раздел'),
(14, 'SECTION_EDIT', 'Изменить раздел'),
(14, 'SECTION_NAME', 'Раздел'),
(14, 'SECTIONS_NAME', 'Разделы'),
(15, 'ELEMENT_ADD', 'Добавить элемент'),
(15, 'ELEMENT_DELETE', 'Удалить элемент'),
(15, 'ELEMENT_EDIT', 'Изменить элемент'),
(15, 'ELEMENT_NAME', 'Элемент'),
(15, 'ELEMENTS_NAME', 'Элементы'),
(15, 'SECTION_ADD', 'Добавить раздел'),
(15, 'SECTION_DELETE', 'Удалить раздел'),
(15, 'SECTION_EDIT', 'Изменить раздел'),
(15, 'SECTION_NAME', 'Раздел'),
(15, 'SECTIONS_NAME', 'Разделы'),
(16, 'ELEMENT_ADD', 'Добавить элемент'),
(16, 'ELEMENT_DELETE', 'Удалить элемент'),
(16, 'ELEMENT_EDIT', 'Изменить элемент'),
(16, 'ELEMENT_NAME', 'Элемент'),
(16, 'ELEMENTS_NAME', 'Элементы'),
(16, 'SECTION_ADD', 'Добавить раздел'),
(16, 'SECTION_DELETE', 'Удалить раздел'),
(16, 'SECTION_EDIT', 'Изменить раздел'),
(16, 'SECTION_NAME', 'Раздел'),
(16, 'SECTIONS_NAME', 'Разделы'),
(17, 'ELEMENT_ADD', 'Добавить элемент'),
(17, 'ELEMENT_DELETE', 'Удалить элемент'),
(17, 'ELEMENT_EDIT', 'Изменить элемент'),
(17, 'ELEMENT_NAME', 'Элемент'),
(17, 'ELEMENTS_NAME', 'Элементы'),
(17, 'SECTION_ADD', 'Добавить раздел'),
(17, 'SECTION_DELETE', 'Удалить раздел'),
(17, 'SECTION_EDIT', 'Изменить раздел'),
(17, 'SECTION_NAME', 'Раздел'),
(17, 'SECTIONS_NAME', 'Разделы'),
(18, 'ELEMENT_ADD', 'Добавить элемент'),
(18, 'ELEMENT_DELETE', 'Удалить элемент'),
(18, 'ELEMENT_EDIT', 'Изменить элемент'),
(18, 'ELEMENT_NAME', 'Элемент'),
(18, 'ELEMENTS_NAME', 'Элементы'),
(18, 'SECTION_ADD', 'Добавить раздел'),
(18, 'SECTION_DELETE', 'Удалить раздел'),
(18, 'SECTION_EDIT', 'Изменить раздел'),
(18, 'SECTION_NAME', 'Раздел'),
(18, 'SECTIONS_NAME', 'Разделы'),
(19, 'ELEMENT_ADD', 'Добавить элемент'),
(19, 'ELEMENT_DELETE', 'Удалить элемент'),
(19, 'ELEMENT_EDIT', 'Изменить элемент'),
(19, 'ELEMENT_NAME', 'Элемент'),
(19, 'ELEMENTS_NAME', 'Элементы'),
(19, 'SECTION_ADD', 'Добавить раздел'),
(19, 'SECTION_DELETE', 'Удалить раздел'),
(19, 'SECTION_EDIT', 'Изменить раздел'),
(19, 'SECTION_NAME', 'Раздел'),
(19, 'SECTIONS_NAME', 'Разделы'),
(20, 'ELEMENT_ADD', 'Добавить элемент'),
(20, 'ELEMENT_DELETE', 'Удалить элемент'),
(20, 'ELEMENT_EDIT', 'Изменить элемент'),
(20, 'ELEMENT_NAME', 'Элемент'),
(20, 'ELEMENTS_NAME', 'Элементы'),
(20, 'SECTION_ADD', 'Добавить раздел'),
(20, 'SECTION_DELETE', 'Удалить раздел'),
(20, 'SECTION_EDIT', 'Изменить раздел'),
(20, 'SECTION_NAME', 'Раздел'),
(20, 'SECTIONS_NAME', 'Разделы'),
(21, 'ELEMENT_ADD', 'Добавить элемент'),
(21, 'ELEMENT_DELETE', 'Удалить элемент'),
(21, 'ELEMENT_EDIT', 'Изменить элемент'),
(21, 'ELEMENT_NAME', 'Элемент'),
(21, 'ELEMENTS_NAME', 'Элементы'),
(21, 'SECTION_ADD', 'Добавить раздел'),
(21, 'SECTION_DELETE', 'Удалить раздел'),
(21, 'SECTION_EDIT', 'Изменить раздел'),
(21, 'SECTION_NAME', 'Раздел'),
(21, 'SECTIONS_NAME', 'Разделы'),
(22, 'ELEMENT_ADD', 'Добавить элемент'),
(22, 'ELEMENT_DELETE', 'Удалить элемент'),
(22, 'ELEMENT_EDIT', 'Изменить элемент'),
(22, 'ELEMENT_NAME', 'Элемент'),
(22, 'ELEMENTS_NAME', 'Элементы'),
(22, 'SECTION_ADD', 'Добавить раздел'),
(22, 'SECTION_DELETE', 'Удалить раздел'),
(22, 'SECTION_EDIT', 'Изменить раздел'),
(22, 'SECTION_NAME', 'Раздел'),
(22, 'SECTIONS_NAME', 'Разделы'),
(23, 'ELEMENT_ADD', 'Добавить элемент'),
(23, 'ELEMENT_DELETE', 'Удалить элемент'),
(23, 'ELEMENT_EDIT', 'Изменить элемент'),
(23, 'ELEMENT_NAME', 'Элемент'),
(23, 'ELEMENTS_NAME', 'Элементы'),
(23, 'SECTION_ADD', 'Добавить раздел'),
(23, 'SECTION_DELETE', 'Удалить раздел'),
(23, 'SECTION_EDIT', 'Изменить раздел'),
(23, 'SECTION_NAME', 'Раздел'),
(23, 'SECTIONS_NAME', 'Разделы'),
(24, 'ELEMENT_ADD', 'Добавить элемент'),
(24, 'ELEMENT_DELETE', 'Удалить элемент'),
(24, 'ELEMENT_EDIT', 'Изменить элемент'),
(24, 'ELEMENT_NAME', 'Элемент'),
(24, 'ELEMENTS_NAME', 'Элементы'),
(24, 'SECTION_ADD', 'Добавить раздел'),
(24, 'SECTION_DELETE', 'Удалить раздел'),
(24, 'SECTION_EDIT', 'Изменить раздел'),
(24, 'SECTION_NAME', 'Раздел'),
(24, 'SECTIONS_NAME', 'Разделы'),
(25, 'ELEMENT_ADD', 'Добавить элемент'),
(25, 'ELEMENT_DELETE', 'Удалить элемент'),
(25, 'ELEMENT_EDIT', 'Изменить элемент'),
(25, 'ELEMENT_NAME', 'Элемент'),
(25, 'ELEMENTS_NAME', 'Элементы'),
(25, 'SECTION_ADD', 'Добавить раздел'),
(25, 'SECTION_DELETE', 'Удалить раздел'),
(25, 'SECTION_EDIT', 'Изменить раздел'),
(25, 'SECTION_NAME', 'Раздел'),
(25, 'SECTIONS_NAME', 'Разделы'),
(26, 'ELEMENT_ADD', 'Добавить элемент'),
(26, 'ELEMENT_DELETE', 'Удалить элемент'),
(26, 'ELEMENT_EDIT', 'Изменить элемент'),
(26, 'ELEMENT_NAME', 'Элемент'),
(26, 'ELEMENTS_NAME', 'Элементы'),
(27, 'ELEMENT_ADD', 'Добавить элемент'),
(27, 'ELEMENT_DELETE', 'Удалить элемент'),
(27, 'ELEMENT_EDIT', 'Изменить элемент'),
(27, 'ELEMENT_NAME', 'Элемент'),
(27, 'ELEMENTS_NAME', 'Элементы'),
(28, 'ELEMENT_ADD', 'Добавить элемент'),
(28, 'ELEMENT_DELETE', 'Удалить элемент'),
(28, 'ELEMENT_EDIT', 'Изменить элемент'),
(28, 'ELEMENT_NAME', 'Элемент'),
(28, 'ELEMENTS_NAME', 'Элементы'),
(29, 'ELEMENT_ADD', 'Добавить показание'),
(29, 'ELEMENT_DELETE', 'Удалить показание'),
(29, 'ELEMENT_EDIT', 'Изменить показание'),
(29, 'ELEMENT_NAME', 'Показание'),
(29, 'ELEMENTS_NAME', 'Показания'),
(30, 'ELEMENT_ADD', 'Добавить аптеку'),
(30, 'ELEMENT_DELETE', 'Удалить аптеку'),
(30, 'ELEMENT_EDIT', 'Изменить аптеку'),
(30, 'ELEMENT_NAME', 'Аптека'),
(30, 'ELEMENTS_NAME', 'Аптеки'),
(31, 'ELEMENT_ADD', 'Добавить элемент'),
(31, 'ELEMENT_DELETE', 'Удалить элемент'),
(31, 'ELEMENT_EDIT', 'Изменить элемент'),
(31, 'ELEMENT_NAME', 'Элемент'),
(31, 'ELEMENTS_NAME', 'Элементы'),
(32, 'ELEMENT_ADD', 'Добавить элемент'),
(32, 'ELEMENT_DELETE', 'Удалить элемент'),
(32, 'ELEMENT_EDIT', 'Изменить элемент'),
(32, 'ELEMENT_NAME', 'Элемент'),
(32, 'ELEMENTS_NAME', 'Элементы');
-- -----------------------------------
-- Dumping table b_iblock_offers_tmp
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_offers_tmp`;
CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PRODUCT_IBLOCK_ID` int(11) unsigned NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) unsigned NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_property
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_property`;
CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT 1,
  `COL_COUNT` int(11) NOT NULL DEFAULT 30,
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 1,
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  KEY `ix_iblock_property_2` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_property` VALUES
(9, '2018-06-21 14:51:53', 8, 'Рисунок списка', 'Y', 500, 'PIC_URL', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(10, '2018-06-21 14:51:53', 8, 'Суб название', 'Y', 500, 'SUB_TEXT_NAME', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(11, '2020-08-04 14:01:22', 8, 'Особенности', 'Y', 500, 'FITURES', 'a:2:{s:4:\"TYPE\";s:4:\"HTML\";s:4:\"TEXT\";s:0:\"\";}', 'S', 2, 50, 'L', 'Y', NULL, '', 1, NULL, 0, 'Y', 'N', 'N', 'N', 1, 'HTML', 'a:1:{s:6:\"height\";i:200;}', 'Для вывода в списке мобильной версии, установите Y в описании'),
(12, '2019-12-01 11:25:21', 8, 'Особенности рисунок', 'Y', 500, 'FITURES_ICO', '', 'S', 2, 50, 'L', 'Y', NULL, '', 1, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(13, '2018-06-21 14:51:53', 8, 'Капли', 'Y', 500, 'DROPS', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(14, '2018-06-21 14:51:53', 8, 'Рисунок стрелки', 'Y', 500, 'ARROW_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(15, '2018-06-21 14:51:53', 8, 'Рисунок увеличения', 'Y', 500, 'ZOOM_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(16, '2018-06-21 14:51:53', 8, 'Передзагрузка рисунок', 'Y', 500, 'PRELOAD_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(17, '2018-06-21 14:51:53', 8, 'Рисунок продукта 360', 'Y', 500, 'PROD_SPRITE_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(18, '2018-06-21 14:51:53', 8, 'Толщина', 'Y', 500, 'THICKNESS', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(19, '2018-06-21 14:51:53', 8, 'Длина', 'Y', 500, 'LENGTH', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(20, '2018-06-21 14:51:53', 8, 'Поверхность', 'Y', 500, 'SURFACE', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(21, '2018-06-21 14:51:53', 8, 'Сетка', 'Y', 500, 'GRID', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(22, '2018-06-21 14:51:53', 8, 'Штук', 'Y', 500, 'ITEMS', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(23, '2018-06-21 14:51:53', 8, 'Описание рисунок', 'Y', 500, 'DESC_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(24, '2019-12-01 11:25:21', 8, 'Описание заголовок', 'Y', 500, 'DESC_HEAD', '', 'S', 1, 30, 'L', 'Y', NULL, '', 1, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(25, '2019-12-01 11:25:21', 8, 'Описание текст', 'Y', 500, 'DESC_TEXT', 'a:2:{s:4:\"TYPE\";s:4:\"HTML\";s:4:\"TEXT\";s:0:\"\";}', 'S', 3, 50, 'L', 'Y', NULL, '', 1, NULL, 0, 'N', 'N', 'N', 'N', 1, 'HTML', 'a:1:{s:6:\"height\";i:200;}', ''),
(26, '2018-06-21 14:51:53', 8, 'Увеличение задний рисунок', 'Y', 500, 'ZOOM_BACK_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(27, '2018-06-21 14:51:53', 8, 'Текст сравнения', 'Y', 500, 'COMPARE_TEXT', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(28, '2018-06-21 14:51:53', 8, 'Поверхность рисунок', 'Y', 500, 'SURFACE_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(29, '2018-06-21 14:51:53', 8, 'Сетка рисунок', 'Y', 500, 'GRID_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(30, '2018-06-21 14:57:32', 10, 'Кто', 'Y', 500, 'WHO', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(32, '2019-12-01 23:45:06', 10, 'Фидбек група', 'Y', 500, 'DATA_FEEDBACK', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, 'Возможные варианты: doctors, workers, clients'),
(33, '2018-06-26 12:55:04', 8, 'Клас рисунка капель', 'Y', 500, 'DROPS_IMG', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(34, '2019-12-02 22:26:12', 11, 'ФИО', 'Y', 500, 'NAME', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(35, '2019-12-02 22:26:12', 11, 'E-mail', 'Y', 500, 'EMAIL', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(36, '2019-12-02 22:26:12', 11, 'Телефон', 'Y', 500, 'PHONE', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(37, '2019-12-02 22:26:12', 11, 'Город', 'Y', 500, 'CITY', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(38, '2019-12-02 22:26:12', 11, 'Дата рождения', 'Y', 500, 'BIRTHDAY', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(39, '2019-12-02 22:56:22', 11, 'Тема обращения', 'Y', 500, 'SUBJECT', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(40, '2019-12-02 22:26:12', 11, 'Текст обращения', 'Y', 500, 'TEXT', '', 'S', 15, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(41, '2019-12-12 21:30:24', 8, 'Seo title', 'Y', 5010, 'SEO_TITLE', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(42, '2019-12-12 21:30:24', 8, 'Seo description', 'Y', 5020, 'SEO_DESCRIPTION', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(43, '2019-12-12 21:30:24', 8, 'Seo title(страница сравнение)', 'Y', 5110, 'COMPARE_SEO_TITLE', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(44, '2019-12-12 21:30:24', 8, 'Seo description(страница сравнение)', 'Y', 5120, 'COMPARE_SEO_DESCRIPTION', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(45, '2019-12-12 21:30:24', 8, 'Seo title(страница состав)', 'Y', 5210, 'CONSIST_SEO_TITLE', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(46, '2019-12-12 21:30:24', 8, 'Seo description(страница состав)', 'Y', 5220, 'CONSIST_SEO_DESCRIPTION', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(47, '2019-12-12 21:30:24', 8, 'Seo h1', 'Y', 5005, 'SEO_H1', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(48, '2019-12-12 21:30:24', 8, 'Seo h1(страница сравнение)', 'Y', 5105, 'COMPARE_SEO_H1', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(49, '2019-12-12 21:30:24', 8, 'Seo h1(страница состав)', 'Y', 5205, 'CONSIST_SEO_H1', '', 'S', 1, 70, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(50, '2020-05-27 19:02:36', 12, 'Ссылки', 'Y', 500, 'LINKS', NULL, 'S', 1, 30, 'L', 'Y', NULL, '', 1, NULL, 0, 'N', 'N', 'N', 'N', 1, 'alsemAreasCustom', 'a:3:{s:6:\"FIELDS\";a:2:{i:0;a:5:{s:4:\"NAME\";s:16:\"Название\";s:4:\"CODE\";s:4:\"NAME\";s:4:\"SIZE\";s:4:\"70x1\";s:14:\"SELECT_OPTIONS\";s:0:\"\";s:4:\"HINT\";s:0:\"\";}i:1;a:5:{s:4:\"NAME\";s:12:\"Ссылка\";s:4:\"CODE\";s:3:\"URL\";s:4:\"SIZE\";s:4:\"70x1\";s:14:\"SELECT_OPTIONS\";s:0:\"\";s:4:\"HINT\";s:0:\"\";}}s:16:\"FIELDS_DIRECTION\";s:6:\"column\";s:10:\"HIDE_NAMES\";s:1:\"N\";}', ''),
(51, '2020-08-04 14:01:22', 8, 'Класс для стрелок в мобильной версии', 'Y', 5300, 'CSS_CLASS', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(52, '2020-08-07 10:59:50', 8, 'Галерея для мобильной страницы', 'Y', 5310, 'MOBILE_GALLERY', '', 'F', 1, 30, 'L', 'Y', NULL, 'jpg, gif, bmp, png, jpeg, svg', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(53, '2020-08-07 11:17:43', 8, 'Особенности рисунок', 'Y', 5320, 'MOBILE_FEATURES_ICO', '', 'F', 1, 30, 'L', 'Y', NULL, 'jpg, gif, bmp, png, jpeg, svg', 5, NULL, 0, 'Y', 'N', 'N', 'N', 1, NULL, NULL, 'Признак масштабирования, Y в описании'),
(54, '2020-08-07 11:18:33', 8, 'Особенности подзаголовок', 'Y', 5330, 'MOBILE_FEATURES_TITLE', 'a:2:{s:4:\"TYPE\";s:4:\"HTML\";s:4:\"TEXT\";s:0:\"\";}', 'S', 5, 80, 'L', 'Y', NULL, '', 1, NULL, 0, 'Y', 'N', 'N', 'N', 1, 'HTML', 'a:1:{s:6:\"height\";i:100;}', 'Для вывода в списке мобильной версии, установите Y в описании'),
(55, '2020-08-07 11:24:46', 8, 'Особенности текст', 'Y', 5340, 'MOBILE_FEATURES_TEXT', 'a:2:{s:4:\"TYPE\";s:4:\"HTML\";s:4:\"TEXT\";s:0:\"\";}', 'S', 1, 30, 'L', 'Y', NULL, '', 1, NULL, 0, 'N', 'N', 'N', 'N', 1, 'HTML', 'a:1:{s:6:\"height\";i:50;}', ''),
(56, '2020-08-10 13:15:11', 8, 'Ширина картинки для анонса (600 по-умолчанию)', 'Y', 5305, 'MOBILE_PREVIEW_WIDTH', '600', 'N', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(57, '2020-08-10 13:15:11', 8, 'Высота картинки для анонса (400 по-умолчанию)', 'Y', 5306, 'MOBILE_PREVIEW_HEIGHT', '400', 'N', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(58, '2021-01-25 14:35:48', 13, 'Лайки', 'Y', 500, 'LIKES', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(59, '2021-01-25 14:35:48', 13, 'Просмотры', 'Y', 500, 'VIEWS', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(60, '2021-01-25 14:35:48', 13, 'Время прочтения (минут)', 'Y', 500, 'READ_TIME', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'Y', 1, NULL, NULL, ''),
(61, '2021-01-25 14:48:08', 13, 'Автор', 'Y', 500, 'AUTHOR', '', 'E', 1, 30, 'L', 'N', NULL, '', 5, NULL, 14, 'N', 'N', 'N', 'N', 1, 'EList', 'a:4:{s:4:\"size\";i:1;s:5:\"width\";i:0;s:5:\"group\";s:1:\"N\";s:8:\"multiple\";s:1:\"N\";}', ''),
(62, '2021-02-15 01:31:33', 16, 'Инструкция', 'Y', 100, 'INSTRUCTION', '', 'F', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(63, '2021-02-15 01:31:33', 16, 'Надпись на инструкции', 'Y', 150, 'INSTRUCTION_TEXT', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(64, '2021-02-15 01:31:33', 16, 'Ссылка в блоке', 'Y', 200, 'LINK_URL', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(65, '2021-02-15 01:31:34', 16, 'Текст на ссылке', 'Y', 250, 'LINK_TEXT', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(66, '2021-02-15 01:31:34', 16, 'Список преимуществ', 'Y', 300, 'ADVANTAGES_LIST', NULL, 'S', 1, 30, 'L', 'Y', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'CUSTOMPROPCOMPOSITE', NULL, ''),
(67, '2021-02-15 01:31:37', 17, 'Список компонентов', 'Y', 100, 'COMPONENTS_LIST', NULL, 'S', 1, 30, 'L', 'Y', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'CUSTOMPROPCOMPOSITE', NULL, ''),
(68, '2021-02-15 01:31:40', 18, 'Данные о безопасности', 'Y', 100, 'SAFETY_LIST', NULL, 'S', 1, 30, 'L', 'Y', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'CUSTOMPROPCOMPOSITE', NULL, ''),
(69, '2021-02-15 01:31:42', 19, 'Список особенностей', 'Y', 100, 'FEATURES_LIST', NULL, 'S', 1, 30, 'L', 'Y', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'CUSTOMPROPCOMPOSITE', NULL, ''),
(70, '2021-02-15 01:31:44', 20, 'Число в рекомендации', 'Y', 100, 'RECOMMENDATION_NUMBER', '', 'N', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(71, '2021-02-15 01:31:44', 20, 'Текст рекоменндации', 'Y', 200, 'RECOMMENDATION_TEXT', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(72, '2021-02-15 01:31:48', 21, 'Таблица состава', 'Y', 100, 'COMPOSITION_TABLE', NULL, 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'alse_table', NULL, ''),
(73, '2021-02-15 01:31:50', 22, 'Галерея наград', 'Y', 100, 'AWARDS_GALLERY', '', 'F', 1, 30, 'L', 'Y', NULL, 'jpg, gif, bmp, png, jpeg', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(74, '2021-02-15 01:31:50', 22, 'Слайдер в блоке', 'Y', 200, 'SLIDER_LIST', NULL, 'S', 1, 30, 'L', 'Y', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'CUSTOMPROPCOMPOSITE', NULL, ''),
(75, '2021-02-15 01:31:52', 23, 'Дата новости', 'Y', 100, 'DATE', NULL, 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'Y', 2, 'Date', NULL, ''),
(76, '2021-02-15 01:31:53', 23, 'Доп.факт', 'Y', 200, 'FACTS_LIST', NULL, 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'CUSTOMPROPCOMPOSITE', NULL, ''),
(77, '2021-02-15 01:31:56', 24, 'Ссылки где купить', 'Y', 100, 'BUY_LIST', '', 'S', 1, 30, 'L', 'Y', NULL, '', 5, NULL, 0, 'Y', 'N', 'N', 'N', 2, NULL, NULL, ''),
(78, '2021-02-15 15:54:59', 24, 'Галерея партнёров', 'Y', 200, 'PARTNERS_GALLERY', '', 'F', 1, 30, 'L', 'Y', NULL, 'jpg, gif, bmp, png, jpeg', 5, NULL, 0, 'Y', 'N', 'N', 'N', 2, NULL, NULL, ''),
(79, '2021-02-15 01:31:58', 25, 'Terms of Use', 'Y', 100, 'TERMS_FILE', '', 'F', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'Y', 1, NULL, NULL, ''),
(80, '2021-02-15 13:08:51', 25, 'Время ротации верхнего слайдера', 'Y', 200, 'TOP_SLIDER_ROTATION', '3000', 'N', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'Y', 1, NULL, NULL, ''),
(81, '2021-06-18 13:26:54', 8, 'Ид ютеки', 'Y', 100, 'UTEKA_ID', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(82, '2021-07-13 14:05:42', 18, 'Скрыть блок', 'Y', 200, 'HIDE', '', 'L', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(83, '2021-09-03 11:28:13', 26, 'Текст кнопки', 'Y', 110, 'WHERE_BUY_TITLE', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'Y', 2, NULL, NULL, ''),
(85, '2021-09-03 17:37:31', 26, 'Заголовок', 'Y', 210, 'INGREDIENTS_TITLE', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(86, '2021-09-03 17:37:31', 26, 'Список', 'Y', 220, 'INGREDIENTS_LIST', '', 'S', 1, 30, 'L', 'Y', NULL, '', 1, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(87, '2021-09-03 11:28:13', 26, 'Якорная ссылка', 'Y', 120, 'WHERE_BUY_ANCHOR', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'Y', 2, NULL, NULL, ''),
(89, '2021-09-03 17:37:31', 26, 'Список', 'Y', 300, 'ADVANTAGES_LIST', '', 'S', 1, 100, 'L', 'Y', NULL, '', 1, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(90, '2021-09-03 12:12:33', 27, 'Симптомы до препарата', 'Y', 100, 'SYMPTOMS_LIST', '', 'S', 1, 100, 'L', 'Y', NULL, '', 1, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(91, '2021-09-03 12:53:43', 28, 'Подзаголовок', 'Y', 100, 'SUBTITLE', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(92, '2021-09-03 13:19:03', 30, 'Ссылка', 'Y', 100, 'URL', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'Y', 2, NULL, NULL, ''),
(93, '2021-09-03 14:45:28', 31, 'Видео (ссылка или ID YouTube)', 'Y', 100, 'VIDEO', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'Y', 2, NULL, NULL, ''),
(94, '2021-09-03 16:02:36', 32, 'Логотип', 'Y', 110, 'LOGO', '', 'F', 1, 30, 'L', 'N', NULL, 'jpg, gif, bmp, png, jpeg', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(95, '2021-09-03 17:35:27', 32, 'Текст у логотипа', 'Y', 120, 'LOGO_TEXT', 'a:2:{s:4:\"TYPE\";s:4:\"TEXT\";s:4:\"TEXT\";s:0:\"\";}', 'S', 1, 100, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'HTML', 'a:1:{s:6:\"height\";i:40;}', ''),
(96, '2021-09-03 16:02:36', 32, 'Телефон', 'Y', 200, 'PHONE', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(97, '2021-09-03 16:02:36', 32, 'Текст ссылки', 'Y', 310, 'INSTRUCTION_TITLE', '', 'S', 1, 100, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(98, '2021-09-03 16:02:36', 32, 'Файл инструкции', 'Y', 320, 'INSTRUCTION_FILE', '', 'F', 1, 30, 'L', 'N', NULL, 'pdf, docx, odt, doc, txt, rtf', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, NULL, NULL, ''),
(99, '2021-09-03 17:30:48', 32, 'О противопоказаниях', 'Y', 400, 'CONTRAINDICATIONS_TEXT', 'a:2:{s:4:\"TYPE\";s:4:\"TEXT\";s:4:\"TEXT\";s:0:\"\";}', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'HTML', 'a:1:{s:6:\"height\";i:40;}', ''),
(100, '2021-09-03 17:35:27', 32, 'Всплывающее предупреждение', 'Y', 500, 'WARNING_TEXT', 'a:2:{s:4:\"TYPE\";s:4:\"TEXT\";s:4:\"TEXT\";s:0:\"\";}', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'HTML', 'a:1:{s:6:\"height\";i:40;}', ''),
(101, '2021-09-03 17:35:27', 32, 'Всплывающий текст о куках', 'Y', 600, 'COOKIES_TEXT', 'a:2:{s:4:\"TYPE\";s:4:\"TEXT\";s:4:\"TEXT\";s:0:\"\";}', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 2, 'HTML', 'a:1:{s:6:\"height\";i:40;}', '');
-- -----------------------------------
-- Dumping table b_iblock_property_enum
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_property_enum`;
CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_property_enum` VALUES
(1, 82, 'Да', 'N', 100, 'Y', NULL);
-- -----------------------------------
-- Dumping table b_iblock_right
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_right`;
CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_task_id` (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_rss
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_rss`;
CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_section
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_section`;
CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_section` VALUES
(1, '2021-01-25 14:38:27', 1, '2021-01-25 14:37:34', 1, 13, NULL, 'Y', 'Y', 500, 'Спорт', NULL, 9, 10, 1, '', 'text', 'Спорт\r\n', 'sport', NULL, NULL, NULL, NULL),
(2, '2021-01-25 16:28:52', 1, '2021-01-25 14:39:35', 1, 13, NULL, 'Y', 'Y', 500, 'Семья', NULL, 7, 8, 1, '', 'text', 'Семья\r\n', 'family', NULL, NULL, NULL, NULL),
(3, '2021-01-25 14:40:46', 1, '2021-01-25 14:40:46', 1, 13, NULL, 'Y', 'Y', 500, 'Месячные', NULL, 3, 4, 1, '', 'text', 'Месячные\r\n', 'period', NULL, NULL, NULL, NULL),
(4, '2021-01-25 14:41:19', 1, '2021-01-25 14:41:19', 1, 13, NULL, 'Y', 'Y', 500, 'Психология', NULL, 5, 6, 1, '', 'text', 'Психология\r\n', 'psychics', NULL, NULL, NULL, NULL),
(5, '2021-01-26 10:35:39', 1, '2021-01-26 10:29:33', 1, 13, NULL, 'Y', 'Y', 500, 'NUAGE', NULL, 1, 2, 1, '', 'text', 'NUAGE\r\n', 'nuage', NULL, NULL, NULL, NULL),
(6, '2021-07-13 15:26:58', 3, '2021-02-15 01:32:00', 3, 20, NULL, 'Y', 'Y', 500, 'Взрослым', NULL, 1, 2, 1, '', 'text', 'ВЗРОСЛЫМ\r\n', 'adult', NULL, NULL, 471, NULL);
-- -----------------------------------
-- Dumping table b_iblock_section_element
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_section_element`;
CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL,
  UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_section_element` VALUES
(1, 510, NULL),
(2, 507, NULL),
(2, 510, NULL),
(2, 512, NULL),
(2, 514, NULL),
(3, 507, NULL),
(3, 510, NULL),
(3, 511, NULL),
(3, 512, NULL),
(3, 515, NULL),
(3, 517, NULL),
(4, 507, NULL),
(4, 511, NULL),
(4, 513, NULL),
(5, 517, NULL),
(6, 525, NULL),
(6, 526, NULL),
(6, 527, NULL);
-- -----------------------------------
-- Dumping table b_iblock_section_iprop
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_section_iprop`;
CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_section_property
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_section_property`;
CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_2` (`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_section_property` VALUES
(16, 0, 62, NULL, NULL, NULL, NULL),
(16, 0, 63, NULL, NULL, NULL, NULL),
(16, 0, 64, NULL, NULL, NULL, NULL),
(16, 0, 65, NULL, NULL, NULL, NULL),
(16, 0, 66, NULL, NULL, NULL, NULL),
(17, 0, 67, NULL, NULL, NULL, NULL),
(19, 0, 69, NULL, NULL, NULL, NULL),
(20, 0, 70, NULL, NULL, NULL, NULL),
(20, 0, 71, NULL, NULL, NULL, NULL),
(21, 0, 72, NULL, NULL, NULL, NULL),
(22, 0, 73, NULL, NULL, NULL, NULL),
(22, 0, 74, NULL, NULL, NULL, NULL),
(23, 0, 75, NULL, NULL, NULL, NULL),
(23, 0, 76, NULL, NULL, NULL, NULL),
(25, 0, 79, NULL, NULL, NULL, NULL),
(25, 0, 80, NULL, NULL, NULL, NULL);
-- -----------------------------------
-- Dumping table b_iblock_section_right
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_section_right`;
CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_sequence
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_sequence`;
CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_iblock_site
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_site`;
CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_site` VALUES
(8, 'a1'),
(9, 'a1'),
(10, 'a1'),
(11, 'a1'),
(12, 'a1'),
(13, 'a1'),
(14, 'a1'),
(15, 'kf'),
(16, 'kf'),
(17, 'kf'),
(18, 'kf'),
(19, 'kf'),
(20, 'kf'),
(21, 'kf'),
(22, 'kf'),
(23, 'kf'),
(24, 'kf'),
(25, 'kf'),
(26, 'ga'),
(27, 'ga'),
(28, 'ga'),
(29, 'ga'),
(30, 'ga'),
(31, 'ga'),
(32, 'ga');
-- -----------------------------------
-- Dumping table b_iblock_type
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_type`;
CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT 500,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_type` VALUES
('forms', 'N', '', '', 'N', 5000),
('gasit', 'N', '', '', 'N', 500),
('komboflex', 'Y', '', '', 'N', 500),
('nuage', 'Y', '', '', 'N', 500);
-- -----------------------------------
-- Dumping table b_iblock_type_lang
-- -----------------------------------
DROP TABLE IF EXISTS `b_iblock_type_lang`;
CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_iblock_type_lang` VALUES
('nuage', 'ru', 'Контент', '', ''),
('nuage', 'en', 'nuage', '', ''),
('forms', 'ru', 'Формы', '', ''),
('forms', 'en', 'Формы', '', ''),
('komboflex', 'ru', 'Комбофлекс', '', ''),
('komboflex', 'en', 'Komboflex', '', ''),
('gasit', 'ru', 'Гасит', '', ''),
('gasit', 'en', 'Gasit', '', '');
-- -----------------------------------
-- Dumping table b_landing
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing`;
CREATE TABLE `b_landing` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TPL_ID` int(18) DEFAULT NULL,
  `SITE_ID` int(18) NOT NULL,
  `SITEMAP` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER_ID` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DATE_PUBLIC` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_LAND_CODE` (`CODE`),
  KEY `IX_B_LAND_ACTIVE` (`ACTIVE`),
  KEY `IX_B_LAND_XML_ID` (`XML_ID`),
  KEY `IX_B_LAND_SITEMAP` (`SITEMAP`),
  KEY `IX_B_LAND_FOLDER` (`FOLDER`),
  KEY `IX_B_LAND_FOLDER_ID` (`FOLDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_block
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_block`;
CREATE TABLE `b_landing_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int(18) DEFAULT NULL,
  `LID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) DEFAULT 500,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACCESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'X',
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_BLOCK_LID` (`LID`),
  KEY `IX_B_BLOCK_CODE` (`CODE`),
  KEY `IX_B_BLOCK_ACTIVE` (`ACTIVE`),
  KEY `IX_B_BLOCK_PUBLIC` (`PUBLIC`),
  KEY `IX_B_BLOCK_DELETED` (`DELETED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_demo
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_demo`;
CREATE TABLE `b_landing_demo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW2X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW3X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_DEMO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DEMO_XML_ID` (`XML_ID`),
  KEY `IX_B_DEMO_APP_CODE` (`APP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_domain
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_domain`;
CREATE TABLE `b_landing_domain` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROTOCOL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_DOMAIN_ACTIVE` (`ACTIVE`),
  KEY `IX_B_DOMAIN_DOMAIN` (`DOMAIN`),
  KEY `IX_B_DOMAIN_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_file
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_file`;
CREATE TABLE `b_landing_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_hook_data
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_hook_data`;
CREATE TABLE `b_landing_hook_data` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_manifest
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_manifest`;
CREATE TABLE `b_landing_manifest` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci NOT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_MANIFEST_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_repo
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_repo`;
CREATE TABLE `b_landing_repo` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_REPO_ACTIVE` (`ACTIVE`),
  KEY `IX_B_REPO_XML_ID` (`XML_ID`),
  KEY `IX_B_REPO_APP_CODE` (`APP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_site
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_site`;
CREATE TABLE `b_landing_site` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAGE',
  `TPL_ID` int(18) DEFAULT NULL,
  `DOMAIN_ID` int(18) NOT NULL,
  `SMN_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANDING_ID_INDEX` int(18) DEFAULT NULL,
  `LANDING_ID_404` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SITE_CODE` (`CODE`),
  KEY `IX_B_SITE_ACTIVE` (`ACTIVE`),
  KEY `IX_B_SITE_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_syspage
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_syspage`;
CREATE TABLE `b_landing_syspage` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_ID` (`SITE_ID`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_landing_template
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_template`;
CREATE TABLE `b_landing_template` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) DEFAULT 100,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `AREA_COUNT` int(2) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_landing_template` VALUES
(1, 'Y', '#EMPTY#', 100, 'empty', '#CONTENT#', 0, 1, 1, '2018-06-21 10:52:30', '2018-06-21 10:52:30'),
(2, 'Y', '#SIDEBAR_LEFT#', 200, 'sidebar_left', '<div class=\"landing-layout-flex\">\n								<div class=\"g-width-25x--lg g-max-width-100x g-overflow-hidden landing-sidebar\">#AREA_1#</div> \n								<div class=\"g-width-75x--lg g-max-width-100x landing-main\">#CONTENT#</div> \n							</div>', 1, 1, 1, '2018-06-21 10:52:30', '2018-06-21 10:52:30'),
(3, 'Y', '#SIDEBAR_RIGHT#', 300, 'sidebar_right', '<div class=\"landing-layout-flex\">\n								<div class=\"g-width-25x--lg landing-flex-order-1 g-max-width-100x landing-sidebar\">#AREA_1#</div> \n								<div class=\"g-width-75x--lg landing-flex-order-0 g-max-width-100x landing-main\">#CONTENT#</div> \n							</div>', 1, 1, 1, '2018-06-21 10:52:30', '2018-06-21 10:52:30'),
(4, 'Y', '#HEADER_FOOTER#', 400, 'header_footer', '<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div> \n							<div class=\"landing-footer\">#AREA_2#</div>', 2, 1, 1, '2018-06-21 10:52:30', '2018-06-21 10:52:30'),
(5, 'Y', '#WITHOUT_LEFT#', 500, 'without_left', '<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-layout-flex\">\n									<div class=\"g-width-25x--lg g-max-width-100x landing-flex-order-1 landing-sidebar\">#AREA_2#</div>\n									<div class=\"g-width-75x--lg g-max-width-100x landing-flex-order-0 landing-main\">#CONTENT#</div> \n								</div> \n							<div class=\"landing-footer\">#AREA_3#</div>', 3, 1, 1, '2018-06-21 10:52:30', '2018-06-21 10:52:30'),
(6, 'Y', '#WITHOUT_RIGHT#', 600, 'without_right', '<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex\">\n									<div class=\"g-width-25x--lg g-max-width-100x landing-sidebar\">#AREA_2#</div>\n									<div class=\"g-width-75x--lg g-max-width-100x landing-main\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>', 3, 1, 1, '2018-06-21 10:52:30', '2018-06-21 10:52:30');
-- -----------------------------------
-- Dumping table b_landing_template_ref
-- -----------------------------------
DROP TABLE IF EXISTS `b_landing_template_ref`;
CREATE TABLE `b_landing_template_ref` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_LANDING_ID` (`LANDING_ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_lang
-- -----------------------------------
DROP TABLE IF EXISTS `b_lang`;
CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT 100,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_lang` VALUES
('a1', 1000, 'Y', 'Y', 'NUAGE', '/', NULL, NULL, NULL, NULL, NULL, 'ru', 'C:/OSPanel/domains/nuage.loc', 'Y', 'nuage.loc', 'nuage.loc', 'dev@dnext.ru', 2),
('ga', 1, 'N', 'Y', 'Гасит', '/', NULL, NULL, NULL, NULL, NULL, 'ru', 'C:/OSPanel/domains/gasit.loc', 'Y', 'gasit.loc', 'Гасит', 'dev@dnext.ru', 1),
('kf', 1, 'N', 'Y', 'Комбофлекс', '/', NULL, NULL, NULL, NULL, NULL, 'ru', 'C:/OSPanel/domains/komboflex.loc', 'Y', 'komboflex.loc', 'Комбофлекс', 'dev@dnext.ru', 1);
-- -----------------------------------
-- Dumping table b_lang_domain
-- -----------------------------------
DROP TABLE IF EXISTS `b_lang_domain`;
CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_lang_domain` VALUES
('a1', 'nuage.loc'),
('ga', 'gasit.loc'),
('kf', 'komboflex.loc');
-- -----------------------------------
-- Dumping table b_language
-- -----------------------------------
DROP TABLE IF EXISTS `b_language`;
CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT 100,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_language` VALUES
('en', 2, 'N', 'Y', 'English', NULL, NULL, NULL, NULL, NULL, NULL, 2),
('ru', 1, 'Y', 'Y', 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, 1);
-- -----------------------------------
-- Dumping table b_main_mail_sender
-- -----------------------------------
DROP TABLE IF EXISTS `b_main_mail_sender`;
CREATE TABLE `b_main_mail_sender` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT 0,
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT 0,
  `OPTIONS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_medialib_collection
-- -----------------------------------
DROP TABLE IF EXISTS `b_medialib_collection`;
CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_medialib_collection_item
-- -----------------------------------
DROP TABLE IF EXISTS `b_medialib_collection_item`;
CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_medialib_item
-- -----------------------------------
DROP TABLE IF EXISTS `b_medialib_item`;
CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_medialib_type
-- -----------------------------------
DROP TABLE IF EXISTS `b_medialib_type`;
CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_medialib_type` VALUES
(1, 'image_name', 'image', 'jpg,jpeg,gif,png', 'Y', 'image_desc'),
(2, 'video_name', 'video', 'flv,mp4,wmv', 'Y', 'video_desc'),
(3, 'sound_name', 'sound', 'mp3,wma,aac', 'Y', 'sound_desc');
-- -----------------------------------
-- Dumping table b_messageservice_message
-- -----------------------------------
DROP TABLE IF EXISTS `b_messageservice_message`;
CREATE TABLE `b_messageservice_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT 0,
  `MESSAGE_FROM` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_BODY` longtext COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT 0,
  `EXTERNAL_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_messageservice_rest_app
-- -----------------------------------
DROP TABLE IF EXISTS `b_messageservice_rest_app`;
CREATE TABLE `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_messageservice_rest_app_lang
-- -----------------------------------
DROP TABLE IF EXISTS `b_messageservice_rest_app_lang`;
CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_module
-- -----------------------------------
DROP TABLE IF EXISTS `b_module`;
CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_module` VALUES
('alsem.areas', '2019-12-01 18:41:27'),
('bitrixcloud', '2017-08-30 17:41:36'),
('clouds', '2017-08-30 17:41:36'),
('compression', '2017-08-30 17:41:37'),
('fileman', '2017-08-30 17:41:37'),
('highloadblock', '2017-08-30 17:41:38'),
('iblock', '2017-08-30 17:41:41'),
('main', '2017-08-30 17:41:33'),
('perfmon', '2017-08-30 17:41:43'),
('search', '2017-08-30 17:41:44'),
('seo', '2017-08-30 17:41:45'),
('socialservices', '2017-08-30 17:41:45'),
('sprint.migration', '2021-02-15 13:08:44'),
('translate', '2017-08-30 17:41:46'),
('ui', '2017-12-26 15:38:55');
-- -----------------------------------
-- Dumping table b_module_group
-- -----------------------------------
DROP TABLE IF EXISTS `b_module_group`;
CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_module_to_module
-- -----------------------------------
DROP TABLE IF EXISTS `b_module_to_module`;
CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SORT` int(18) NOT NULL DEFAULT 100,
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20))
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_module_to_module` VALUES
(1, '2017-08-30 17:41:33', 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/main/tools/prop_userid.php', 'CIBlockPropertyUserID', 'GetUserTypeDescription', '', 1),
(2, '2017-08-30 17:41:33', 100, 'main', 'OnUserDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnUserDelete', '', 1),
(3, '2017-08-30 17:41:33', 100, 'main', 'OnLanguageDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnLanguageDelete', '', 1),
(4, '2017-08-30 17:41:33', 100, 'main', 'OnUserDelete', 'main', '', 'CUserOptions', 'OnUserDelete', '', 1),
(5, '2017-08-30 17:41:33', 100, 'main', 'OnChangeFile', 'main', '', 'CMain', 'OnChangeFileComponent', '', 1),
(6, '2017-08-30 17:41:33', 100, 'main', 'OnUserTypeRightsCheck', 'main', '', 'CUser', 'UserTypeRightsCheck', '', 1),
(7, '2017-08-30 17:41:33', 100, 'main', 'OnUserLogin', 'main', '', 'UpdateTools', 'CheckUpdates', '', 1),
(8, '2017-08-30 17:41:33', 100, 'main', 'OnModuleUpdate', 'main', '', 'UpdateTools', 'SetUpdateResult', '', 1),
(9, '2017-08-30 17:41:33', 100, 'main', 'OnUpdateCheck', 'main', '', 'UpdateTools', 'SetUpdateError', '', 1),
(10, '2017-08-30 17:41:33', 100, 'main', 'OnPanelCreate', 'main', '', 'CUndo', 'CheckNotifyMessage', '', 1),
(11, '2017-08-30 17:41:33', 100, 'main', 'OnAfterAddRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterAddRating', '', 1),
(12, '2017-08-30 17:41:33', 100, 'main', 'OnAfterUpdateRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterUpdateRating', '', 1),
(13, '2017-08-30 17:41:33', 100, 'main', 'OnSetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnSetRatingConfigs', '', 1),
(14, '2017-08-30 17:41:33', 100, 'main', 'OnGetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingConfigs', '', 1),
(15, '2017-08-30 17:41:33', 100, 'main', 'OnGetRatingsObjects', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingObject', '', 1),
(16, '2017-08-30 17:41:33', 100, 'main', 'OnGetRatingContentOwner', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingContentOwner', '', 1),
(17, '2017-08-30 17:41:33', 100, 'main', 'OnAfterAddRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterAddRatingRule', '', 1),
(18, '2017-08-30 17:41:33', 100, 'main', 'OnAfterUpdateRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterUpdateRatingRule', '', 1),
(19, '2017-08-30 17:41:33', 100, 'main', 'OnGetRatingRuleObjects', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleObjects', '', 1),
(20, '2017-08-30 17:41:33', 100, 'main', 'OnGetRatingRuleConfigs', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleConfigs', '', 1),
(21, '2017-08-30 17:41:33', 100, 'main', 'OnAfterUserAdd', 'main', '', 'CRatings', 'OnAfterUserRegister', '', 1),
(22, '2017-08-30 17:41:33', 100, 'main', 'OnUserDelete', 'main', '', 'CRatings', 'OnUserDelete', '', 1),
(23, '2017-08-30 17:41:33', 100, 'main', 'OnUserDelete', 'main', '', 'CAccess', 'OnUserDelete', '', 1),
(24, '2017-08-30 17:41:33', 100, 'main', 'OnAfterGroupAdd', 'main', '', 'CGroupAuthProvider', 'OnAfterGroupAdd', '', 1),
(25, '2017-08-30 17:41:33', 100, 'main', 'OnBeforeGroupUpdate', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupUpdate', '', 1),
(26, '2017-08-30 17:41:33', 100, 'main', 'OnBeforeGroupDelete', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupDelete', '', 1),
(27, '2017-08-30 17:41:33', 100, 'main', 'OnAfterSetUserGroup', 'main', '', 'CGroupAuthProvider', 'OnAfterSetUserGroup', '', 1),
(28, '2017-08-30 17:41:33', 100, 'main', 'OnUserLogin', 'main', '', 'CGroupAuthProvider', 'OnUserLogin', '', 1),
(29, '2017-08-30 17:41:33', 100, 'main', 'OnEventLogGetAuditTypes', 'main', '', 'CEventMain', 'GetAuditTypes', '', 1),
(30, '2017-08-30 17:41:33', 100, 'main', 'OnEventLogGetAuditHandlers', 'main', '', 'CEventMain', 'MakeMainObject', '', 1),
(31, '2017-08-30 17:41:33', 100, 'perfmon', 'OnGetTableSchema', 'main', '', 'CTableSchema', 'OnGetTableSchema', '', 1),
(32, '2017-08-30 17:41:33', 100, 'sender', 'OnConnectorList', 'main', '', '\\Bitrix\\Main\\SenderEventHandler', 'onConnectorListUser', '', 1),
(33, '2017-08-30 17:41:33', 110, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeString', 'GetUserTypeDescription', '', 1),
(34, '2017-08-30 17:41:33', 120, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeInteger', 'GetUserTypeDescription', '', 1),
(35, '2017-08-30 17:41:33', 130, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDouble', 'GetUserTypeDescription', '', 1),
(36, '2017-08-30 17:41:33', 140, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDateTime', 'GetUserTypeDescription', '', 1),
(37, '2017-08-30 17:41:33', 145, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDate', 'GetUserTypeDescription', '', 1),
(38, '2017-08-30 17:41:33', 150, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeBoolean', 'GetUserTypeDescription', '', 1),
(39, '2017-08-30 17:41:33', 160, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeFile', 'GetUserTypeDescription', '', 1),
(40, '2017-08-30 17:41:33', 170, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeEnum', 'GetUserTypeDescription', '', 1),
(41, '2017-08-30 17:41:33', 180, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockSection', 'GetUserTypeDescription', '', 1),
(42, '2017-08-30 17:41:33', 190, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockElement', 'GetUserTypeDescription', '', 1),
(43, '2017-08-30 17:41:33', 200, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeStringFormatted', 'GetUserTypeDescription', '', 1),
(44, '2017-08-30 17:41:33', 210, 'main', 'OnUserTypeBuildList', 'main', '', '\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType', 'getUserTypeDescription', '', 1),
(45, '2017-08-30 17:41:33', 100, 'main', 'OnBeforeEndBufferContent', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeEndBufferContent', '', 1),
(46, '2017-08-30 17:41:33', 100, 'main', 'OnBeforeRestartBuffer', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeRestartBuffer', '', 1),
(47, '2017-08-30 17:41:33', 100, 'disk', 'onAfterAjaxActionCreateFolderWithSharing', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(48, '2017-08-30 17:41:33', 100, 'disk', 'onAfterAjaxActionAppendSharing', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(49, '2017-08-30 17:41:33', 100, 'disk', 'onAfterAjaxActionChangeSharingAndRights', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(50, '2017-08-30 17:41:33', 100, 'socialnetwork', 'OnSocNetLogDelete', 'main', '', 'CUserCounter', 'OnSocNetLogDelete', '', 1),
(51, '2017-08-30 17:41:33', 100, 'socialnetwork', 'OnSocNetLogCommentDelete', 'main', '', 'CUserCounter', 'OnSocNetLogCommentDelete', '', 1),
(52, '2017-08-30 17:41:33', 100, 'sale', 'OnSaleBasketItemSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogBasket', '', 2),
(53, '2017-08-30 17:41:33', 100, 'sale', 'OnSaleOrderSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrder', '', 2),
(54, '2017-08-30 17:41:33', 100, 'sale', 'OnSaleOrderPaid', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrderPayment', '', 2),
(55, '2017-08-30 17:41:35', 100, 'main', 'OnBuildGlobalMenu', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBuildGlobalMenu', '', 1),
(56, '2017-08-30 17:41:35', 100, 'main', 'OnBeforeProlog', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBeforeProlog', '', 1),
(58, '2017-08-30 17:41:36', 100, 'main', 'OnAdminInformerInsertItems', 'bitrixcloud', '', 'CBitrixCloudCDN', 'OnAdminInformerInsertItems', '', 1),
(59, '2017-08-30 17:41:36', 100, 'main', 'OnAdminInformerInsertItems', 'bitrixcloud', '', 'CBitrixCloudBackup', 'OnAdminInformerInsertItems', '', 1),
(60, '2017-08-30 17:41:36', 100, 'mobileapp', 'OnBeforeAdminMobileMenuBuild', 'bitrixcloud', '', 'CBitrixCloudMobile', 'OnBeforeAdminMobileMenuBuild', '', 1),
(61, '2017-08-30 17:41:36', 100, 'main', 'OnEventLogGetAuditTypes', 'clouds', '', 'CCloudStorage', 'GetAuditTypes', '', 1),
(62, '2017-08-30 17:41:36', 100, 'main', 'OnBeforeProlog', 'clouds', '', 'CCloudStorage', 'OnBeforeProlog', '', 1),
(63, '2017-08-30 17:41:36', 100, 'main', 'OnAdminListDisplay', 'clouds', '', 'CCloudStorage', 'OnAdminListDisplay', '', 1),
(64, '2017-08-30 17:41:36', 100, 'main', 'OnBuildGlobalMenu', 'clouds', '', 'CCloudStorage', 'OnBuildGlobalMenu', '', 1),
(65, '2017-08-30 17:41:36', 100, 'main', 'OnFileSave', 'clouds', '', 'CCloudStorage', 'OnFileSave', '', 1),
(66, '2017-08-30 17:41:36', 100, 'main', 'OnGetFileSRC', 'clouds', '', 'CCloudStorage', 'OnGetFileSRC', '', 1),
(67, '2017-08-30 17:41:36', 100, 'main', 'OnFileCopy', 'clouds', '', 'CCloudStorage', 'OnFileCopy', '', 1),
(68, '2017-08-30 17:41:36', 100, 'main', 'OnFileDelete', 'clouds', '', 'CCloudStorage', 'OnFileDelete', '', 1),
(69, '2017-08-30 17:41:36', 100, 'main', 'OnMakeFileArray', 'clouds', '', 'CCloudStorage', 'OnMakeFileArray', '', 1),
(70, '2017-08-30 17:41:36', 100, 'main', 'OnBeforeResizeImage', 'clouds', '', 'CCloudStorage', 'OnBeforeResizeImage', '', 1),
(71, '2017-08-30 17:41:36', 100, 'main', 'OnAfterResizeImage', 'clouds', '', 'CCloudStorage', 'OnAfterResizeImage', '', 1),
(72, '2017-08-30 17:41:36', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_AmazonS3', 'GetObjectInstance', '', 1),
(73, '2017-08-30 17:41:36', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_GoogleStorage', 'GetObjectInstance', '', 1),
(74, '2017-08-30 17:41:36', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_OpenStackStorage', 'GetObjectInstance', '', 1),
(75, '2017-08-30 17:41:36', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_RackSpaceCloudFiles', 'GetObjectInstance', '', 1),
(76, '2017-08-30 17:41:36', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_ClodoRU', 'GetObjectInstance', '', 1),
(77, '2017-08-30 17:41:36', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Selectel', 'GetObjectInstance', '', 1),
(78, '2017-08-30 17:41:36', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_HotBox', 'GetObjectInstance', '', 1),
(79, '2017-08-30 17:41:37', 1, 'main', 'OnPageStart', 'compression', '', 'CCompress', 'OnPageStart', '', 1),
(80, '2017-08-30 17:41:37', 10000, 'main', 'OnAfterEpilog', 'compression', '', 'CCompress', 'OnAfterEpilog', '', 1),
(81, '2017-08-30 17:41:37', 100, 'main', 'OnGroupDelete', 'fileman', '', 'CFileman', 'OnGroupDelete', '', 1),
(82, '2017-08-30 17:41:37', 100, 'main', 'OnPanelCreate', 'fileman', '', 'CFileman', 'OnPanelCreate', '', 1),
(83, '2017-08-30 17:41:37', 100, 'main', 'OnModuleUpdate', 'fileman', '', 'CFileman', 'OnModuleUpdate', '', 1),
(84, '2017-08-30 17:41:37', 100, 'main', 'OnModuleInstalled', 'fileman', '', 'CFileman', 'ClearComponentsListCache', '', 1),
(85, '2017-08-30 17:41:37', 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapGoogle', 'GetUserTypeDescription', '', 1),
(86, '2017-08-30 17:41:37', 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapYandex', 'GetUserTypeDescription', '', 1),
(87, '2017-08-30 17:41:37', 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyVideo', 'GetUserTypeDescription', '', 1),
(88, '2017-08-30 17:41:37', 100, 'main', 'OnUserTypeBuildList', 'fileman', '', 'CUserTypeVideo', 'GetUserTypeDescription', '', 1),
(89, '2017-08-30 17:41:37', 100, 'main', 'OnEventLogGetAuditTypes', 'fileman', '', 'CEventFileman', 'GetAuditTypes', '', 1),
(90, '2017-08-30 17:41:37', 100, 'main', 'OnEventLogGetAuditHandlers', 'fileman', '', 'CEventFileman', 'MakeFilemanObject', '', 1),
(91, '2017-08-30 17:41:38', 100, 'main', 'OnBeforeUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeAdd', '', 1),
(92, '2017-08-30 17:41:38', 100, 'main', 'OnAfterUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'onAfterUserTypeAdd', '', 1),
(93, '2017-08-30 17:41:38', 100, 'main', 'OnBeforeUserTypeDelete', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeDelete', '', 1),
(94, '2017-08-30 17:41:38', 100, 'main', 'OnUserTypeBuildList', 'highloadblock', '', 'CUserTypeHlblock', 'GetUserTypeDescription', '', 1),
(95, '2017-08-30 17:41:38', 100, 'iblock', 'OnIBlockPropertyBuildList', 'highloadblock', '', 'CIBlockPropertyDirectory', 'GetUserTypeDescription', '', 1),
(96, '2017-08-30 17:41:41', 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlock', 'OnGroupDelete', '', 1),
(97, '2017-08-30 17:41:41', 100, 'main', 'OnBeforeLangDelete', 'iblock', '', 'CIBlock', 'OnBeforeLangDelete', '', 1),
(98, '2017-08-30 17:41:41', 100, 'main', 'OnLangDelete', 'iblock', '', 'CIBlock', 'OnLangDelete', '', 1),
(99, '2017-08-30 17:41:41', 100, 'main', 'OnUserTypeRightsCheck', 'iblock', '', 'CIBlockSection', 'UserTypeRightsCheck', '', 1),
(100, '2017-08-30 17:41:41', 100, 'search', 'OnReindex', 'iblock', '', 'CIBlock', 'OnSearchReindex', '', 1),
(101, '2017-08-30 17:41:41', 100, 'search', 'OnSearchGetURL', 'iblock', '', 'CIBlock', 'OnSearchGetURL', '', 1),
(102, '2017-08-30 17:41:41', 100, 'main', 'OnEventLogGetAuditTypes', 'iblock', '', 'CIBlock', 'GetAuditTypes', '', 1),
(103, '2017-08-30 17:41:41', 100, 'main', 'OnEventLogGetAuditHandlers', 'iblock', '', 'CEventIBlock', 'MakeIBlockObject', '', 1),
(104, '2017-08-30 17:41:41', 200, 'main', 'OnGetRatingContentOwner', 'iblock', '', 'CRatingsComponentsIBlock', 'OnGetRatingContentOwner', '', 1),
(105, '2017-08-30 17:41:41', 100, 'main', 'OnTaskOperationsChanged', 'iblock', '', 'CIBlockRightsStorage', 'OnTaskOperationsChanged', '', 1),
(106, '2017-08-30 17:41:41', 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnGroupDelete', '', 1),
(107, '2017-08-30 17:41:41', 100, 'main', 'OnUserDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnUserDelete', '', 1),
(108, '2017-08-30 17:41:41', 100, 'perfmon', 'OnGetTableSchema', 'iblock', '', 'iblock', 'OnGetTableSchema', '', 1),
(109, '2017-08-30 17:41:41', 100, 'sender', 'OnConnectorList', 'iblock', '', '\\Bitrix\\Iblock\\SenderEventHandler', 'onConnectorListIblock', '', 1),
(110, '2017-08-30 17:41:41', 10, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDate', 'GetUserTypeDescription', '', 1),
(111, '2017-08-30 17:41:41', 20, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDateTime', 'GetUserTypeDescription', '', 1),
(112, '2017-08-30 17:41:41', 30, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyXmlID', 'GetUserTypeDescription', '', 1),
(113, '2017-08-30 17:41:41', 40, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyFileMan', 'GetUserTypeDescription', '', 1),
(114, '2017-08-30 17:41:41', 50, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyHTML', 'GetUserTypeDescription', '', 1),
(115, '2017-08-30 17:41:41', 60, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementList', 'GetUserTypeDescription', '', 1),
(116, '2017-08-30 17:41:41', 70, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySequence', 'GetUserTypeDescription', '', 1),
(117, '2017-08-30 17:41:41', 80, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementAutoComplete', 'GetUserTypeDescription', '', 1),
(118, '2017-08-30 17:41:41', 90, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySKU', 'GetUserTypeDescription', '', 1),
(119, '2017-08-30 17:41:41', 100, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySectionAutoComplete', 'GetUserTypeDescription', '', 1),
(120, '2017-08-30 17:41:43', 100, 'perfmon', 'OnGetTableSchema', 'perfmon', '', 'perfmon', 'OnGetTableSchema', '', 1),
(121, '2017-08-30 17:41:44', 100, 'main', 'OnChangePermissions', 'search', '', 'CSearch', 'OnChangeFilePermissions', '', 1),
(122, '2017-08-30 17:41:44', 100, 'main', 'OnChangeFile', 'search', '', 'CSearch', 'OnChangeFile', '', 1),
(123, '2017-08-30 17:41:44', 100, 'main', 'OnGroupDelete', 'search', '', 'CSearch', 'OnGroupDelete', '', 1),
(124, '2017-08-30 17:41:44', 100, 'main', 'OnLangDelete', 'search', '', 'CSearch', 'OnLangDelete', '', 1),
(125, '2017-08-30 17:41:44', 100, 'main', 'OnAfterUserUpdate', 'search', '', 'CSearchUser', 'OnAfterUserUpdate', '', 1),
(126, '2017-08-30 17:41:44', 100, 'main', 'OnUserDelete', 'search', '', 'CSearchUser', 'DeleteByUserID', '', 1),
(127, '2017-08-30 17:41:44', 100, 'cluster', 'OnGetTableList', 'search', '', 'search', 'OnGetTableList', '', 1),
(128, '2017-08-30 17:41:44', 100, 'perfmon', 'OnGetTableSchema', 'search', '', 'search', 'OnGetTableSchema', '', 1),
(129, '2017-08-30 17:41:44', 90, 'main', 'OnEpilog', 'search', '', 'CSearchStatistic', 'OnEpilog', '', 1),
(130, '2017-08-30 17:41:45', 100, 'main', 'OnPanelCreate', 'seo', '', 'CSeoEventHandlers', 'SeoOnPanelCreate', '', 2),
(131, '2017-08-30 17:41:45', 100, 'fileman', 'OnIncludeHTMLEditorScript', 'seo', '', 'CSeoEventHandlers', 'OnIncludeHTMLEditorScript', '', 2),
(132, '2017-08-30 17:41:45', 100, 'fileman', 'OnBeforeHTMLEditorScriptRuns', 'seo', '', 'CSeoEventHandlers', 'OnBeforeHTMLEditorScriptRuns', '', 2),
(133, '2017-08-30 17:41:45', 100, 'iblock', 'OnAfterIBlockSectionAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addSection', '', 2),
(134, '2017-08-30 17:41:45', 100, 'iblock', 'OnAfterIBlockElementAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addElement', '', 2),
(135, '2017-08-30 17:41:45', 100, 'iblock', 'OnBeforeIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteSection', '', 2),
(136, '2017-08-30 17:41:45', 100, 'iblock', 'OnBeforeIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteElement', '', 2),
(137, '2017-08-30 17:41:45', 100, 'iblock', 'OnAfterIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteSection', '', 2),
(138, '2017-08-30 17:41:45', 100, 'iblock', 'OnAfterIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteElement', '', 2),
(139, '2017-08-30 17:41:45', 100, 'iblock', 'OnBeforeIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateSection', '', 2),
(140, '2017-08-30 17:41:45', 100, 'iblock', 'OnBeforeIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateElement', '', 2),
(141, '2017-08-30 17:41:45', 100, 'iblock', 'OnAfterIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateSection', '', 2),
(142, '2017-08-30 17:41:45', 100, 'iblock', 'OnAfterIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateElement', '', 2),
(143, '2017-08-30 17:41:45', 100, 'forum', 'onAfterTopicAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'addTopic', '', 2),
(144, '2017-08-30 17:41:45', 100, 'forum', 'onAfterTopicUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'updateTopic', '', 2),
(145, '2017-08-30 17:41:45', 100, 'forum', 'onAfterTopicDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'deleteTopic', '', 2),
(146, '2017-08-30 17:41:45', 100, 'main', 'OnAdminIBlockElementEdit', 'seo', '', '\\Bitrix\\Seo\\AdvTabEngine', 'eventHandler', '', 2),
(147, '2017-08-30 17:41:45', 100, 'main', 'OnBeforeProlog', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'checkSession', '', 2),
(148, '2017-08-30 17:41:45', 100, 'sale', 'OnOrderSave', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onOrderSave', '', 2),
(149, '2017-08-30 17:41:45', 100, 'sale', 'OnBasketOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onBasketOrder', '', 2),
(150, '2017-08-30 17:41:45', 100, 'sale', 'onSalePayOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSalePayOrder', '', 2),
(151, '2017-08-30 17:41:45', 100, 'sale', 'onSaleDeductOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeductOrder', '', 2),
(152, '2017-08-30 17:41:45', 100, 'sale', 'onSaleDeliveryOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeliveryOrder', '', 2),
(153, '2017-08-30 17:41:45', 100, 'sale', 'onSaleStatusOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleStatusOrder', '', 2),
(154, '2017-08-30 17:41:45', 100, 'conversion', 'OnSetDayContextAttributes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onSetDayContextAttributes', '', 2),
(155, '2017-08-30 17:41:45', 100, 'conversion', 'OnGetAttributeTypes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onGetAttributeTypes', '', 2),
(156, '2017-08-30 17:41:45', 100, 'catalog', 'OnProductUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2),
(157, '2017-08-30 17:41:45', 100, 'catalog', 'OnProductSetAvailableUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2),
(158, '2017-08-30 17:41:45', 100, 'main', 'OnUserDelete', 'socialservices', '', 'CSocServAuthDB', 'OnUserDelete', '', 1),
(159, '2017-08-30 17:41:45', 100, 'timeman', 'OnAfterTMReportDailyAdd', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMReportDailyAdd', '', 1),
(160, '2017-08-30 17:41:45', 100, 'timeman', 'OnAfterTMDayStart', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMDayStart', '', 1),
(161, '2017-08-30 17:41:45', 100, 'timeman', 'OnTimeManShow', 'socialservices', '', 'CSocServEventHandlers', 'OnTimeManShow', '', 1),
(162, '2017-08-30 17:41:45', 100, 'main', 'OnFindExternalUser', 'socialservices', '', 'CSocServAuthDB', 'OnFindExternalUser', '', 1),
(163, '2017-08-30 17:41:45', 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkOldUser', '', 1),
(164, '2017-08-30 17:41:45', 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkAbandonedUser', '', 1),
(165, '2017-08-30 17:41:46', 100, 'main', 'OnPanelCreate', 'translate', '', 'CTranslateEventHandlers', 'TranslatOnPanelCreate', '', 1),
(172, '2017-09-01 18:29:50', 155, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeUrl', 'GetUserTypeDescription', '', 1),
(177, '2017-12-26 15:38:37', 154, 'main', 'OnUserTypeBuildList', 'fileman', '', '\\Bitrix\\Fileman\\UserField\\Address', 'getUserTypeDescription', '', 1),
(185, '2019-12-01 18:41:27', 100, 'iblock', 'OnIBlockPropertyBuildList', 'alsem.areas', '', '\\Alsem\\Areas\\IblockFieldHelper', 'GetUserTypeDescription', '', 1),
(186, '2019-12-01 18:41:27', 100, 'iblock', 'OnIBlockPropertyBuildList', 'alsem.areas', '', '\\Alsem\\Areas\\IblockFieldCustom', 'GetUserTypeDescription', '', 1),
(187, '2020-06-04 14:57:04', 100, 'main', 'OnEpilog', 'main', '', '\\Bitrix\\Main\\Composite\\Engine', 'onEpilog', '', 2),
(188, '2020-06-04 14:57:04', 100, 'main', 'OnLocalRedirect', 'main', '', '\\Bitrix\\Main\\Composite\\Engine', 'onEpilog', '', 2),
(189, '2020-06-04 14:57:04', 100, 'main', 'OnChangeFile', 'main', '', '\\Bitrix\\Main\\Composite\\Engine', 'onChangeFile', '', 2);
-- -----------------------------------
-- Dumping table b_numerator
-- -----------------------------------
DROP TABLE IF EXISTS `b_numerator`;
CREATE TABLE `b_numerator` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_numerator_sequence
-- -----------------------------------
DROP TABLE IF EXISTS `b_numerator_sequence`;
CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT 0,
  `KEY` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL,
  PRIMARY KEY (`NUMERATOR_ID`,`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_operation
-- -----------------------------------
DROP TABLE IF EXISTS `b_operation`;
CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_operation` VALUES
(1, 'edit_php', 'main', NULL, 'module'),
(2, 'view_own_profile', 'main', NULL, 'module'),
(3, 'edit_own_profile', 'main', NULL, 'module'),
(4, 'view_all_users', 'main', NULL, 'module'),
(5, 'view_groups', 'main', NULL, 'module'),
(6, 'view_tasks', 'main', NULL, 'module'),
(7, 'view_other_settings', 'main', NULL, 'module'),
(8, 'view_subordinate_users', 'main', NULL, 'module'),
(9, 'edit_subordinate_users', 'main', NULL, 'module'),
(10, 'edit_all_users', 'main', NULL, 'module'),
(11, 'edit_groups', 'main', NULL, 'module'),
(12, 'edit_tasks', 'main', NULL, 'module'),
(13, 'edit_other_settings', 'main', NULL, 'module'),
(14, 'cache_control', 'main', NULL, 'module'),
(15, 'lpa_template_edit', 'main', NULL, 'module'),
(16, 'view_event_log', 'main', NULL, 'module'),
(17, 'edit_ratings', 'main', NULL, 'module'),
(18, 'manage_short_uri', 'main', NULL, 'module'),
(19, 'fm_view_permission', 'main', NULL, 'file'),
(20, 'fm_view_file', 'main', NULL, 'file'),
(21, 'fm_view_listing', 'main', NULL, 'file'),
(22, 'fm_edit_existent_folder', 'main', NULL, 'file'),
(23, 'fm_create_new_file', 'main', NULL, 'file'),
(24, 'fm_edit_existent_file', 'main', NULL, 'file'),
(25, 'fm_create_new_folder', 'main', NULL, 'file'),
(26, 'fm_delete_file', 'main', NULL, 'file'),
(27, 'fm_delete_folder', 'main', NULL, 'file'),
(28, 'fm_edit_in_workflow', 'main', NULL, 'file'),
(29, 'fm_rename_file', 'main', NULL, 'file'),
(30, 'fm_rename_folder', 'main', NULL, 'file'),
(31, 'fm_upload_file', 'main', NULL, 'file'),
(32, 'fm_add_to_menu', 'main', NULL, 'file'),
(33, 'fm_download_file', 'main', NULL, 'file'),
(34, 'fm_lpa', 'main', NULL, 'file'),
(35, 'fm_edit_permission', 'main', NULL, 'file'),
(36, 'bitrixcloud_monitoring', 'bitrixcloud', NULL, 'module'),
(37, 'bitrixcloud_backup', 'bitrixcloud', NULL, 'module'),
(38, 'bitrixcloud_cdn', 'bitrixcloud', NULL, 'module'),
(39, 'clouds_browse', 'clouds', NULL, 'module'),
(40, 'clouds_upload', 'clouds', NULL, 'module'),
(41, 'clouds_config', 'clouds', NULL, 'module'),
(42, 'fileman_view_all_settings', 'fileman', '', 'module'),
(43, 'fileman_edit_menu_types', 'fileman', '', 'module'),
(44, 'fileman_add_element_to_menu', 'fileman', '', 'module'),
(45, 'fileman_edit_menu_elements', 'fileman', '', 'module'),
(46, 'fileman_edit_existent_files', 'fileman', '', 'module'),
(47, 'fileman_edit_existent_folders', 'fileman', '', 'module'),
(48, 'fileman_admin_files', 'fileman', '', 'module'),
(49, 'fileman_admin_folders', 'fileman', '', 'module'),
(50, 'fileman_view_permissions', 'fileman', '', 'module'),
(51, 'fileman_edit_all_settings', 'fileman', '', 'module'),
(52, 'fileman_upload_files', 'fileman', '', 'module'),
(53, 'fileman_view_file_structure', 'fileman', '', 'module'),
(54, 'fileman_install_control', 'fileman', '', 'module'),
(55, 'medialib_view_collection', 'fileman', '', 'medialib'),
(56, 'medialib_new_collection', 'fileman', '', 'medialib'),
(57, 'medialib_edit_collection', 'fileman', '', 'medialib'),
(58, 'medialib_del_collection', 'fileman', '', 'medialib'),
(59, 'medialib_access', 'fileman', '', 'medialib'),
(60, 'medialib_new_item', 'fileman', '', 'medialib'),
(61, 'medialib_edit_item', 'fileman', '', 'medialib'),
(62, 'medialib_del_item', 'fileman', '', 'medialib'),
(63, 'sticker_view', 'fileman', '', 'stickers'),
(64, 'sticker_edit', 'fileman', '', 'stickers'),
(65, 'sticker_new', 'fileman', '', 'stickers'),
(66, 'sticker_del', 'fileman', '', 'stickers'),
(67, 'hl_element_read', 'highloadblock', NULL, 'module'),
(68, 'hl_element_write', 'highloadblock', NULL, 'module'),
(69, 'hl_element_delete', 'highloadblock', NULL, 'module'),
(70, 'section_read', 'iblock', NULL, 'iblock'),
(71, 'element_read', 'iblock', NULL, 'iblock'),
(72, 'section_element_bind', 'iblock', NULL, 'iblock'),
(73, 'iblock_admin_display', 'iblock', NULL, 'iblock'),
(74, 'element_edit', 'iblock', NULL, 'iblock'),
(75, 'element_edit_price', 'iblock', NULL, 'iblock'),
(76, 'element_delete', 'iblock', NULL, 'iblock'),
(77, 'element_bizproc_start', 'iblock', NULL, 'iblock'),
(78, 'section_edit', 'iblock', NULL, 'iblock'),
(79, 'section_delete', 'iblock', NULL, 'iblock'),
(80, 'section_section_bind', 'iblock', NULL, 'iblock'),
(81, 'element_edit_any_wf_status', 'iblock', NULL, 'iblock'),
(82, 'iblock_edit', 'iblock', NULL, 'iblock'),
(83, 'iblock_delete', 'iblock', NULL, 'iblock'),
(84, 'iblock_rights_edit', 'iblock', NULL, 'iblock'),
(85, 'iblock_export', 'iblock', NULL, 'iblock'),
(86, 'section_rights_edit', 'iblock', NULL, 'iblock'),
(87, 'element_rights_edit', 'iblock', NULL, 'iblock'),
(88, 'seo_settings', 'seo', '', 'module'),
(89, 'seo_tools', 'seo', '', 'module');
-- -----------------------------------
-- Dumping table b_option
-- -----------------------------------
DROP TABLE IF EXISTS `b_option`;
CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ix_option` (`MODULE_ID`,`NAME`,`SITE_ID`),
  KEY `ix_option_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_option` VALUES
('main', 'rating_authority_rating', '2', NULL, NULL),
('main', 'rating_assign_rating_group_add', '1', NULL, NULL),
('main', 'rating_assign_rating_group_delete', '1', NULL, NULL),
('main', 'rating_assign_rating_group', '3', NULL, NULL),
('main', 'rating_assign_authority_group_add', '2', NULL, NULL),
('main', 'rating_assign_authority_group_delete', '2', NULL, NULL),
('main', 'rating_assign_authority_group', '4', NULL, NULL),
('main', 'rating_community_size', '1', NULL, NULL),
('main', 'rating_community_authority', '30', NULL, NULL),
('main', 'rating_vote_weight', '10', NULL, NULL),
('main', 'rating_normalization_type', 'auto', NULL, NULL),
('main', 'rating_normalization', '10', NULL, NULL),
('main', 'rating_count_vote', '10', NULL, NULL),
('main', 'rating_authority_weight_formula', 'Y', NULL, NULL),
('main', 'rating_community_last_visit', '90', NULL, NULL),
('main', 'rating_text_like_y', 'Нравится', NULL, NULL),
('main', 'rating_text_like_n', 'Не нравится', NULL, NULL),
('main', 'rating_text_like_d', 'Это нравится', NULL, NULL),
('main', 'rating_assign_type', 'auto', NULL, NULL),
('main', 'rating_vote_type', 'like', NULL, NULL),
('main', 'rating_self_vote', 'Y', NULL, NULL),
('main', 'rating_vote_show', 'Y', NULL, NULL),
('main', 'rating_vote_template', 'like', NULL, NULL),
('main', 'rating_start_authority', '3', NULL, NULL),
('main', 'PARAM_MAX_SITES', '0', NULL, NULL),
('main', 'PARAM_MAX_USERS', '0', NULL, NULL),
('main', 'distributive6', 'Y', NULL, NULL),
('main', '~new_license11_sign', 'Y', NULL, NULL),
('main', 'GROUP_DEFAULT_TASK', '1', NULL, NULL),
('main', 'vendor', '1c_bitrix', NULL, NULL),
('main', 'admin_lid', 'ru', NULL, NULL),
('main', 'update_site', 'www.bitrixsoft.com', NULL, NULL),
('main', 'update_site_ns', 'Y', NULL, NULL),
('main', 'optimize_css_files', 'Y', NULL, NULL),
('main', 'optimize_js_files', 'Y', NULL, NULL),
('main', 'admin_passwordh', 'FVoQcWYUBgYtCUVcABcOCgsTAQ==', NULL, NULL),
('main', 'server_uniq_id', '1b05d6b75c91b7c8b28102cba77c2141', NULL, NULL),
('fileman', 'use_editor_3', 'Y', NULL, NULL),
('search', 'version', 'v2.0', NULL, NULL),
('search', 'dbnode_id', 'N', NULL, NULL),
('search', 'dbnode_status', 'ok', NULL, NULL),
('socialservices', 'bitrix24net_domain', 'http://renewal.seostudio.ru', NULL, NULL),
('socialservices', 'bitrix24net_id', 'ext.59a6966a255822.72375289', NULL, NULL),
('socialservices', 'bitrix24net_secret', 'VMPb2pSDlejdxM7d1wYDge5ByZEodWKOai3ezjHHfATRhVu7qw', NULL, NULL),
('main', 'email_from', 'dev@dnext.ru', NULL, NULL),
('main', '~update_autocheck_result', 'a:4:{s:10:\"check_date\";i:1514291936;s:6:\"result\";b:0;s:5:\"error\";s:92:\"[LICENSE_NOT_ACTIVE_A] Закончился срок получения обновлений\";s:7:\"modules\";a:0:{}}', NULL, NULL),
('fileman', 'stickers_use_hotkeys', 'N', NULL, NULL),
('perfmon', 'bitrix_optimal', 'N', NULL, NULL),
('perfmon', 'total_mark_value', 'N/A', NULL, NULL),
('perfmon', 'total_mark_duration', '300', NULL, NULL),
('perfmon', 'mark_php_page_rate', '36.90', NULL, NULL),
('perfmon', 'mark_php_page_time', '0.0271', NULL, NULL),
('perfmon', 'mark_php_page_date', '18.03.2020 12:42:24', NULL, NULL),
('perfmon', 'end_time', '1504090507', NULL, NULL),
('perfmon', 'total_mark_hits', '0', NULL, NULL),
('perfmon', 'total_mark_time', '30.08.2017 17:55:08', NULL, NULL),
('main', 'signer_default_key', '1a8bab7c29e6f495bcd529877134cff5c41a7595bd78a509ab02191130a9e9c30f2c004b7a36a631251550b48d9dc9e39898286b777645dc8d0dc25aa2abdb62', NULL, NULL),
('main', 'site_checker_success', '', NULL, NULL),
('main', 'crc_code', 'TmxmZDNCU1huZA==', NULL, NULL),
('main', '~support_finish_date', '2019-08-10', NULL, NULL),
('main', '~PARAM_MAX_USERS', '1ef8a86809573f774acb89061e4f498704bb2618920f03743ba33f9ac5387a34.0', NULL, NULL),
('main', '~PARAM_MAX_SERVERS', '2', NULL, NULL),
('main', '~PARAM_COMPOSITE', 'N', NULL, NULL),
('main', '~PARAM_PHONE_SIP', 'N', NULL, NULL),
('main', '~PARAM_PARTNER_ID', '', NULL, NULL),
('main', 'update_system_check', '17.03.2020 19:16:44', NULL, NULL),
('main', '~new_license14_9_sign', 'Y', NULL, NULL),
('main', 'update_system_update', '26.12.2017 15:38:56', NULL, NULL),
('fileman', 'use_pspell', 'N', NULL, NULL),
('fileman', 'GROUP_DEFAULT_TASK', '18', NULL, NULL),
('fileman', 'default_edit', 'text', NULL, NULL),
('fileman', 'use_medialib', 'Y', NULL, NULL),
('fileman', 'replace_new_lines', 'Y', NULL, NULL),
('fileman', 'user_dics_path', '/bitrix/modules/fileman/u_dics', NULL, NULL),
('fileman', 'use_separeted_dics', 'N', NULL, NULL),
('fileman', 'use_custom_spell', 'N', NULL, NULL),
('fileman', 'ar_entities', 'none', NULL, NULL),
('fileman', 'editor_body_id', '', NULL, NULL),
('fileman', 'editor_body_class', '', NULL, NULL),
('fileman', 'ml_thumb_width', '140', NULL, NULL),
('fileman', 'ml_thumb_height', '105', NULL, NULL),
('fileman', 'ml_media_extentions', 'jpg,jpeg,gif,png,flv,mp4,wmv,wma,mp3,ppt', NULL, NULL),
('fileman', 'ml_max_width', '1024', NULL, NULL),
('fileman', 'ml_max_height', '1024', NULL, NULL),
('fileman', 'ml_media_available_ext', 'jpg,jpeg,gif,png,flv,mp4,wmv,wma,mp3,ppt,aac', NULL, NULL),
('fileman', 'ml_use_default', '1', NULL, NULL),
('fileman', '~script_files', 'php,php3,php4,php5,php6,phtml,pl,asp,aspx,cgi,exe,ico,shtm,shtml', NULL, NULL),
('fileman', '~allowed_components', '', NULL, NULL),
('fileman', 'different_set', 'N', NULL, NULL),
('fileman', 'num_menu_param', '1', NULL, NULL),
('fileman', 'menutypes', 'a:4:{s:3:\\\"top\\\";s:15:\\\"СЕО меню\\\";s:6:\\\"bottom\\\";s:21:\\\"Нижнее меню\\\";s:7:\\\"submenu\\\";s:14:\\\"Подменю\\\";s:6:\\\"hidden\\\";s:23:\\\"Скрытое меню\\\";}', NULL, NULL),
('fileman', 'propstypes', 'a:5:{s:11:\\\"description\\\";s:33:\\\"Описание страницы\\\";s:8:\\\"keywords\\\";s:27:\\\"Ключевые слова\\\";s:5:\\\"title\\\";s:27:\\\"Заголовок окна\\\";s:6:\\\"robots\\\";s:59:\\\"Параметры для поисковых роботов\\\";s:10:\\\"body_class\\\";s:24:\\\"Класс тега BODY\\\";}', NULL, NULL),
('fileman', 'search_max_open_file_size', '1024', NULL, NULL),
('fileman', 'search_max_res_count', '', NULL, NULL),
('fileman', 'search_time_step', '5', NULL, NULL),
('fileman', 'search_mask', '*.php', NULL, NULL),
('fileman', 'show_inc_icons', 'N', NULL, NULL),
('fileman', 'hide_physical_struc', '', NULL, NULL),
('fileman', 'use_translit', '1', NULL, NULL),
('fileman', 'use_translit_google', '1', NULL, NULL),
('fileman', 'log_menu', 'Y', NULL, NULL),
('fileman', 'log_page', 'Y', NULL, NULL),
('fileman', 'use_code_editor', 'Y', NULL, NULL),
('fileman', 'google_map_api_key', '', NULL, NULL),
('fileman', 'default_edit_groups', '', NULL, NULL),
('fileman', 'archive_step_time', '30', NULL, NULL),
('fileman', 'GROUP_DEFAULT_RIGHT', 'D', NULL, NULL),
('main', 'site_name', 'nuage-mob.dnext.ru', NULL, NULL),
('main', 'server_name', 'nuage-mob.dnext.ru', NULL, NULL),
('main', 'cookie_name', 'BITRIX_SM', NULL, NULL),
('main', 'ALLOW_SPREAD_COOKIE', 'Y', NULL, NULL),
('main', 'header_200', 'N', NULL, NULL),
('main', 'error_reporting', '85', NULL, NULL),
('main', 'use_hot_keys', 'Y', NULL, NULL),
('main', 'smile_gallery_id', '1', NULL, NULL),
('main', 'all_bcc', '', NULL, NULL),
('main', 'send_mid', 'N', NULL, NULL),
('main', 'fill_to_mail', 'N', NULL, NULL),
('main', 'CONVERT_UNIX_NEWLINE_2_WINDOWS', 'N', NULL, NULL),
('main', 'convert_mail_header', 'Y', NULL, NULL),
('main', 'attach_images', 'N', NULL, NULL),
('main', 'max_file_size', '0', NULL, NULL),
('main', 'mail_event_period', '14', NULL, NULL),
('main', 'mail_event_bulk', '5', NULL, NULL),
('main', 'mail_additional_parameters', '', NULL, NULL),
('main', 'disk_space', '', NULL, NULL),
('main', 'upload_dir', 'upload', NULL, NULL),
('main', 'save_original_file_name', 'Y', NULL, NULL),
('main', 'translit_original_file_name', 'Y', NULL, NULL),
('main', 'convert_original_file_name', 'Y', NULL, NULL),
('main', 'image_resize_quality', '95', NULL, NULL),
('main', 'bx_fast_download', 'N', NULL, NULL),
('main', 'profile_image_width', '', NULL, NULL),
('main', 'profile_image_height', '', NULL, NULL),
('main', 'profile_image_size', '', NULL, NULL),
('main', 'use_minified_assets', 'Y', NULL, NULL),
('main', 'move_js_to_body', 'Y', NULL, NULL),
('main', 'compres_css_js_files', 'Y', NULL, NULL),
('main', 'translate_key_yandex', '', NULL, NULL),
('main', 'use_time_zones', 'N', NULL, NULL),
('main', 'auto_time_zone', 'N', NULL, NULL),
('main', 'gather_catalog_stat', 'Y', NULL, NULL),
('main', 'map_top_menu_type', 'hidden,top,bottom', NULL, NULL),
('main', 'map_left_menu_type', 'submenu', NULL, NULL),
('main', 'url_preview_enable', 'N', NULL, NULL),
('main', 'url_preview_save_images', 'N', NULL, NULL),
('main', 'update_devsrv', 'Y', NULL, NULL),
('main', 'update_site_proxy_addr', '', NULL, NULL),
('main', 'update_site_proxy_port', '', NULL, NULL),
('main', 'update_site_proxy_user', '', NULL, NULL),
('main', 'update_site_proxy_pass', '', NULL, NULL),
('main', 'strong_update_check', 'Y', NULL, NULL),
('main', 'stable_versions_only', 'Y', NULL, NULL),
('main', 'update_autocheck', '', NULL, NULL),
('main', 'update_stop_autocheck', 'N', NULL, NULL),
('main', 'update_is_gzip_installed', 'Y', NULL, NULL),
('main', 'update_load_timeout', '30', NULL, NULL),
('main', 'store_password', 'Y', NULL, NULL),
('main', 'use_secure_password_cookies', 'N', NULL, NULL),
('main', 'auth_multisite', 'N', NULL, NULL),
('main', 'allow_socserv_authorization', 'Y', NULL, NULL),
('main', 'use_digest_auth', 'N', NULL, NULL),
('main', 'custom_register_page', '', NULL, NULL),
('main', 'auth_components_template', '', NULL, NULL),
('main', 'captcha_restoring_password', 'N', NULL, NULL),
('main', 'use_encrypted_auth', 'N', NULL, NULL),
('main', 'new_user_registration', 'N', NULL, NULL),
('main', 'captcha_registration', 'N', NULL, NULL),
('main', 'new_user_email_required', 'Y', NULL, NULL),
('main', 'new_user_registration_email_confirmation', 'N', NULL, NULL),
('main', 'new_user_registration_cleanup_days', '7', NULL, NULL),
('main', 'new_user_email_uniq_check', 'N', NULL, NULL),
('main', 'session_expand', 'Y', NULL, NULL),
('main', 'session_auth_only', 'Y', NULL, NULL),
('main', 'session_show_message', 'Y', NULL, NULL),
('main', 'event_log_cleanup_days', '21', NULL, NULL),
('main', 'event_log_logout', 'N', NULL, NULL),
('main', 'event_log_login_success', 'Y', NULL, NULL),
('main', 'event_log_login_fail', 'N', NULL, NULL),
('main', 'event_log_register', 'N', NULL, NULL),
('main', 'event_log_register_fail', 'N', NULL, NULL),
('main', 'event_log_password_request', 'N', NULL, NULL),
('main', 'event_log_password_change', 'N', NULL, NULL),
('main', 'event_log_user_edit', 'Y', NULL, NULL),
('main', 'event_log_user_delete', 'N', NULL, NULL),
('main', 'event_log_user_groups', 'N', NULL, NULL),
('main', 'event_log_group_policy', 'Y', NULL, NULL),
('main', 'event_log_module_access', 'Y', NULL, NULL),
('main', 'event_log_file_access', 'Y', NULL, NULL),
('main', 'event_log_task', 'Y', NULL, NULL),
('main', 'event_log_marketplace', 'Y', NULL, NULL),
('main', 'auth_controller_sso', 'N', NULL, NULL),
('main', 'show_panel_for_users', 'N;', NULL, NULL),
('main', 'hide_panel_for_users', 'N;', NULL, NULL),
('main', 'GROUP_DEFAULT_RIGHT', 'D', NULL, NULL),
('main', 'component_cache_on', 'N', NULL, NULL),
('main', 'component_managed_cache_on', 'Y', NULL, NULL),
('fgsoft.autoloader', 'checkConnectJquery', 'N', NULL, NULL),
('fgsoft.autoloader', 'checkAutoload', 'N', NULL, NULL),
('fgsoft.autoloader', 'checkPreloader', 'N', NULL, NULL),
('fgsoft.autoloader', 'ownPreloader', '', NULL, NULL),
('fgsoft.autoloader', 'checkTemplate', 'N', NULL, NULL),
('fgsoft.autoloader', 'tplElement1', '', NULL, NULL),
('fgsoft.autoloader', 'tplElement2', '', NULL, NULL),
('fgsoft.autoloader', 'tplElement5', '', NULL, NULL),
('fgsoft.autoloader', 'autoloadSize', '', NULL, NULL),
('fgsoft.autoloader', 'checkCoordsConsoleLog', 'N', NULL, NULL),
('fgsoft.autoloader', 'checkAjaxMode', 'Y', NULL, NULL),
('fgsoft.autoloader', 'checkStandartPagination', 'N', NULL, NULL),
('fgsoft.autoloader', 'ownButtonName', 'Больше статей', NULL, NULL),
('main', 'dump_bucket_id', '0', NULL, NULL),
('main', 'dump_encrypt', '0', NULL, NULL),
('main', 'dump_use_compression', '1', NULL, NULL),
('main', 'dump_max_exec_time', '20', NULL, NULL),
('main', 'dump_max_exec_time_sleep', '1', NULL, NULL),
('main', 'dump_archive_size_limit', '2146435072', NULL, NULL),
('main', 'dump_integrity_check', '1', NULL, NULL),
('main', 'dump_max_file_size', '0', NULL, NULL),
('main', 'dump_file_public', '0', NULL, NULL),
('main', 'dump_file_kernel', '0', NULL, NULL),
('main', 'dump_base', '1', NULL, NULL),
('main', 'dump_base_skip_stat', '1', NULL, NULL),
('main', 'dump_base_skip_search', '1', NULL, NULL),
('main', 'dump_base_skip_log', '1', NULL, NULL),
('main', 'skip_symlinks', '1', NULL, NULL),
('main', 'skip_mask', '1', NULL, NULL),
('main', 'dump_site_id', 'a:1:{i:0;s:2:\"ga\";}', NULL, NULL),
('main', '~show_composite_banner', 'N', NULL, NULL),
('main', 'dump_do_clouds', '0', NULL, NULL),
('perfmon', 'tables_show_time', '0', NULL, NULL),
('bitrixcloud', 'GROUP_DEFAULT_TASK', '12', NULL, NULL),
('clouds', 'GROUP_DEFAULT_TASK', '14', NULL, NULL),
('main', '~new_license17_5_sign', 'Y', NULL, NULL),
('main', '~ft_b_user', 'a:0:{}', NULL, NULL),
('main', 'last_files_count', '32161', NULL, NULL),
('main', 'skip_mask_array', 'a:5:{i:0;s:5:\"/.git\";i:1;s:6:\"/.idea\";i:2;s:13:\"/bitrix/cache\";i:3;s:21:\"/bitrix/managed_cache\";i:4;s:2:\"/m\";}', NULL, NULL),
('main', 'phone_number_default_country', '16', NULL, NULL),
('main', 'site_stopped', 'N', NULL, NULL),
('main', '~PARAM_FINISH_DATE', 'a3269a0d6493d990658d9a1bf56446b85b3da7c31a1308029ca8e0174de48ada.2019-08-10', NULL, NULL),
('main', '~new_license18_0_3_sign', 'Y', NULL, NULL),
('main', 'dump_temporary_cache', '4z0mpW85LRkD6BpoN67L9A==', NULL, NULL),
('main', 'dump_bucket_id_auto', '-1', NULL, NULL),
('main', 'dump_auto_time_auto', '180', NULL, NULL),
('main', 'dump_auto_interval_auto', '3', NULL, NULL),
('main', 'last_backup_start_time', '0', NULL, NULL),
('main', 'last_backup_end_time', '1565223308', NULL, NULL),
('main', 'backup_secret_key', '1vtOduwUXVULAXYr6Q334yPEiqiOem9q', NULL, NULL),
('main', 'dump_auto_enable_auto', '2', NULL, NULL),
('main', 'dump_site_id_auto', 'a:1:{i:0;s:2:\"a1\";}', NULL, NULL),
('main', 'dump_delete_old_auto', '1', NULL, NULL),
('main', 'dump_old_time_auto', '0', NULL, NULL),
('main', 'dump_old_cnt_auto', '0', NULL, NULL),
('main', 'dump_old_size_auto', '0', NULL, NULL),
('main', 'dump_integrity_check_auto', '1', NULL, NULL),
('main', 'dump_use_compression_auto', '0', NULL, NULL),
('main', 'dump_max_exec_time_auto', '20', NULL, NULL),
('main', 'dump_max_exec_time_sleep_auto', '3', NULL, NULL),
('main', 'dump_archive_size_limit_auto', '134217728', NULL, NULL),
('main', 'dump_do_clouds_auto', '0', NULL, NULL),
('main', 'dump_base_auto', '1', NULL, NULL),
('main', 'dump_base_skip_stat_auto', '1', NULL, NULL),
('main', 'dump_base_skip_search_auto', '1', NULL, NULL),
('main', 'dump_base_skip_log_auto', '1', NULL, NULL),
('main', 'dump_file_kernel_auto', '1', NULL, NULL),
('main', 'dump_file_public_auto', '1', NULL, NULL),
('main', 'skip_mask_auto', '0', NULL, NULL),
('main', 'skip_mask_array_auto', 'N;', NULL, NULL),
('main', 'dump_max_file_size_auto', '0', NULL, NULL),
('main', 'skip_symlinks_auto', '0', NULL, NULL),
('main', '~new_license18_0_sign', 'Y', NULL, NULL),
('main', 'mp_modules_date', 'a:2:{i:0;a:3:{s:2:\"ID\";s:11:\"alsem.areas\";s:4:\"NAME\";s:42:\"AlSe / Включаемые области\";s:3:\"TMS\";i:1575200487;}i:1;a:3:{s:2:\"ID\";s:16:\"sprint.migration\";s:4:\"NAME\";s:50:\"Миграции для разработчиков\";s:3:\"TMS\";i:1613383724;}}', NULL, NULL),
('alsem.areas', 'enable_set_setting_item', 'Y', NULL, NULL),
('perfmon', 'mark_php_cpu_value', '66.6', NULL, NULL),
('perfmon', 'mark_php_files_value', '2 858.5', NULL, NULL),
('perfmon', 'mark_php_mail_value', '0.0451', NULL, NULL),
('perfmon', 'mark_php_session_time_value', '0.0001', NULL, NULL),
('perfmon', 'mark_php_is_good', 'N', NULL, NULL),
('perfmon', 'mark_db_insert_value', '980', NULL, NULL),
('perfmon', 'mark_db_read_value', '11 219', NULL, NULL),
('perfmon', 'mark_db_update_value', '1 040', NULL, NULL),
('main', 'LAST_DB_OPTIMIZATION_TIME', '1591271786', NULL, NULL),
('sprint.migration', 'upgrade3_0cb1fbfb39557866ff1875c8228ecb05', '1', NULL, NULL),
('search', 'max_execution_time', '20', NULL, NULL),
('search', 'max_file_size', '', NULL, NULL),
('search', 'include_mask', '*.php;*.html;*.htm', NULL, NULL),
('search', 'exclude_mask', '/bitrix/*;/404.php;/upload/*;*/.hg/*;*/.svn/*;*/.git/*;*/cgi-bin/*;/bitrix_personal/*;/local/*', NULL, NULL),
('search', 'page_tag_property', 'tags', NULL, NULL),
('search', 'use_stemming', 'Y', NULL, NULL),
('search', 'agent_stemming', 'N', NULL, NULL),
('search', 'agent_duration', '2', NULL, NULL),
('search', 'full_text_engine', 'bitrix', NULL, NULL),
('search', 'letters', '-', NULL, NULL),
('search', 'sphinx_connection', '127.0.0.1:9306', NULL, NULL),
('search', 'sphinx_index_name', 'bitrix', NULL, NULL),
('search', 'sphinx_note', '', NULL, NULL),
('search', 'mysql_note', '', NULL, NULL),
('search', 'max_result_size', '500', NULL, NULL),
('search', 'use_tf_cache', 'N', NULL, NULL),
('search', 'use_word_distance', 'N', NULL, NULL),
('search', 'use_social_rating', 'N', NULL, NULL),
('search', 'suggest_save_days', '30', NULL, NULL),
('search', 'stat_phrase', 'Y', NULL, NULL),
('search', 'stat_phrase_save_days', '360', NULL, NULL),
('search', 'full_reindex_required', 'N', NULL, NULL);
-- -----------------------------------
-- Dumping table b_perf_cache
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_cache`;
CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BASE_DIR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `INIT_DIR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_PATH` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_cluster
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_cluster`;
CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_component
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_component`;
CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_error
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_error`;
CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERRFILE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERRLINE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_ERROR_0` (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_history
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_history`;
CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_perf_history` VALUES
(1, '2017-08-30 17:50:03', 120.97, 'Y'),
(2, '2018-08-08 22:25:11', 56.82, 'N'),
(3, '2018-11-14 15:04:03', 114.94, 'Y'),
(4, '2020-03-18 12:42:24', 36.9, 'Y');
-- -----------------------------------
-- Dumping table b_perf_hit
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_hit`;
CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_HIT_0` (`DATE_HIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_index_ban
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_index_ban`;
CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_index_complete
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_index_complete`;
CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_index_suggest
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_index_suggest`;
CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_index_suggest_sql
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_index_suggest_sql`;
CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL,
  `SQL_ID` int(11) NOT NULL,
  PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_sql
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_sql`;
CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_sql_backtrace
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_sql_backtrace`;
CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL,
  `NN` int(18) NOT NULL,
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SQL_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_tab_column_stat
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_tab_column_stat`;
CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_tab_stat
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_tab_stat`;
CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_perf_test
-- -----------------------------------
DROP TABLE IF EXISTS `b_perf_test`;
CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_perf_test` VALUES
(1, 2, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(2, 3, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(3, 4, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(4, 5, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(5, 6, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(6, 7, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(7, 8, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(8, 9, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(9, 10, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(10, 11, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(11, 12, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(12, 13, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(13, 14, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(14, 15, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(15, 16, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(16, 17, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(17, 18, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(18, 19, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(19, 20, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(20, 21, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(21, 22, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(22, 23, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(23, 24, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(24, 25, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(25, 26, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(26, 27, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(27, 28, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(28, 29, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(29, 30, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(30, 31, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(31, 32, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(32, 33, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(33, 34, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(34, 35, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(35, 36, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(36, 37, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(37, 38, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(38, 39, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(39, 40, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(40, 41, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(41, 42, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(42, 43, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(43, 44, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(44, 45, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(45, 46, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(46, 47, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(47, 48, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(48, 49, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(49, 50, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(50, 51, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(51, 52, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(52, 53, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(53, 54, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(54, 55, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(55, 56, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(56, 57, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(57, 58, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(58, 59, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(59, 60, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(60, 61, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(61, 62, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(62, 63, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(63, 64, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(64, 65, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(65, 66, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(66, 67, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(67, 68, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(68, 69, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(69, 70, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(70, 71, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(71, 72, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(72, 73, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(73, 74, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(74, 75, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(75, 76, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(76, 77, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(77, 78, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(78, 79, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(79, 80, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(80, 81, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(81, 82, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(82, 83, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(83, 84, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(84, 85, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(85, 86, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(86, 87, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(87, 88, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(88, 89, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(89, 90, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(90, 91, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(91, 92, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(92, 93, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(93, 94, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(94, 95, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(95, 96, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(96, 97, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(97, 98, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(98, 99, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(99, 100, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(100, 98, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(101, -1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(102, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(103, 1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(104, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(105, 3, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(106, 4, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(107, 5, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(108, 6, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(109, 7, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(110, 8, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(111, 9, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(112, 10, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(113, 11, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(114, 12, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(115, 13, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(116, 14, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(117, 15, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(118, 16, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(119, 17, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(120, 18, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(121, 19, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(122, 20, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(123, 21, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(124, 22, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(125, 23, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(126, 24, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(127, 25, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(128, 26, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(129, 27, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(130, 28, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(131, 29, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(132, 30, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(133, 31, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(134, 32, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(135, 33, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(136, 34, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(137, 35, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(138, 36, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(139, 37, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(140, 38, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(141, 39, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(142, 40, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(143, 41, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(144, 42, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(145, 43, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(146, 44, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(147, 45, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(148, 46, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(149, 47, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(150, 48, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(151, 49, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(152, 50, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(153, 51, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(154, 52, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(155, 53, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(156, 54, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(157, 55, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(158, 56, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(159, 57, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(160, 58, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(161, 59, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(162, 60, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(163, 61, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(164, 62, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(165, 63, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(166, 64, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(167, 65, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(168, 66, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(169, 67, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(170, 68, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(171, 69, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(172, 70, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(173, 71, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(174, 72, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(175, 73, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(176, 74, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(177, 75, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(178, 76, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(179, 77, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(180, 78, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(181, 79, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(182, 80, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(183, 81, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(184, 82, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(185, 83, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(186, 84, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(187, 85, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(188, 86, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(189, 87, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(190, 88, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(191, 89, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(192, 90, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(193, 91, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(194, 92, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(195, 93, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(196, 94, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(197, 95, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(198, 96, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(199, 97, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(200, 98, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(201, -1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(202, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(203, 1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(204, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(205, 3, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(206, 4, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(207, 5, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(208, 6, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(209, 7, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(210, 8, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(211, 9, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(212, 10, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(213, 11, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(214, 12, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(215, 13, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(216, 14, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(217, 15, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(218, 16, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(219, 17, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(220, 18, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(221, 19, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(222, 20, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(223, 21, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(224, 22, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(225, 23, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(226, 24, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(227, 25, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(228, 26, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(229, 27, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(230, 28, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(231, 29, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(232, 30, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(233, 31, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(234, 32, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(235, 33, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(236, 34, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(237, 35, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(238, 36, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(239, 37, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(240, 38, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(241, 39, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(242, 40, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(243, 41, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(244, 42, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(245, 43, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(246, 44, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(247, 45, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(248, 46, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(249, 47, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(250, 48, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(251, 49, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(252, 50, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(253, 51, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(254, 52, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(255, 53, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(256, 54, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(257, 55, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(258, 56, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(259, 57, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(260, 58, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(261, 59, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(262, 60, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(263, 61, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(264, 62, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(265, 63, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(266, 64, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(267, 65, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(268, 66, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(269, 67, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(270, 68, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(271, 69, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(272, 70, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(273, 71, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(274, 72, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(275, 73, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(276, 74, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(277, 75, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(278, 76, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(279, 77, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(280, 78, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(281, 79, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(282, 80, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(283, 81, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(284, 82, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(285, 83, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(286, 84, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(287, 85, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(288, 86, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(289, 87, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(290, 88, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(291, 89, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(292, 90, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(293, 91, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(294, 92, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(295, 93, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(296, 94, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(297, 95, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(298, 96, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(299, 97, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(300, 98, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(301, -1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(302, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(303, 1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(304, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(305, 3, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(306, 4, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(307, 5, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(308, 6, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(309, 7, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(310, 8, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(311, 9, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(312, 10, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(313, 11, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(314, 12, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(315, 13, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(316, 14, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(317, 15, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(318, 16, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(319, 17, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(320, 18, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(321, 19, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(322, 20, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(323, 21, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(324, 22, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(325, 23, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(326, 24, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(327, 25, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(328, 26, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(329, 27, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(330, 28, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(331, 29, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(332, 30, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(333, 31, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(334, 32, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(335, 33, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(336, 34, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(337, 35, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(338, 36, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(339, 37, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(340, 38, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(341, 39, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(342, 40, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(343, 41, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(344, 42, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(345, 43, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(346, 44, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(347, 45, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(348, 46, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(349, 47, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(350, 48, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(351, 49, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(352, 50, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(353, 51, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(354, 52, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(355, 53, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(356, 54, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(357, 55, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(358, 56, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(359, 57, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(360, 58, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(361, 59, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(362, 60, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(363, 61, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(364, 62, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(365, 63, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(366, 64, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(367, 65, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(368, 66, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(369, 67, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(370, 68, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(371, 69, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(372, 70, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(373, 71, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(374, 72, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(375, 73, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(376, 74, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(377, 75, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(378, 76, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(379, 77, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(380, 78, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(381, 79, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(382, 80, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(383, 81, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(384, 82, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(385, 83, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(386, 84, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(387, 85, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(388, 86, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(389, 87, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(390, 88, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(391, 89, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(392, 90, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(393, 91, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(394, 92, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(395, 93, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(396, 94, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(397, 95, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(398, 96, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(399, 97, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
(400, 98, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx');
-- -----------------------------------
-- Dumping table b_rating
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating`;
CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_rating` VALUES
(1, 'N', 'Рейтинг', 'USER', 'SUM', '2017-08-30 17:41:33', NULL, NULL, 'Y', 'N', 'N', 'a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),
(2, 'N', 'Авторитет', 'USER', 'SUM', '2017-08-30 17:41:33', NULL, NULL, 'Y', 'Y', 'N', 'a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:1:\"0\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:16:\"TODAY_TOPIC_COEF\";s:2:\"20\";s:15:\"WEEK_TOPIC_COEF\";s:2:\"10\";s:16:\"MONTH_TOPIC_COEF\";s:1:\"5\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}');
-- -----------------------------------
-- Dumping table b_rating_component
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_component`;
CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_component_results
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_component_results`;
CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_prepare
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_prepare`;
CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_results
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_results`;
CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT 0,
  `PREVIOUS_POSITION` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_rule
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_rule`;
CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_rating_rule` VALUES
(1, 'N', 'Добавление в группу пользователей, имеющих право голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}', 'ADD_TO_GROUP', 'a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2017-08-30 17:41:33', '2017-08-30 17:41:33', NULL);
INSERT INTO `b_rating_rule` VALUES
(2, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2017-08-30 17:41:33', '2017-08-30 17:41:33', NULL),
(3, 'N', 'Добавление в группу пользователей, имеющих право голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}', 'ADD_TO_GROUP', 'a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2017-08-30 17:41:33', '2017-08-30 17:41:33', NULL),
(4, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2017-08-30 17:41:33', '2017-08-30 17:41:33', NULL),
(5, 'Y', 'Автоматическое голосование за авторитет пользователя', 'USER', 'VOTE', NULL, 'CRatingRulesMain', 'voteCheck', 'a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.10000000000000001;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.10000000000000001;}}', 'empty', 'a:0:{}', 'N', 'empty', 'empty', 'N', 'empty ', 'empty', '2017-08-30 17:41:33', '2017-08-30 17:41:33', NULL);
-- -----------------------------------
-- Dumping table b_rating_rule_vetting
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_rule_vetting`;
CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_user
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_user`;
CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT 0.0000,
  `VOTE_WEIGHT` decimal(18,4) DEFAULT 0.0000,
  `VOTE_COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  KEY `IX_B_RAT_USER_2` (`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_rating_user` VALUES
(1, 2, 1, 3.0000, 30.0000, 13),
(2, 2, 2, 3.0000, 30.0000, 13),
(3, 2, 3, 3.0000, 30.0000, 13);
-- -----------------------------------
-- Dumping table b_rating_vote
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_vote`;
CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_vote_group
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_vote_group`;
CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`GROUP_ID`,`TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_rating_vote_group` VALUES
(1, 1, 'R'),
(2, 3, 'R'),
(3, 1, 'R'),
(4, 3, 'R'),
(5, 1, 'A'),
(6, 4, 'A');
-- -----------------------------------
-- Dumping table b_rating_voting
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_voting`;
CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_voting_prepare
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_voting_prepare`;
CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_voting_reaction
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_voting_reaction`;
CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rating_weight
-- -----------------------------------
DROP TABLE IF EXISTS `b_rating_weight`;
CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT 0.0000,
  `COUNT` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_rating_weight` VALUES
(1, -1000000.0000, 1000000.0000, 1.0000, 10);
-- -----------------------------------
-- Dumping table b_rest_ap
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_ap`;
CREATE TABLE `b_rest_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_ap_permission
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_ap_permission`;
CREATE TABLE `b_rest_ap_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_app
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_app`;
CREATE TABLE `b_rest_app` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_app_lang
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_app_lang`;
CREATE TABLE `b_rest_app_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_event
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_event`;
CREATE TABLE `b_rest_event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) DEFAULT 0,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  KEY `ix_b_rest_event_app_id` (`APP_ID`),
  KEY `ix_b_rest_event_event_name` (`EVENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_event_offline
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_event_offline`;
CREATE TABLE `b_rest_event_offline` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `MESSAGE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT_ADDITIONAL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROCESS_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ERROR` int(3) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_log
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_log`;
CREATE TABLE `b_rest_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp(),
  `CLIENT_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_placement
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_placement`;
CREATE TABLE `b_rest_placement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_stat
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_stat`;
CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT 0,
  `HOUR_1` int(11) NOT NULL DEFAULT 0,
  `HOUR_2` int(11) NOT NULL DEFAULT 0,
  `HOUR_3` int(11) NOT NULL DEFAULT 0,
  `HOUR_4` int(11) NOT NULL DEFAULT 0,
  `HOUR_5` int(11) NOT NULL DEFAULT 0,
  `HOUR_6` int(11) NOT NULL DEFAULT 0,
  `HOUR_7` int(11) NOT NULL DEFAULT 0,
  `HOUR_8` int(11) NOT NULL DEFAULT 0,
  `HOUR_9` int(11) NOT NULL DEFAULT 0,
  `HOUR_10` int(11) NOT NULL DEFAULT 0,
  `HOUR_11` int(11) NOT NULL DEFAULT 0,
  `HOUR_12` int(11) NOT NULL DEFAULT 0,
  `HOUR_13` int(11) NOT NULL DEFAULT 0,
  `HOUR_14` int(11) NOT NULL DEFAULT 0,
  `HOUR_15` int(11) NOT NULL DEFAULT 0,
  `HOUR_16` int(11) NOT NULL DEFAULT 0,
  `HOUR_17` int(11) NOT NULL DEFAULT 0,
  `HOUR_18` int(11) NOT NULL DEFAULT 0,
  `HOUR_19` int(11) NOT NULL DEFAULT 0,
  `HOUR_20` int(11) NOT NULL DEFAULT 0,
  `HOUR_21` int(11) NOT NULL DEFAULT 0,
  `HOUR_22` int(11) NOT NULL DEFAULT 0,
  `HOUR_23` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_rest_stat_method
-- -----------------------------------
DROP TABLE IF EXISTS `b_rest_stat_method`;
CREATE TABLE `b_rest_stat_method` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_stat_method` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_content
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT 0,
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BODY` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_content_freq
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT 0,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_content_param
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_content_right
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_content_site
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_content_stem
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- -----------------------------------
-- Creating empty table b_search_content_text
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_content_title
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- -----------------------------------
-- Dumping table b_search_custom_rank
-- -----------------------------------
DROP TABLE IF EXISTS `b_search_custom_rank`;
CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT 0,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_search_phrase
-- -----------------------------------
DROP TABLE IF EXISTS `b_search_phrase`;
CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_search_phrase` VALUES
(1, '2021-02-26 16:24:09', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'запись', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2021-02-26 16:24:15', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'записb', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2021-02-26 16:24:25', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'запис', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2021-02-26 16:24:34', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'записи', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2021-02-26 16:24:45', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'овуляция', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2021-02-26 16:24:54', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'овуляции', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2021-02-26 16:25:33', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'контрацептив', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2021-02-26 16:53:50', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'здоров', NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2021-02-26 17:18:37', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'наборам', NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2021-02-26 17:18:44', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'набору', NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2021-02-26 17:18:49', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'набор', NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2021-02-26 17:19:09', 'kf', 0, 0, 'c10f352762a813458cd2f252396b24af', 'наборe', NULL, NULL, NULL, NULL, NULL, NULL);
-- -----------------------------------
-- Creating empty table b_search_stem
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_stem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_suggest
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Creating empty table b_search_tags
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  KEY `IX_B_SEARCH_TAGS_0` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- -----------------------------------
-- Creating empty table b_search_user_right
-- -----------------------------------
CREATE TABLE IF NOT EXISTS `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_adv_autolog
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_adv_autolog`;
CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT 0,
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_adv_banner
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_adv_banner`;
CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_adv_campaign
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_adv_campaign`;
CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_adv_group
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_adv_group`;
CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_adv_link
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_adv_link`;
CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_adv_log
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_adv_log`;
CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_adv_order
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_adv_order`;
CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT 0,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_adv_region
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_adv_region`;
CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_region1` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_keywords
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_keywords`;
CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_search_engine
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_search_engine`;
CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT 100,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_seo_search_engine` VALUES
(1, 'google', 'Y', 200, 'Google', '868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com', 'EItMlJpZLC2WRPKB6QsA5bV9', 'urn:ietf:wg:oauth:2.0:oob', NULL),
(2, 'yandex', 'Y', 300, 'Yandex', 'f848c7bfc1d34a94ba6d05439f81bbd7', 'da0e73b2d9cc4e809f3170e49cb9df01', 'https://oauth.yandex.ru/verification_code', NULL),
(3, 'yandex_direct', 'Y', 400, 'Yandex.Direct', '', '', 'https://oauth.yandex.ru/verification_code', NULL);
-- -----------------------------------
-- Dumping table b_seo_service_log
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_service_log`;
CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_service_rtg_queue
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_service_rtg_queue`;
CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ACCOUNT_ID` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_service_webhook
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_service_webhook`;
CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_sitemap
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_sitemap`;
CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_sitemap_entity
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_sitemap_entity`;
CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_sitemap_iblock
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_sitemap_iblock`;
CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_sitemap_runtime
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_sitemap_runtime`;
CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_seo_yandex_direct_stat
-- -----------------------------------
DROP TABLE IF EXISTS `b_seo_yandex_direct_stat`;
CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT 0,
  `SUM_SEARCH` float DEFAULT 0,
  `SUM_CONTEXT` float DEFAULT 0,
  `CLICKS` int(7) DEFAULT 0,
  `CLICKS_SEARCH` int(7) DEFAULT 0,
  `CLICKS_CONTEXT` int(7) DEFAULT 0,
  `SHOWS` int(7) DEFAULT 0,
  `SHOWS_SEARCH` int(7) DEFAULT 0,
  `SHOWS_CONTEXT` int(7) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_short_uri
-- -----------------------------------
DROP TABLE IF EXISTS `b_short_uri`;
CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT 301,
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  KEY `ux_b_short_uri_2` (`URI_CRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_site_template
-- -----------------------------------
DROP TABLE IF EXISTS `b_site_template`;
CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT 500,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_site_template_site` (`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_site_template` VALUES
(55, 'kf', '', 1, 'komboflex'),
(57, 'a1', '', 1, 'nuage'),
(59, 'ga', '', 1, 'gasit');
-- -----------------------------------
-- Dumping table b_smile
-- -----------------------------------
DROP TABLE IF EXISTS `b_smile`;
CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT 0,
  `SORT` int(10) NOT NULL DEFAULT 150,
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT 0,
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_smile` VALUES
(1, 'S', 2, 100, ':) :-)', 'Y', 'N', 'bx_smile_smile.png', 'UHD', 20, 20),
(2, 'S', 2, 105, ';) ;-)', 'Y', 'N', 'bx_smile_wink.png', 'UHD', 20, 20),
(3, 'S', 2, 110, ':D :-D', 'Y', 'N', 'bx_smile_biggrin.png', 'UHD', 20, 20),
(4, 'S', 2, 115, '8) 8-)', 'Y', 'N', 'bx_smile_cool.png', 'UHD', 20, 20),
(5, 'S', 2, 120, ':facepalm:', 'Y', 'N', 'bx_smile_facepalm.png', 'UHD', 20, 20),
(6, 'S', 2, 125, ':{} :-{}', 'Y', 'N', 'bx_smile_kiss.png', 'UHD', 20, 20),
(7, 'S', 2, 130, ':( :-(', 'Y', 'N', 'bx_smile_sad.png', 'UHD', 20, 20),
(8, 'S', 2, 135, ':| :-|', 'Y', 'N', 'bx_smile_neutral.png', 'UHD', 20, 20),
(9, 'S', 2, 140, ':oops:', 'Y', 'N', 'bx_smile_redface.png', 'UHD', 20, 20),
(10, 'S', 2, 145, ':cry: :~(', 'Y', 'N', 'bx_smile_cry.png', 'UHD', 20, 20),
(11, 'S', 2, 150, ':evil: >:-<', 'Y', 'N', 'bx_smile_evil.png', 'UHD', 20, 20),
(12, 'S', 2, 155, ':o :-o :shock:', 'Y', 'N', 'bx_smile_eek.png', 'UHD', 20, 20),
(13, 'S', 2, 160, ':/ :-/', 'Y', 'N', 'bx_smile_confuse.png', 'UHD', 20, 20),
(14, 'S', 2, 165, ':idea:', 'Y', 'N', 'bx_smile_idea.png', 'UHD', 20, 20),
(15, 'S', 2, 170, ':?:', 'Y', 'N', 'bx_smile_question.png', 'UHD', 20, 20),
(16, 'S', 2, 175, ':!:', 'Y', 'N', 'bx_smile_exclaim.png', 'UHD', 20, 20),
(17, 'S', 2, 180, ':like:', 'Y', 'N', 'bx_smile_like.png', 'UHD', 20, 20),
(18, 'I', 2, 175, 'ICON_NOTE', 'Y', 'N', 'bx_icon_1.gif', 'SD', 15, 15),
(19, 'I', 2, 180, 'ICON_DIRRECTION', 'Y', 'N', 'bx_icon_2.gif', 'SD', 15, 15),
(20, 'I', 2, 185, 'ICON_IDEA', 'Y', 'N', 'bx_icon_3.gif', 'SD', 15, 15),
(21, 'I', 2, 190, 'ICON_ATTANSION', 'Y', 'N', 'bx_icon_4.gif', 'SD', 15, 15),
(22, 'I', 2, 195, 'ICON_QUESTION', 'Y', 'N', 'bx_icon_5.gif', 'SD', 15, 15),
(23, 'I', 2, 200, 'ICON_BAD', 'Y', 'N', 'bx_icon_6.gif', 'SD', 15, 15),
(24, 'I', 2, 205, 'ICON_GOOD', 'Y', 'N', 'bx_icon_7.gif', 'SD', 15, 15);
-- -----------------------------------
-- Dumping table b_smile_lang
-- -----------------------------------
DROP TABLE IF EXISTS `b_smile_lang`;
CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_smile_lang` VALUES
(1, 'P', 1, 'ru', 'Стандартная галерея'),
(2, 'P', 1, 'en', 'Standard gallery'),
(3, 'G', 2, 'ru', 'Основной набор'),
(4, 'G', 2, 'en', 'Default pack'),
(5, 'S', 1, 'ru', 'С улыбкой'),
(6, 'S', 1, 'en', 'Smile'),
(7, 'S', 2, 'ru', 'Шутливо'),
(8, 'S', 2, 'en', 'Wink'),
(9, 'S', 3, 'ru', 'Широкая улыбка'),
(10, 'S', 3, 'en', 'Big grin'),
(11, 'S', 4, 'ru', 'Здорово'),
(12, 'S', 4, 'en', 'Cool'),
(13, 'S', 5, 'ru', 'Разочарование'),
(14, 'S', 5, 'en', 'Facepalm'),
(15, 'S', 6, 'ru', 'Поцелуй'),
(16, 'S', 6, 'en', 'Kiss'),
(17, 'S', 7, 'ru', 'Печально'),
(18, 'S', 7, 'en', 'Sad'),
(19, 'S', 8, 'ru', 'Скептически'),
(20, 'S', 8, 'en', 'Skeptic'),
(21, 'S', 9, 'ru', 'Смущенный'),
(22, 'S', 9, 'en', 'Embarrassed'),
(23, 'S', 10, 'ru', 'Очень грустно'),
(24, 'S', 10, 'en', 'Crying'),
(25, 'S', 11, 'ru', 'Со злостью'),
(26, 'S', 11, 'en', 'Angry'),
(27, 'S', 12, 'ru', 'Удивленно'),
(28, 'S', 12, 'en', 'Surprised'),
(29, 'S', 13, 'ru', 'Смущенно'),
(30, 'S', 13, 'en', 'Confused'),
(31, 'S', 14, 'ru', 'Идея'),
(32, 'S', 14, 'en', 'Idea'),
(33, 'S', 15, 'ru', 'Вопрос'),
(34, 'S', 15, 'en', 'Question'),
(35, 'S', 16, 'ru', 'Восклицание'),
(36, 'S', 16, 'en', 'Exclamation'),
(37, 'S', 17, 'ru', 'Нравится'),
(38, 'S', 17, 'en', 'Like');
-- -----------------------------------
-- Dumping table b_smile_set
-- -----------------------------------
DROP TABLE IF EXISTS `b_smile_set`;
CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT 0,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT 150,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_smile_set` VALUES
(1, 'P', 0, 'bitrix', 150),
(2, 'G', 1, 'bitrix_main', 150);
-- -----------------------------------
-- Dumping table b_socialservices_ap
-- -----------------------------------
DROP TABLE IF EXISTS `b_socialservices_ap`;
CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_socialservices_contact
-- -----------------------------------
DROP TABLE IF EXISTS `b_socialservices_contact`;
CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact1` (`USER_ID`),
  KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_socialservices_contact_connect
-- -----------------------------------
DROP TABLE IF EXISTS `b_socialservices_contact_connect`;
CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT current_timestamp(),
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_socialservices_message
-- -----------------------------------
DROP TABLE IF EXISTS `b_socialservices_message`;
CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_socialservices_user
-- -----------------------------------
DROP TABLE IF EXISTS `b_socialservices_user`;
CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_socialservices_user_link
-- -----------------------------------
DROP TABLE IF EXISTS `b_socialservices_user_link`;
CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  KEY `ix_b_socialservices_user_link_7` (`LINK_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_sticker
-- -----------------------------------
DROP TABLE IF EXISTS `b_sticker`;
CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_sticker` VALUES
(1, 's1', '/', 'Главная', '2017-09-04 19:30:15', '2017-09-04 19:36:43', 1, 1, 'N', '[ST_TITLE]Иван Иванов 04.09.2017 19:30:10[/ST_TITLE]\nинфоблок + bitrix:news.list\nкастомный переключатель', 394, 577, 554, 165, 0, 'N', 'N', 'Y', 'N', 340, 120, 1621, 418, 's:5:\"false\";');
-- -----------------------------------
-- Dumping table b_sticker_group_task
-- -----------------------------------
DROP TABLE IF EXISTS `b_sticker_group_task`;
CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_task
-- -----------------------------------
DROP TABLE IF EXISTS `b_task`;
CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`),
  KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_task` VALUES
(1, 'main_denied', 'D', 'main', 'Y', NULL, 'module'),
(2, 'main_change_profile', 'P', 'main', 'Y', NULL, 'module'),
(3, 'main_view_all_settings', 'R', 'main', 'Y', NULL, 'module'),
(4, 'main_view_all_settings_change_profile', 'T', 'main', 'Y', NULL, 'module'),
(5, 'main_edit_subordinate_users', 'V', 'main', 'Y', NULL, 'module'),
(6, 'main_full_access', 'W', 'main', 'Y', NULL, 'module'),
(7, 'fm_folder_access_denied', 'D', 'main', 'Y', NULL, 'file'),
(8, 'fm_folder_access_read', 'R', 'main', 'Y', NULL, 'file'),
(9, 'fm_folder_access_write', 'W', 'main', 'Y', NULL, 'file'),
(10, 'fm_folder_access_full', 'X', 'main', 'Y', NULL, 'file'),
(11, 'fm_folder_access_workflow', 'U', 'main', 'Y', NULL, 'file'),
(12, 'bitrixcloud_deny', 'D', 'bitrixcloud', 'Y', NULL, 'module'),
(13, 'bitrixcloud_control', 'W', 'bitrixcloud', 'Y', NULL, 'module'),
(14, 'clouds_denied', 'D', 'clouds', 'Y', NULL, 'module'),
(15, 'clouds_browse', 'F', 'clouds', 'Y', NULL, 'module'),
(16, 'clouds_upload', 'U', 'clouds', 'Y', NULL, 'module'),
(17, 'clouds_full_access', 'W', 'clouds', 'Y', NULL, 'module'),
(18, 'fileman_denied', 'D', 'fileman', 'Y', '', 'module'),
(19, 'fileman_allowed_folders', 'F', 'fileman', 'Y', '', 'module'),
(20, 'fileman_full_access', 'W', 'fileman', 'Y', '', 'module'),
(21, 'medialib_denied', 'D', 'fileman', 'Y', '', 'medialib'),
(22, 'medialib_view', 'F', 'fileman', 'Y', '', 'medialib'),
(23, 'medialib_only_new', 'R', 'fileman', 'Y', '', 'medialib'),
(24, 'medialib_edit_items', 'V', 'fileman', 'Y', '', 'medialib'),
(25, 'medialib_editor', 'W', 'fileman', 'Y', '', 'medialib'),
(26, 'medialib_full', 'X', 'fileman', 'Y', '', 'medialib'),
(27, 'stickers_denied', 'D', 'fileman', 'Y', '', 'stickers'),
(28, 'stickers_read', 'R', 'fileman', 'Y', '', 'stickers'),
(29, 'stickers_edit', 'W', 'fileman', 'Y', '', 'stickers'),
(30, 'hblock_denied', 'D', 'highloadblock', 'Y', NULL, 'module'),
(31, 'hblock_read', 'R', 'highloadblock', 'Y', NULL, 'module'),
(32, 'hblock_write', 'W', 'highloadblock', 'Y', NULL, 'module'),
(33, 'iblock_deny', 'D', 'iblock', 'Y', NULL, 'iblock'),
(34, 'iblock_read', 'R', 'iblock', 'Y', NULL, 'iblock'),
(35, 'iblock_element_add', 'E', 'iblock', 'Y', NULL, 'iblock'),
(36, 'iblock_admin_read', 'S', 'iblock', 'Y', NULL, 'iblock'),
(37, 'iblock_admin_add', 'T', 'iblock', 'Y', NULL, 'iblock'),
(38, 'iblock_limited_edit', 'U', 'iblock', 'Y', NULL, 'iblock'),
(39, 'iblock_full_edit', 'W', 'iblock', 'Y', NULL, 'iblock'),
(40, 'iblock_full', 'X', 'iblock', 'Y', NULL, 'iblock'),
(41, 'seo_denied', 'D', 'seo', 'Y', '', 'module'),
(42, 'seo_edit', 'F', 'seo', 'Y', '', 'module'),
(43, 'seo_full_access', 'W', 'seo', 'Y', '', 'module');
-- -----------------------------------
-- Dumping table b_task_operation
-- -----------------------------------
DROP TABLE IF EXISTS `b_task_operation`;
CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL,
  PRIMARY KEY (`TASK_ID`,`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_task_operation` VALUES
(2, 2),
(2, 3),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 2),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(8, 19),
(8, 20),
(8, 21),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(10, 29),
(10, 30),
(10, 31),
(10, 32),
(10, 33),
(10, 34),
(10, 35),
(11, 19),
(11, 20),
(11, 21),
(11, 24),
(11, 28),
(13, 36),
(13, 37),
(13, 38),
(15, 39),
(16, 39),
(16, 40),
(17, 39),
(17, 40),
(17, 41),
(19, 44),
(19, 45),
(19, 46),
(19, 47),
(19, 48),
(19, 49),
(19, 50),
(19, 52),
(19, 53),
(20, 42),
(20, 43),
(20, 44),
(20, 45),
(20, 46),
(20, 47),
(20, 48),
(20, 49),
(20, 50),
(20, 51),
(20, 52),
(20, 53),
(20, 54),
(22, 55),
(23, 55),
(23, 56),
(23, 60),
(24, 55),
(24, 60),
(24, 61),
(24, 62),
(25, 55),
(25, 56),
(25, 57),
(25, 58),
(25, 60),
(25, 61),
(25, 62),
(26, 55),
(26, 56),
(26, 57),
(26, 58),
(26, 59),
(26, 60),
(26, 61),
(26, 62),
(28, 63),
(29, 63),
(29, 64),
(29, 65),
(29, 66),
(31, 67),
(32, 68),
(32, 69),
(34, 70),
(34, 71),
(35, 72),
(36, 70),
(36, 71),
(36, 73),
(37, 70),
(37, 71),
(37, 72),
(37, 73),
(38, 70),
(38, 71),
(38, 72),
(38, 73),
(38, 74),
(38, 75),
(38, 76),
(38, 77),
(39, 70),
(39, 71),
(39, 72),
(39, 73),
(39, 74),
(39, 75),
(39, 76),
(39, 77),
(39, 78),
(39, 79),
(39, 80),
(39, 81),
(40, 70),
(40, 71),
(40, 72),
(40, 73),
(40, 74),
(40, 75),
(40, 76),
(40, 77),
(40, 78),
(40, 79),
(40, 80),
(40, 81),
(40, 82),
(40, 83),
(40, 84),
(40, 85),
(40, 86),
(40, 87),
(42, 89),
(43, 88),
(43, 89);
-- -----------------------------------
-- Dumping table b_undo
-- -----------------------------------
DROP TABLE IF EXISTS `b_undo`;
CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_urlpreview_metadata
-- -----------------------------------
DROP TABLE IF EXISTS `b_urlpreview_metadata`;
CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTRA` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_URLPREVIEW_METADATA_URL` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_urlpreview_route
-- -----------------------------------
DROP TABLE IF EXISTS `b_urlpreview_route`;
CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROUTE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_user
-- -----------------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  KEY `ix_b_user_email` (`EMAIL`),
  KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  KEY `IX_B_USER_XML_ID` (`XML_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user` VALUES
(1, '2018-08-10 11:37:41', 'admin', 'QBGiNvk303ac933e9e1c15f1bb48727f9f72f64e', 'BRuduFMqc3f94bc1402d00857fc5f82dce9a4638', 'Y', 'admin', '', 'mail@mail.mail', '2021-06-18 14:08:02', '2017-08-30 17:41:56', 'a1', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', NULL, '', '', NULL, '', NULL, NULL, '2018-08-10 11:37:41', '', NULL, 0, NULL, '', NULL, NULL, '', '72384bf93d556206a9533f566fc51163', ''),
(2, '2018-06-22 16:33:44', 'content', 'A=1fv|3A5839778eae843df4c2d50a1a839fcf11', 'eDN7tBKGd7c5f7a2ae2e1a9e3c703f4fb56a810a', 'Y', '', '', 'web@medias.com.ua', '2018-07-03 16:32:22', '2018-06-21 14:05:15', 's1', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', NULL, '', '', NULL, '', NULL, NULL, '2018-06-22 16:33:44', '', NULL, 10, NULL, '', NULL, NULL, '', NULL, ''),
(3, '2020-07-31 16:23:09', 'developer', 'Be9T0i45ebe4ca85c3d6ba69f5d1fa93cd0eaad9', 'DyhFZpRK3e16c0f168c29e425abe40d3efa0db30', 'Y', '', '', 'dev@dnext.ru', '2021-09-03 15:12:26', '2020-07-31 16:23:09', 'a1', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', NULL, '', '', NULL, '', NULL, NULL, '2020-07-31 16:23:09', '', NULL, 0, NULL, '', NULL, NULL, '', '311e233b31a7177381c6c408effe98c4', '');
-- -----------------------------------
-- Dumping table b_user_access
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_access`;
CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  KEY `ix_ua_access` (`ACCESS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user_access` VALUES
(0, 'group', 'G2'),
(1, 'user', 'U1'),
(2, 'group', 'G1'),
(2, 'group', 'G3'),
(2, 'group', 'G4'),
(2, 'group', 'G2'),
(2, 'user', 'U2'),
(1, 'group', 'G1'),
(1, 'group', 'G3'),
(1, 'group', 'G4'),
(1, 'group', 'G2'),
(3, 'group', 'G1'),
(3, 'group', 'G3'),
(3, 'group', 'G4'),
(3, 'group', 'G2'),
(3, 'user', 'U3');
-- -----------------------------------
-- Dumping table b_user_access_check
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_access_check`;
CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user_access_check` VALUES
(1, 'group'),
(1, 'user'),
(2, 'group'),
(2, 'user'),
(3, 'group'),
(3, 'user');
-- -----------------------------------
-- Dumping table b_user_auth_action
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_auth_action`;
CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT 100,
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  KEY `ix_auth_action_date` (`ACTION_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_user_counter
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_counter`;
CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT 0,
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  KEY `ix_buc_tag` (`TAG`),
  KEY `ix_buc_code` (`CODE`),
  KEY `ix_buc_ts` (`TIMESTAMP_X`),
  KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_user_digest
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_digest`;
CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_user_field
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_field`;
CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user_field` VALUES
(1, 'HLBLOCK_1', 'UF_CITY_NAME', 'string', '', 100, 'N', 'N', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(2, 'HLBLOCK_2', 'UF_IMAGE_LINK', 'string', '', 100, 'N', 'N', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(3, 'HLBLOCK_3', 'UF_IMAGES', 'string', '', 100, 'N', 'N', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(4, 'HLBLOCK_3', 'UF_ELEMENT_CODE', 'string', '', 100, 'N', 'Y', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(5, 'HLBLOCK_4', 'UF_ELEMENT_CODE', 'string', '', 100, 'N', 'Y', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(6, 'HLBLOCK_4', 'UF_PARAMS', 'string', '', 100, 'N', 'N', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(7, 'HLBLOCK_4', 'UF_DEGREE', 'string', '', 100, 'N', 'Y', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(8, 'HLBLOCK_4', 'UF_SEL_PARAMS', 'string', '', 100, 'N', 'N', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(10, 'HLBLOCK_2', 'UF_CITYS', 'hlblock', '', 100, 'Y', 'N', 'N', 'Y', 'Y', 'N', 'a:5:{s:7:\"DISPLAY\";s:4:\"LIST\";s:11:\"LIST_HEIGHT\";i:5;s:10:\"HLBLOCK_ID\";i:1;s:10:\"HLFIELD_ID\";i:1;s:13:\"DEFAULT_VALUE\";i:0;}'),
(11, 'HLBLOCK_2', 'UF_PARTNER_NAME', 'string', '', 100, 'N', 'N', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:20;s:4:\"ROWS\";i:1;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}'),
(12, 'HLBLOCK_2', 'UF_COORD', 'string', '', 100, 'N', 'N', 'N', 'Y', 'Y', 'N', 'a:6:{s:4:\"SIZE\";i:100;s:4:\"ROWS\";i:5;s:6:\"REGEXP\";s:0:\"\";s:10:\"MIN_LENGTH\";i:0;s:10:\"MAX_LENGTH\";i:0;s:13:\"DEFAULT_VALUE\";s:0:\"\";}');
-- -----------------------------------
-- Dumping table b_user_field_confirm
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_field_confirm`;
CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_user_field_enum
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_field_enum`;
CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT 500,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_user_field_lang
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_field_lang`;
CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user_field_lang` VALUES
(1, 'en', 'City name', 'City name', 'City name', '', ''),
(1, 'ru', 'Название города', 'Название города', 'Название города', '', ''),
(2, 'en', 'Image link', 'Image link', 'Image link', '', ''),
(2, 'ru', 'Ссылка на рисунок', 'Ссылка на рисунок', 'Ссылка на рисунок', '', ''),
(3, 'en', 'Line images', 'Line images', 'Line images', '', ''),
(3, 'ru', 'Рисунки строк таблиц', 'Рисунки строк таблиц', 'Рисунки строк таблиц', '', ''),
(4, 'en', 'Element code', 'Element code', 'Element code', '', ''),
(4, 'ru', 'Код елемента', 'Код елемента', 'Код елемента', '', ''),
(5, 'en', 'Element code', 'Element code', 'Element code', '', ''),
(5, 'ru', 'Символьный код елемента', 'Символьный код елемента', 'Символьный код елемента', '', ''),
(6, 'en', 'Params', 'Params', 'Params', '', ''),
(6, 'ru', 'Параметры', 'Параметры', 'Параметры', '', ''),
(7, 'en', 'Degree', 'Degree', 'Degree', '', ''),
(7, 'ru', 'Cтепень', 'Cтепень', 'Cтепень', '', ''),
(8, 'en', 'Selected params', 'Selected params', 'Selected params', '', ''),
(8, 'ru', 'Выбранные параметры', 'Выбранные параметры', 'Выбранные параметры', '', ''),
(10, 'en', 'Города', 'Города', 'Города', 'Города', ''),
(10, 'ru', 'Города', 'Города', 'Города', 'Города', ''),
(11, 'en', 'Имя партнера', 'Имя партнера', 'Имя партнера', 'Имя партнера', 'Имя партнера'),
(11, 'ru', 'Имя партнера', 'Имя партнера', 'Имя партнера', 'Имя партнера', 'Имя партнера'),
(12, 'en', 'Координаты на карте', 'Координаты на карте', 'Координаты на карте', 'Координаты на карте', 'Координаты на карте'),
(12, 'ru', 'Координаты на карте', 'Координаты на карте', 'Координаты на карте', 'Координаты на карте', 'Координаты на карте');
-- -----------------------------------
-- Dumping table b_user_group
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_group`;
CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL,
  UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  KEY `ix_user_group_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user_group` VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL),
(2, 1, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(3, 1, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL);
-- -----------------------------------
-- Dumping table b_user_hit_auth
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_hit_auth`;
CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- -----------------------------------
-- Dumping table b_user_index
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_index`;
CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user_index` VALUES
(1, 'nqzva', '', 'nqzva', '', '', '', ''),
(2, '', '', '', '', '', '', ''),
(3, '', '', '', '', '', '', '');
-- -----------------------------------
-- Dumping table b_user_option
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_option`;
CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5486 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user_option` VALUES
(1, 0, 'intranet', '~gadgets_admin_index', 'a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}}}}', 'Y'),
(2, 1, 'admin_panel', 'settings', 'a:3:{s:4:\"edit\";s:3:\"off\";s:9:\"collapsed\";s:2:\"on\";s:3:\"fix\";s:2:\"on\";}', 'N'),
(3, 1, 'hot_keys', 'user_defined', 'b:1;', 'N'),
(4, 1, 'favorite', 'favorite_menu', 'a:1:{s:5:\"stick\";s:1:\"N\";}', 'N'),
(5, 1, 'main', 'helper_hero_admin', 'a:2:{s:4:\"time\";s:10:\"1557664233\";s:4:\"show\";s:1:\"Y\";}', 'N'),
(7, 1, 'socialservices', 'networkPopup', 'a:2:{s:9:\"showcount\";s:1:\"4\";s:8:\"dontshow\";s:1:\"Y\";}', 'N'),
(9, 1, 'admin_menu', 'pos', 'a:3:{s:8:\"sections\";s:205:\"menu_iblock_/nuage,iblock_admin,menu_iblock_%2Fnuage%2F8,menu_util,menu_system,backup,menu_users,menu_fileman,menu_fileman_file_a1_,menu_iblock_%2Fnuage%2F13,menu_module_settings,menu_iblock,menu_templates\";s:5:\"width\";s:3:\"333\";s:3:\"ver\";s:2:\"on\";}', 'N'),
(15, 1, 'fileman', 'code_editor', 'a:1:{s:5:\"theme\";s:4:\"dark\";}', 'N'),
(49, 1, 'checklist', 'autotest_start', 's:1:\"Y\";', 'N'),
(50, 1, 'checklist', 'show_hidden', 's:1:\"Y\";', 'N'),
(53, 0, 'checklist', 'autotest_start', 's:1:\"N\";', 'Y'),
(101, 1, 'html_editor', 'user_settings_', 'a:6:{s:4:\"view\";s:4:\"code\";s:14:\"split_vertical\";s:1:\"0\";s:13:\"taskbar_shown\";s:1:\"1\";s:16:\"link_dialog_type\";s:8:\"internal\";s:13:\"taskbar_width\";s:3:\"488\";s:12:\"specialchars\";s:149:\"&loz;|&there4;|&diams;|&cent;|&sect;|&euro;|&pound;|&yen;|&copy;|&reg;|&laquo;|&raquo;|&deg;|&plusmn;|&para;|&hellip;|&prime;|&Prime;|&trade;|&asymp;\";}', 'N'),
(135, 1, 'edit', 'tabControl_764bff41d686bebaac38e969710b706a', 'a:1:{s:6:\"expand\";s:3:\"off\";}', 'N'),
(171, 1, 'bx.windowmanager.9.5', 'size_/bitrix/admin/component_props.php', 'a:2:{s:5:\"width\";s:4:\"1374\";s:6:\"height\";s:3:\"691\";}', 'N'),
(178, 1, 'fileman', 'last_pathes', 's:424:\"a:10:{i:0;s:7:\"/bitrix\";i:1;s:41:\"/local/templates/mobile/assets/js/modules\";i:2;s:33:\"/local/templates/mobile/assets/js\";i:3;s:41:\"/local/templates/mobile/assets/js/plugins\";i:4;s:30:\"/local/templates/mobile/assets\";i:5;s:23:\"/local/templates/mobile\";i:6;s:16:\"/local/templates\";i:7;s:6:\"/local\";i:8;s:39:\"/local/templates/mobile/components/alse\";i:9;s:63:\"/local/templates/mobile/components/alse/iblockelement.form.ajax\";}\";', 'N'),
(196, 1, 'fileman', 'stickers_last_color', 'i:0;', 'N'),
(252, 1, 'fileman', 'file_dialog_config', 's:24:\"a1;/images;list;type;asc\";', 'N'),
(258, 1, 'bx.windowmanager.9.5', 'size_/bitrix/admin/public_file_edit.php', 'a:2:{s:5:\"width\";s:4:\"1274\";s:6:\"height\";s:3:\"723\";}', 'N'),
(263, 1, 'edit', 'admin_tabs', 'a:1:{s:7:\"fix_top\";s:2:\"on\";}', 'N'),
(268, 1, 'filter', 'tbl_hk_codes_filter', 'a:2:{s:4:\"rows\";s:1:\"0\";s:11:\"styleFolded\";s:1:\"N\";}', 'N'),
(297, 1, 'form', 'form_element_2', 'a:1:{s:4:\"tabs\";s:1853:\"edit1--#--Статья--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--*Начало активности--,--NAME--#--*Название--,--CODE--#--*Символьный код--,--SORT--#--Сортировка--;--edit5--#--Анонс--,--PREVIEW_PICTURE--#--*Картинка для анонса--,--PROPERTY_6--#--Дополнительное изображение--,--PREVIEW_TEXT--#--*Описание для анонса--;--edit6--#--Подробно--,--DETAIL_PICTURE--#--Детальная картинка--,--DETAIL_TEXT--#--Детальное описание--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--\";}', 'N'),
(299, 0, 'form', 'form_element_2', 'a:1:{s:4:\"tabs\";s:1853:\"edit1--#--Статья--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--*Начало активности--,--NAME--#--*Название--,--CODE--#--*Символьный код--,--SORT--#--Сортировка--;--edit5--#--Анонс--,--PREVIEW_PICTURE--#--*Картинка для анонса--,--PROPERTY_6--#--Дополнительное изображение--,--PREVIEW_TEXT--#--*Описание для анонса--;--edit6--#--Подробно--,--DETAIL_PICTURE--#--Детальная картинка--,--DETAIL_TEXT--#--Детальное описание--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--\";}', 'Y'),
(302, 1, 'html_editor', 'type_selector_PREVIEW_TEXT2', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(314, 1, 'bx.windowmanager.9.5', 'size_/bitrix/admin/public_file_edit_src.php', 'a:2:{s:5:\"width\";s:4:\"1190\";s:6:\"height\";s:3:\"487\";}', 'N'),
(322, 1, 'html_editor', 'type_selector_DETAIL_TEXT2', 'a:1:{s:4:\"type\";s:6:\"editor\";}', 'N'),
(364, 1, 'form', 'form_element_3', 'a:1:{s:4:\"tabs\";s:1629:\"edit1--#--Элемент--,--NAME--#--*Название--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--;--edit5--#--Анонс--,--PREVIEW_PICTURE--#--*Картинка для анонса--,--PREVIEW_TEXT--#--*Описание для анонса--;--edit6--#--Подробно--,--DETAIL_TEXT--#--*Детальное описание--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--\";}', 'N'),
(365, 0, 'form', 'form_element_3', 'a:1:{s:4:\"tabs\";s:1629:\"edit1--#--Элемент--,--NAME--#--*Название--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--;--edit5--#--Анонс--,--PREVIEW_PICTURE--#--*Картинка для анонса--,--PREVIEW_TEXT--#--*Описание для анонса--;--edit6--#--Подробно--,--DETAIL_TEXT--#--*Детальное описание--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--\";}', 'Y'),
(367, 1, 'edit', 'tabControl_8fb0db4f9d2e367f30fc091c1b096d08', 'a:1:{s:6:\"expand\";s:3:\"off\";}', 'N'),
(374, 1, 'form', 'form_element_4', 'a:1:{s:4:\"tabs\";s:1691:\"edit1--#--Элемент--,--NAME--#--*Название--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--;--edit5--#--Анонс--,--PREVIEW_PICTURE--#--*Картинка для анонса--,--PREVIEW_TEXT--#--*Описание для анонса--;--edit6--#--Подробно--,--DETAIL_TEXT--#--*Детальное описание--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--edit2--#--Разделы--,--SECTIONS--#--*Разделы--;--\";}', 'N'),
(375, 0, 'form', 'form_element_4', 'a:1:{s:4:\"tabs\";s:1691:\"edit1--#--Элемент--,--NAME--#--*Название--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--;--edit5--#--Анонс--,--PREVIEW_PICTURE--#--*Картинка для анонса--,--PREVIEW_TEXT--#--*Описание для анонса--;--edit6--#--Подробно--,--DETAIL_TEXT--#--*Детальное описание--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--edit2--#--Разделы--,--SECTIONS--#--*Разделы--;--\";}', 'Y'),
(376, 1, 'html_editor', 'type_selector_PREVIEW_TEXT4', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(386, 1, 'list', 'tbl_iblock_section_ab5603e60319b405c8a2bea7bcf8773d', 'a:4:{s:7:\"columns\";s:31:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(403, 1, 'html_editor', 'type_selector_DESCRIPTION', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(406, 1, 'form', 'form_element_5', 'a:1:{s:4:\"tabs\";s:368:\"edit1--#--Отзыв--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--*Дата отзыва--,--NAME--#--*Имя клиента--,--PROPERTY_3--#--Возраст клиента--,--PROPERTY_7--#--Город клиента--,--PROPERTY_8--#--Прикреплённый файл--,--SORT--#--Сортировка--,--DETAIL_TEXT--#--*Текст отзыва--;--\";}', 'N'),
(407, 0, 'form', 'form_element_5', 'a:1:{s:4:\"tabs\";s:368:\"edit1--#--Отзыв--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--*Дата отзыва--,--NAME--#--*Имя клиента--,--PROPERTY_3--#--Возраст клиента--,--PROPERTY_7--#--Город клиента--,--PROPERTY_8--#--Прикреплённый файл--,--SORT--#--Сортировка--,--DETAIL_TEXT--#--*Текст отзыва--;--\";}', 'Y'),
(410, 1, 'html_editor', 'type_selector_DETAIL_TEXT5', 'a:1:{s:4:\"type\";s:6:\"editor\";}', 'N'),
(420, 1, 'form', 'form_element_6', 'a:1:{s:4:\"tabs\";s:1635:\"edit1--#--Вопрос--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--*Дата вопроса--,--NAME--#--*Имя клиента--,--PROPERTY_4--#--Email клиента--,--PROPERTY_5--#--Телефон клиента--,--SORT--#--Сортировка--,--PREVIEW_TEXT--#--*Текст вопроса--;--edit6--#--Ответ--,--PROPERTY_2--#--Дата ответа--,--PROPERTY_1--#--Специалист--,--DETAIL_TEXT--#--Ответ--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--\";}', 'N'),
(421, 0, 'form', 'form_element_6', 'a:1:{s:4:\"tabs\";s:1635:\"edit1--#--Вопрос--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--*Дата вопроса--,--NAME--#--*Имя клиента--,--PROPERTY_4--#--Email клиента--,--PROPERTY_5--#--Телефон клиента--,--SORT--#--Сортировка--,--PREVIEW_TEXT--#--*Текст вопроса--;--edit6--#--Ответ--,--PROPERTY_2--#--Дата ответа--,--PROPERTY_1--#--Специалист--,--DETAIL_TEXT--#--Ответ--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--\";}', 'Y'),
(423, 1, 'edit', 'form_element_6_73da5711b1d311823f16c2780a3ea439', 'a:1:{s:6:\"expand\";s:3:\"off\";}', 'N'),
(425, 1, 'html_editor', 'type_selector_PREVIEW_TEXT6', 'a:1:{s:4:\"type\";s:6:\"editor\";}', 'N'),
(539, 1, 'main.interface.grid', 'tbl_user', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:59:\"LOGIN,ACTIVE,TIMESTAMP_X,NAME,LAST_NAME,EMAIL,LAST_LOGIN,ID\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(564, 1, 'bx.windowmanager.9.5', 'size_bx_component_properties_res', 'a:2:{s:5:\"width\";s:4:\"1370\";s:6:\"height\";s:3:\"677\";}', 'N'),
(652, 1, 'fileman', 'file_copy_move_config', 's:61:\"a:2:{s:7:\"advMode\";b:1;s:10:\"caseOption\";s:11:\"auto_rename\";}\";', 'N'),
(725, 1, 'form', 'form_element_7', 'a:1:{s:4:\"tabs\";s:1357:\"edit1--#--Слайд--,--ACTIVE--#--Активность--,--NAME--#--*Название--,--PREVIEW_PICTURE--#--*Изображение--,--SORT--#--Сортировка--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--\";}', 'N'),
(726, 0, 'form', 'form_element_7', 'a:1:{s:4:\"tabs\";s:1357:\"edit1--#--Слайд--,--ACTIVE--#--Активность--,--NAME--#--*Название--,--PREVIEW_PICTURE--#--*Изображение--,--SORT--#--Сортировка--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--\";}', 'Y'),
(747, 1, 'fileman', 'medialib_user_set', 's:9:\"600,450,2\";', 'N'),
(877, 1, 'php_command_line', 'query1', 's:643:\"//скрипт для прохождения монитора качества\n$reportId = 1;\n\ninclude_once($_SERVER[\"DOCUMENT_ROOT\"] . \"/bitrix/modules/main/classes/general/checklist.php\");\n\n$checklist = new CCheckList($reportId);\n\n$successStatus = \"A\";\n$comment = \"Выполнено\";\n\n$arStructure = $checklist->GetStructure();\n$arPoints = $checklist->GetPoints();\n\nforeach($arPoints as $pointId => $arPoint){\n    $arPointFields = array();\n\n    $arPointFields[\"COMMENTS\"][\"PERFOMER\"] = $comment;\n    $arPointFields[\"STATUS\"] = $successStatus;\n\n    $checklist->PointUpdate($pointId, $arPointFields);\n}\n$checklist->Save();\n\necho \"completed\";\";', 'N'),
(1032, 1, 'main.interface.grid', 'MAIN_USER_CONSENT_AGREEMENT_GRID', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:21:\"DATE_INSERT,NAME,TYPE\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(1063, 1, 'fileman', 'medialib_def_type', 's:1:\"1\";', 'N'),
(1249, 1, 'filter', 'tbl_iblock_element_59b628338ca629352f69134820f1dbf0_filter', 'a:1:{s:4:\"rows\";s:6:\"miss-0\";}', 'N'),
(1254, 1, 'list', 'tbl_iblock_element_b7d3215a9c5d7a3446fc85e1a5877fc2', 'a:4:{s:7:\"columns\";s:47:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,PREVIEW_PICTURE\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(1255, 0, 'list', 'tbl_iblock_element_b7d3215a9c5d7a3446fc85e1a5877fc2', 'a:4:{s:7:\"columns\";s:47:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,PREVIEW_PICTURE\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'Y'),
(1305, 1, 'list', 'tbl_iblock_element_59b628338ca629352f69134820f1dbf0', 'a:4:{s:7:\"columns\";s:31:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(1421, 1, 'php_command_line', 'count', 'i:4;', 'N'),
(1426, 1, 'edit', 'editTab_e805829078342bb0f793b2d6f76654c3', 'a:1:{s:6:\"expand\";s:3:\"off\";}', 'N'),
(1431, 1, 'perfmon', 'last_tables', 's:7:\"b_event\";', 'N'),
(1467, 1, 'html_editor', 'type_selector_MESSAGE', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(1471, 1, 'html_editor', 'type_selector_DETAIL_TEXT6', 'a:1:{s:4:\"type\";s:6:\"editor\";}', 'N'),
(1571, 1, 'main.interface.grid', 'tbl_iblock_admin_9a0364b9e99bb480dd25e1f0284c8555', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(1729, 1, 'main.interface.grid', 'tbl_iblock_9a0364b9e99bb480dd25e1f0284c8555', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:52:\"NAME,SORT,ACTIVE,CODE,ELEMENT_CNT,LID,TIMESTAMP_X,ID\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:12:\"custom_names\";N;}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(1730, 1, 'main.interface.grid', 'tbl_iblock_6a992d5529f459a44fee58c733255e86', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:64:\"NAME,SORT,ACTIVE,CODE,ELEMENT_CNT,SECTION_CNT,LID,TIMESTAMP_X,ID\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:12:\"custom_names\";N;}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(1880, 1, 'main', 'fileinput', 'a:2:{s:4:\"mode\";s:9:\"mode-pict\";s:10:\"frameFiles\";s:1:\"Y\";}', 'N'),
(1914, 1, 'filter', 'tbl_fileman_admin_filter', 'a:1:{s:11:\"styleFolded\";s:1:\"N\";}', 'N'),
(2050, 1, 'main.interface.grid', 'tbl_iblock_admin_46f059771c7236adc7640e4961dc5679', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(2087, 2, 'hot_keys', 'user_defined', 'b:1;', 'N'),
(2088, 2, 'favorite', 'favorite_menu', 'a:1:{s:5:\"stick\";s:1:\"N\";}', 'N'),
(2089, 2, 'main', 'helper_hero_admin', 'a:2:{s:4:\"time\";s:10:\"1529924831\";s:4:\"show\";s:1:\"Y\";}', 'N'),
(2091, 2, 'socialservices', 'networkPopup', 'a:1:{s:9:\"showcount\";s:2:\"19\";}', 'N'),
(2093, 2, 'main.interface.grid', 'tbl_iblock_9a0364b9e99bb480dd25e1f0284c8555', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(2094, 2, 'main.interface.grid', 'tbl_iblock_46f059771c7236adc7640e4961dc5679', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(2095, 2, 'admin_menu', 'pos', 'a:3:{s:8:\"sections\";s:87:\"menu_iblock_/nuage,menu_iblock_%2Fnuage%2F8,menu_system,menu_fileman,menu_fileman_file_\";s:5:\"width\";s:3:\"435\";s:3:\"ver\";s:2:\"on\";}', 'N'),
(2097, 2, 'fileman', 'last_pathes', 's:376:\"a:10:{i:0;s:18:\"/include/advateges\";i:1;s:8:\"/include\";i:2;s:8:\"/produkt\";i:3;s:16:\"/include/mission\";i:4;s:13:\"/include/menu\";i:5;s:13:\"/include/main\";i:6;s:16:\"/include/consist\";i:7;s:66:\"/local/templates/nuage/components/bitrix/main.include/m_nuage_main\";i:8;s:53:\"/local/templates/nuage/components/bitrix/main.include\";i:9;s:40:\"/local/templates/nuage/components/bitrix\";}\";', 'N'),
(2101, 2, 'fileman', 'code_editor', 'a:2:{s:5:\"theme\";s:5:\"light\";s:9:\"highlight\";s:1:\"1\";}', 'N'),
(2142, 2, 'main.interface.grid', 'tbl_iblock_6a992d5529f459a44fee58c733255e86', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(2145, 2, 'admin_panel', 'settings', 'a:1:{s:4:\"edit\";s:3:\"off\";}', 'N'),
(2151, 1, 'form', 'form_element_8', 'a:1:{s:4:\"tabs\";s:2735:\"edit1--#--Элемент--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--Начало активности--,--ACTIVE_TO--#--Окончание активности--,--NAME--#--*Название--,--CODE--#--Символьный код--,--PROPERTY_81--#--Ид ютеки--,--SORT--#--Сортировка--,--IBLOCK_ELEMENT_PROP_VALUE--#----Значения свойств--,--PROPERTY_9--#--Рисунок списка--,--PROPERTY_10--#--Суб название--,--PROPERTY_12--#--Особенности рисунок--,--PROPERTY_11--#--Особенности--,--PROPERTY_19--#--Длина--,--PROPERTY_18--#--Толщина--,--PROPERTY_13--#--Капли--,--PROPERTY_33--#--Клас рисунка капель--,--PROPERTY_24--#--Описание заголовок--,--PROPERTY_23--#--Описание рисунок--,--PROPERTY_25--#--Описание текст--,--PROPERTY_16--#--Передзагрузка рисунок--,--PROPERTY_20--#--Поверхность--,--PROPERTY_28--#--Поверхность рисунок--,--PROPERTY_17--#--Рисунок продукта 360--,--PROPERTY_14--#--Рисунок стрелки--,--PROPERTY_15--#--Рисунок увеличения--,--PROPERTY_21--#--Сетка--,--PROPERTY_29--#--Сетка рисунок--,--PROPERTY_26--#--Увеличение задний рисунок--,--PROPERTY_22--#--Штук--,--PROPERTY_27--#--Текст сравнения--,--PREVIEW_TEXT--#--Описание для анонса--;--cedit1--#--Мобильный шаблон--,--PREVIEW_PICTURE--#--Картинка для анонса--,--PROPERTY_56--#--Ширина картинки для анонса (600 по-умолчанию)--,--PROPERTY_57--#--Высота картинки для анонса (400 по-умолчанию)--,--PROPERTY_52--#--Галерея для мобильной страницы--,--PROPERTY_51--#--Класс для стрелок в мобильной версии--,--PROPERTY_53--#--Особенности рисунок--,--PROPERTY_54--#--Особенности подзаголовок--,--PROPERTY_55--#--Особенности текст--;--edit14--#--SEO--,--PROPERTY_47--#--Seo h1--,--PROPERTY_41--#--Seo title--,--PROPERTY_42--#--Seo description--,--PROPERTY_48--#--Seo h1(страница сравнение)--,--PROPERTY_43--#--Seo title(страница сравнение)--,--PROPERTY_44--#--Seo description(страница сравнение)--,--PROPERTY_49--#--Seo h1(страница состав)--,--PROPERTY_45--#--Seo title(страница состав)--,--PROPERTY_46--#--Seo description(страница состав)--;--\";}', 'N'),
(2153, 1, 'html_editor', 'type_selector_PREVIEW_TEXT8', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2155, 1, 'list', 'tbl_iblock_element_c83e01ea3b6b631fe36a4524177acf8a', 'a:4:{s:7:\"columns\";s:300:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,CODE,PREVIEW_TEXT,PROPERTY_19,PROPERTY_13,PROPERTY_24,PROPERTY_23,PROPERTY_25,PROPERTY_11,PROPERTY_12,PROPERTY_16,PROPERTY_20,PROPERTY_28,PROPERTY_17,PROPERTY_9,PROPERTY_14,PROPERTY_15,PROPERTY_21,PROPERTY_29,PROPERTY_10,PROPERTY_27,PROPERTY_18,PROPERTY_26,PROPERTY_22\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(2185, 1, 'filter', 'tbl_nuage_partners_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(2186, 1, 'filter', 'tbl_tabe_compare_images_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(2188, 1, 'filter', 'tbl_tabe_compare_params_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(2197, 1, 'filter', 'tbl_nuage_city_list_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(2246, 1, 'form', 'form_element_9', 'a:1:{s:4:\"tabs\";s:158:\"edit1--#--Элемент--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--*Вопрос--,--PREVIEW_TEXT--#--Ответ--;--\";}', 'N'),
(2248, 1, 'form', 'form_element_10', 'a:1:{s:4:\"tabs\";s:271:\"edit1--#--Элемент--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--*Название--,--PREVIEW_PICTURE--#--*Аватар--,--PROPERTY_30--#--Кто--,--PROPERTY_32--#--Фидбек група--,--PREVIEW_TEXT--#--Отзыв--;--\";}', 'N'),
(2255, 1, 'html_editor', 'type_selector_PROP_25__510__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(2257, 1, 'html_editor', 'type_selector_PROP_25__509__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(2258, 1, 'html_editor', 'type_selector_PROP_25__508__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(2272, 2, 'html_editor', 'type_selector_PROP_25__669__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2276, 2, 'html_editor', 'type_selector_PREVIEW_TEXT8', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2293, 2, 'html_editor', 'type_selector_PROP_11__502__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2295, 2, 'html_editor', 'type_selector_PROP_11__503__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2344, 2, 'html_editor', 'type_selector_PROP_25__575__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2346, 2, 'html_editor', 'type_selector_PROP_25__576__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2348, 2, 'html_editor', 'type_selector_PROP_25__574__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2353, 2, 'html_editor', 'type_selector_PROP_25__573__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2357, 2, 'html_editor', 'type_selector_PROP_25__546__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2359, 2, 'html_editor', 'type_selector_PROP_25__547__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2361, 2, 'html_editor', 'type_selector_PROP_25__548__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2378, 2, 'html_editor', 'type_selector_PROP_11__527__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2380, 2, 'html_editor', 'type_selector_PROP_11__528__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2387, 1, 'html_editor', 'type_selector_PROP_11__527__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2587, 1, 'html_editor', 'type_selector_PROP_11__502__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2621, 2, 'html_editor', 'type_selector_PROP_25__694__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2622, 2, 'html_editor', 'type_selector_PROP_25__693__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2623, 2, 'html_editor', 'type_selector_PROP_25__692__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2628, 2, 'html_editor', 'type_selector_PROP_11__504__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(2632, 2, 'html_editor', 'type_selector_PROP_25__n4__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2649, 1, 'html_editor', 'type_selector_PROP_11__503__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(2961, 1, 'html_editor', 'type_selector_PROP_11__504__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(3081, 2, 'html_editor', 'type_selector_PROP_11__616__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3083, 2, 'html_editor', 'type_selector_PROP_11__617__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3085, 2, 'html_editor', 'type_selector_PROP_11__618__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3089, 2, 'html_editor', 'type_selector_PROP_25__640__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3093, 2, 'html_editor', 'type_selector_PROP_25__641__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3098, 2, 'html_editor', 'type_selector_PROP_25__642__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3116, 2, 'html_editor', 'type_selector_PROP_25__609__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3119, 2, 'html_editor', 'type_selector_PROP_25__610__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3121, 2, 'html_editor', 'type_selector_PROP_25__608__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3139, 2, 'html_editor', 'user_settings_', 'a:3:{s:4:\"view\";s:4:\"code\";s:13:\"taskbar_shown\";s:1:\"1\";s:13:\"taskbar_width\";s:2:\"20\";}', 'N'),
(3244, 2, 'html_editor', 'type_selector_PROP_25__666__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3338, 2, 'html_editor', 'type_selector_PROP_11__582__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3347, 2, 'html_editor', 'type_selector_PROP_11__645__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3348, 2, 'html_editor', 'type_selector_PROP_11__554__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3349, 2, 'html_editor', 'type_selector_PROP_11__555__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(3409, 1, 'main.interface.grid', 'tbl_iblock_admin_6a992d5529f459a44fee58c733255e86', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(3444, 1, 'access_dialog_recent', 'group', 'a:3:{i:0;s:2:\"G1\";i:1;s:2:\"G3\";i:2;s:2:\"G4\";}', 'N'),
(3455, 1, 'intranet', '~gadgets_admin_index', 'a:1:{i:0;a:1:{s:7:\"GADGETS\";a:0:{}}}', 'N'),
(3525, 1, 'main.interface.grid', 'tbl_iblock_46f059771c7236adc7640e4961dc5679', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(3754, 1, 'html_editor', 'type_selector_PREVIEW_TEXT10', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(3869, 1, 'php_command_line', 'query3', 's:318:\"if (mail(\"andrew@dops.digital\",\"test subject\", \"test body\",\"From: hello@nuage.su\"))\necho \"Сообщение передано функции mail, проверьте почту в ящике.\";\nelse\necho \"Функция mail не работает, свяжитесь с администрацией хостинга.\";\";', 'N'),
(3950, 1, 'html_editor', 'type_selector_PROP_11__583__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(4014, 1, 'main', 'admSupInf', 'a:1:{s:16:\"showInformerDate\";s:10:\"1577853010\";}', 'N'),
(4021, 1, 'html_editor', 'type_selector_PROP_25__668__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(4024, 1, 'html_editor', 'type_selector_PROP_25__666__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(4037, 0, 'form', 'form_element_10', 'a:1:{s:4:\"tabs\";s:271:\"edit1--#--Элемент--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--*Название--,--PREVIEW_PICTURE--#--*Аватар--,--PROPERTY_30--#--Кто--,--PROPERTY_32--#--Фидбек група--,--PREVIEW_TEXT--#--Отзыв--;--\";}', 'Y'),
(4041, 0, 'form', 'form_element_9', 'a:1:{s:4:\"tabs\";s:158:\"edit1--#--Элемент--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--*Вопрос--,--PREVIEW_TEXT--#--Ответ--;--\";}', 'Y'),
(4048, 1, 'main.interface.grid', 'tbl_iblock_admin_ac68b62abfd6a9fe26e8ac4236c8ce0c', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(4051, 1, 'list', 'tbl_iblock_list_3f95adcb25c043e7e1ec928ccee65a13', 'a:4:{s:7:\"columns\";s:95:\"DATE_CREATE,PROPERTY_34,PROPERTY_36,PROPERTY_35,PROPERTY_37,PROPERTY_38,PROPERTY_39,PROPERTY_40\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(4052, 0, 'list', 'tbl_iblock_list_3f95adcb25c043e7e1ec928ccee65a13', 'a:4:{s:7:\"columns\";s:95:\"DATE_CREATE,PROPERTY_34,PROPERTY_36,PROPERTY_35,PROPERTY_37,PROPERTY_38,PROPERTY_39,PROPERTY_40\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'Y'),
(4053, 1, 'form', 'form_element_11', 'a:1:{s:4:\"tabs\";s:341:\"edit1--#--Элемент--,--DATE_CREATE--#--Создан--,--PROPERTY_34--#--ФИО--,--PROPERTY_36--#--Телефон--,--PROPERTY_35--#--E-mail--,--PROPERTY_37--#--Город--,--PROPERTY_38--#--Дата рождения--,--PROPERTY_39--#--Тема обращения--,--PROPERTY_40--#--Текст обращения--,--NAME--#--*--;--\";}', 'N'),
(4054, 0, 'form', 'form_element_11', 'a:1:{s:4:\"tabs\";s:341:\"edit1--#--Элемент--,--DATE_CREATE--#--Создан--,--PROPERTY_34--#--ФИО--,--PROPERTY_36--#--Телефон--,--PROPERTY_35--#--E-mail--,--PROPERTY_37--#--Город--,--PROPERTY_38--#--Дата рождения--,--PROPERTY_39--#--Тема обращения--,--PROPERTY_40--#--Текст обращения--,--NAME--#--*--;--\";}', 'Y'),
(4057, 1, 'html_editor', 'type_selector_PROP_27__n0__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(4064, 0, 'form', 'form_element_8', 'a:1:{s:4:\"tabs\";s:2623:\"edit1--#--Элемент--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--Начало активности--,--ACTIVE_TO--#--Окончание активности--,--NAME--#--*Название--,--CODE--#--Символьный код--,--SORT--#--Сортировка--,--IBLOCK_ELEMENT_PROP_VALUE--#----Значения свойств--,--PROPERTY_9--#--Рисунок списка--,--PROPERTY_10--#--Суб название--,--PROPERTY_12--#--Особенности рисунок--,--PROPERTY_11--#--Особенности--,--PROPERTY_19--#--Длина--,--PROPERTY_18--#--Толщина--,--PROPERTY_13--#--Капли--,--PROPERTY_33--#--Клас рисунка капель--,--PROPERTY_24--#--Описание заголовок--,--PROPERTY_23--#--Описание рисунок--,--PROPERTY_25--#--Описание текст--,--PROPERTY_16--#--Передзагрузка рисунок--,--PROPERTY_20--#--Поверхность--,--PROPERTY_28--#--Поверхность рисунок--,--PROPERTY_17--#--Рисунок продукта 360--,--PROPERTY_14--#--Рисунок стрелки--,--PROPERTY_15--#--Рисунок увеличения--,--PROPERTY_21--#--Сетка--,--PROPERTY_29--#--Сетка рисунок--,--PROPERTY_26--#--Увеличение задний рисунок--,--PROPERTY_22--#--Штук--,--PROPERTY_27--#--Текст сравнения--,--PREVIEW_TEXT--#--Описание для анонса--;--cedit1--#--Мобильная страница--,--PREVIEW_PICTURE--#--Картинка для анонса на главной--,--PROPERTY_57--#--Высота картинки для анонса (400 по-умолчанию)--,--PROPERTY_52--#--Галерея для мобильной страницы--,--PROPERTY_51--#--Класс для стрелок в мобильной версии--,--PROPERTY_53--#--Особенности рисунок--,--PROPERTY_54--#--Особенности подзаголовок--,--PROPERTY_55--#--Особенности текст--;--edit14--#--SEO--,--PROPERTY_47--#--Seo h1--,--PROPERTY_41--#--Seo title--,--PROPERTY_42--#--Seo description--,--PROPERTY_48--#--Seo h1(страница сравнение)--,--PROPERTY_43--#--Seo title(страница сравнение)--,--PROPERTY_44--#--Seo description(страница сравнение)--,--PROPERTY_49--#--Seo h1(страница состав)--,--PROPERTY_45--#--Seo title(страница состав)--,--PROPERTY_46--#--Seo description(страница состав)--;--\";}', 'Y'),
(4069, 1, 'list', 'tbl_iblock_list_c83e01ea3b6b631fe36a4524177acf8a', 'a:4:{s:7:\"columns\";s:43:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,PROPERTY_81\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(4070, 0, 'list', 'tbl_iblock_list_c83e01ea3b6b631fe36a4524177acf8a', 'a:4:{s:7:\"columns\";s:31:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'Y'),
(4075, 1, 'main.interface.grid', 'tbl_iblock_ac68b62abfd6a9fe26e8ac4236c8ce0c', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(4164, 1, 'start_menu', 'recent', 'a:3:{i:0;a:4:{s:3:\"url\";s:107:\"/bitrix/admin/iblock_list_admin.php?IBLOCK_ID=12&type=nuage&lang=ru&find_section_section=0&back_url_pub=%2F\";s:4:\"text\";s:19:\"Где купить\";s:5:\"title\";s:19:\"Где купить\";s:4:\"icon\";s:9:\"undefined\";}i:1;a:4:{s:3:\"url\";s:74:\"/bitrix/admin/iblock_admin.php?type=nuage&lang=ru&admin=N&back_url_pub=%2F\";s:4:\"text\";s:14:\"Контент\";s:5:\"title\";s:14:\"Контент\";s:4:\"icon\";s:9:\"undefined\";}i:2;a:4:{s:3:\"url\";s:106:\"/bitrix/admin/iblock_list_admin.php?IBLOCK_ID=9&type=nuage&lang=ru&find_section_section=0&back_url_pub=%2F\";s:4:\"text\";s:30:\"Вопросы и ответы\";s:5:\"title\";s:30:\"Вопросы и ответы\";s:4:\"icon\";s:9:\"undefined\";}}', 'N'),
(4516, 1, 'form', 'form_element_12', 'a:1:{s:4:\"tabs\";s:205:\"edit1--#--Элемент--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--*Название--,--PREVIEW_PICTURE--#--*Картинка--,--PROPERTY_50--#--Ссылки--;--\";}', 'N'),
(4517, 0, 'form', 'form_element_12', 'a:1:{s:4:\"tabs\";s:205:\"edit1--#--Элемент--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--*Название--,--PREVIEW_PICTURE--#--*Картинка--,--PROPERTY_50--#--Ссылки--;--\";}', 'Y'),
(4518, 1, 'list', 'tbl_iblock_element_bb865654da95c7a16be711c35eaa1d44', 'a:4:{s:7:\"columns\";s:59:\"NAME,PREVIEW_PICTURE,ACTIVE,PROPERTY_50,SORT,TIMESTAMP_X,ID\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(4519, 0, 'list', 'tbl_iblock_element_bb865654da95c7a16be711c35eaa1d44', 'a:4:{s:7:\"columns\";s:59:\"NAME,PREVIEW_PICTURE,ACTIVE,PROPERTY_50,SORT,TIMESTAMP_X,ID\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'Y'),
(4531, 1, 'list', 'tbl_iblock_list_bb865654da95c7a16be711c35eaa1d44', 'a:4:{s:7:\"columns\";s:59:\"NAME,ACTIVE,SORT,PREVIEW_PICTURE,PROPERTY_50,TIMESTAMP_X,ID\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(4532, 0, 'list', 'tbl_iblock_list_bb865654da95c7a16be711c35eaa1d44', 'a:4:{s:7:\"columns\";s:59:\"NAME,ACTIVE,SORT,PREVIEW_PICTURE,PROPERTY_50,TIMESTAMP_X,ID\";s:2:\"by\";s:11:\"timestamp_x\";s:5:\"order\";s:4:\"desc\";s:9:\"page_size\";s:2:\"20\";}', 'Y'),
(4564, 3, 'hot_keys', 'user_defined', 'b:1;', 'N'),
(4565, 3, 'favorite', 'favorite_menu', 'a:1:{s:5:\"stick\";s:1:\"N\";}', 'N'),
(4566, 3, 'main', 'helper_hero_admin', 'a:2:{s:4:\"time\";s:10:\"1596783366\";s:4:\"show\";s:1:\"Y\";}', 'N'),
(4568, 3, 'socialservices', 'networkPopup', 'a:1:{s:9:\"showcount\";s:2:\"44\";}', 'N'),
(4571, 3, 'admin_menu', 'pos', 'a:3:{s:8:\"sections\";s:277:\"menu_iblock_%2Fnuage%2F8,menu_fileman,iblock_admin,backup,menu_site,menu_module_settings,menu_iblock_%2Fnuage%2F9,menu_iblock,menu_fileman_file_a1_,urlrewrite,menu_iblock_%2Fkomboflex%2F15,menu_iblock_%2Fkomboflex%2F17,menu_util,menu_iblock_%2Fkomboflex%2F16,menu_iblock_/gasit\";s:5:\"width\";s:3:\"422\";s:3:\"ver\";s:2:\"on\";}', 'N'),
(4572, 3, 'admin_panel', 'settings', 'a:3:{s:4:\"edit\";s:3:\"off\";s:9:\"collapsed\";s:2:\"on\";s:3:\"fix\";s:2:\"on\";}', 'N'),
(4588, 3, 'main.interface.grid', 'tbl_iblock_admin_46f059771c7236adc7640e4961dc5679', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(4591, 3, 'form', 'form_element_8', 'a:1:{s:4:\"tabs\";s:2623:\"edit1--#--Элемент--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--Начало активности--,--ACTIVE_TO--#--Окончание активности--,--NAME--#--*Название--,--CODE--#--Символьный код--,--SORT--#--Сортировка--,--IBLOCK_ELEMENT_PROP_VALUE--#----Значения свойств--,--PROPERTY_9--#--Рисунок списка--,--PROPERTY_10--#--Суб название--,--PROPERTY_12--#--Особенности рисунок--,--PROPERTY_11--#--Особенности--,--PROPERTY_19--#--Длина--,--PROPERTY_18--#--Толщина--,--PROPERTY_13--#--Капли--,--PROPERTY_33--#--Клас рисунка капель--,--PROPERTY_24--#--Описание заголовок--,--PROPERTY_23--#--Описание рисунок--,--PROPERTY_25--#--Описание текст--,--PROPERTY_16--#--Передзагрузка рисунок--,--PROPERTY_20--#--Поверхность--,--PROPERTY_28--#--Поверхность рисунок--,--PROPERTY_17--#--Рисунок продукта 360--,--PROPERTY_14--#--Рисунок стрелки--,--PROPERTY_15--#--Рисунок увеличения--,--PROPERTY_21--#--Сетка--,--PROPERTY_29--#--Сетка рисунок--,--PROPERTY_26--#--Увеличение задний рисунок--,--PROPERTY_22--#--Штук--,--PROPERTY_27--#--Текст сравнения--,--PREVIEW_TEXT--#--Описание для анонса--;--cedit1--#--Мобильная страница--,--PREVIEW_PICTURE--#--Картинка для анонса на главной--,--PROPERTY_57--#--Высота картинки для анонса (400 по-умолчанию)--,--PROPERTY_52--#--Галерея для мобильной страницы--,--PROPERTY_51--#--Класс для стрелок в мобильной версии--,--PROPERTY_53--#--Особенности рисунок--,--PROPERTY_54--#--Особенности подзаголовок--,--PROPERTY_55--#--Особенности текст--;--edit14--#--SEO--,--PROPERTY_47--#--Seo h1--,--PROPERTY_41--#--Seo title--,--PROPERTY_42--#--Seo description--,--PROPERTY_48--#--Seo h1(страница сравнение)--,--PROPERTY_43--#--Seo title(страница сравнение)--,--PROPERTY_44--#--Seo description(страница сравнение)--,--PROPERTY_49--#--Seo h1(страница состав)--,--PROPERTY_45--#--Seo title(страница состав)--,--PROPERTY_46--#--Seo description(страница состав)--;--\";}', 'N'),
(4596, 3, 'fileman', 'last_pathes', 's:387:\"a:10:{i:0;s:18:\"/m/local/templates\";i:1;s:8:\"/m/local\";i:2;s:2:\"/m\";i:3;s:22:\"/m/local/php_interface\";i:4;s:6:\"/local\";i:5;s:7:\"/bitrix\";i:6;s:67:\"/local/templates/mobile/components/medias/assortment.detail/m_nuage\";i:7;s:59:\"/local/templates/mobile/components/medias/assortment.detail\";i:8;s:41:\"/local/templates/mobile/components/medias\";i:9;s:34:\"/local/templates/mobile/components\";}\";', 'N'),
(4603, 3, 'fileman', 'code_editor', 'a:1:{s:5:\"theme\";s:5:\"light\";}', 'N'),
(4621, 3, 'main.interface.grid', 'tbl_user', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(4678, 3, 'main', 'fileinput', 'a:1:{s:4:\"mode\";s:9:\"mode-pict\";}', 'N'),
(5175, 3, 'main.interface.grid', 'tbl_iblock_46f059771c7236adc7640e4961dc5679', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(5223, 1, 'html_editor', 'type_selector_PROP_55__853__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(5224, 1, 'html_editor', 'type_selector_PROP_11__555__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(5228, 3, 'html_editor', 'type_selector_PREVIEW_TEXT8', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(5262, 3, 'filter', 'tbl_tabe_compare_images_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(5263, 3, 'filter', 'tbl_tabe_compare_params_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(5264, 3, 'filter', 'tbl_nuage_city_list_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(5265, 3, 'filter', 'tbl_nuage_partners_filter_id', 'a:1:{s:4:\"rows\";s:1:\"0\";}', 'N'),
(5268, 3, 'main.interface.grid', 'tbl_iblock_admin_ac68b62abfd6a9fe26e8ac4236c8ce0c', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(5271, 1, 'form', 'form_section_13', 'a:1:{s:4:\"tabs\";s:3100:\"edit1--#--Раздел--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Раздел активен--,--IBLOCK_SECTION_ID--#--Родительский раздел--,--NAME--#--*Название--,--CODE--#--Символьный код--,--PICTURE--#--Изображение--,--DESCRIPTION--#--Описание--;--edit5--#--SEO--,--IPROPERTY_TEMPLATES_SECTION--#----Настройки для разделов--,--IPROPERTY_TEMPLATES_SECTION_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_SECTION_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_SECTION_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_SECTION_PAGE_TITLE--#--Заголовок раздела--,--IPROPERTY_TEMPLATES_ELEMENT--#----Настройки для элементов--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок товара--,--IPROPERTY_TEMPLATES_SECTIONS_PICTURE--#----Настройки для изображений разделов--,--IPROPERTY_TEMPLATES_SECTION_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_SECTION_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_SECTION_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_SECTIONS_DETAIL_PICTURE--#----Настройки для детальных картинок разделов--,--IPROPERTY_TEMPLATES_SECTION_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_SECTION_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_SECTION_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_MANAGEMENT--#----Управление--,--IPROPERTY_CLEAR_VALUES--#--Очистить кеш вычисленных значений--;--edit2--#--Дополнительно--,--SORT--#--Сортировка--,--DETAIL_PICTURE--#--Детальная картинка--;--user_fields_tab--#--Доп. поля--,--USER_FIELDS_ADD--#--Добавить пользовательское свойство--;--\";}', 'N'),
(5272, 1, 'form', 'form_element_14', 'a:1:{s:4:\"tabs\";s:297:\"edit1--#--Элемент--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--NAME--#--*Название--,--SORT--#--Сортировка--,--PREVIEW_PICTURE--#--Фотография--,--PREVIEW_TEXT--#--Должность--;--\";}', 'N'),
(5273, 1, 'form', 'form_element_13', 'a:1:{s:4:\"tabs\";s:2031:\"edit1--#--Элемент--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--*Начало активности--,--ACTIVE_TO--#--Окончание активности--,--NAME--#--*Название--,--CODE--#--*Символьный код--,--SORT--#--Сортировка--,--IBLOCK_ELEMENT_PROP_VALUE--#----Значения свойств--,--PROPERTY_61--#--Автор--,--PROPERTY_60--#--*Время прочтения (минут)--,--PROPERTY_58--#--Лайки--,--PROPERTY_59--#--Просмотры--;--edit5--#--Содержание--,--PREVIEW_PICTURE--#--Картинка для анонса--,--DETAIL_PICTURE--#--Детальная картинка--,--PREVIEW_TEXT--#--Текст--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--edit2--#--Разделы--,--SECTIONS--#--Разделы--;--\";}', 'N'),
(5289, 1, 'html_editor', 'type_selector_PREVIEW_TEXT13', 'a:1:{s:4:\"type\";s:6:\"editor\";}', 'N'),
(5297, 0, 'form', 'form_element_15', 'a:1:{s:4:\"tabs\";s:383:\"edit1--#--Элемент--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--Заголовок--,--PREVIEW_TEXT--#--Текст--;--cedit1--#--Графика--,--PREVIEW_PICTURE--#--Изображение--,--DETAIL_PICTURE--#--Фоновое изображение--;--\";}', 'Y'),
(5300, 3, 'main.interface.grid', 'tbl_iblock_admin_43c0e29f955f0c645ad233f9f3d6bed3', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:64:\"NAME,SORT,ACTIVE,CODE,ELEMENT_CNT,SECTION_CNT,LID,TIMESTAMP_X,ID\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:12:\"custom_names\";N;}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(5303, 0, 'form', 'form_element_16', 'a:1:{s:4:\"tabs\";s:577:\"edit1--#--Элемент--,--ID--#--ID--,--NAME--#--Название--,--CODE--#--Символьный код--,--edit1_csection1--#--Ссылка в блоке--,--PROPERTY_64--#--Ссылка--,--PROPERTY_65--#--Текст на ссылке--,--IBLOCK_ELEMENT_PROP_VALUE--#--Инструкция в блоке--,--PROPERTY_62--#--Инструкция--,--PROPERTY_63--#--Надпись на инструкции--;--edit6--#--Графика--,--DETAIL_PICTURE--#--Изображение--;--cedit1--#--Пункты--,--PROPERTY_66--#--Список преимуществ--;--\";}', 'Y'),
(5304, 0, 'form', 'form_element_17', 'a:1:{s:4:\"tabs\";s:283:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--CODE--#--*Символьный код--,--NAME--#--*Заголовок--,--DETAIL_TEXT--#--Подзаголовок--;--cedit1--#--Состав--,--PROPERTY_67--#--Список компонентов--;--\";}', 'Y'),
(5305, 0, 'form', 'form_element_18', 'a:1:{s:4:\"tabs\";s:360:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--PROPERTY_82--#--Скрыть блок--,--CODE--#--*Символьный код--,--NAME--#--*Заголовок--;--edit6--#--Графика--,--DETAIL_PICTURE--#--Изображение--;--cedit1--#--Список--,--PROPERTY_68--#--Данные о безопасности--;--\";}', 'Y'),
(5306, 0, 'form', 'form_element_19', 'a:1:{s:4:\"tabs\";s:270:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--CODE--#--Символьный код--,--NAME--#--Название--;--cedit1--#--Список--,--PROPERTY_69--#--Список особенностей--;--\";}', 'Y'),
(5307, 0, 'form', 'form_element_20', 'a:1:{s:4:\"tabs\";s:338:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--Заголовок--,--PROPERTY_70--#--Число в рекомендации--,--PROPERTY_71--#--Текст рекоменндации--;--edit5--#--Графика--,--PREVIEW_PICTURE--#--Изображение--;--\";}', 'Y'),
(5308, 0, 'form', 'form_element_21', 'a:1:{s:4:\"tabs\";s:202:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--CODE--#--Символьный код--,--NAME--#--Заголовок--,--PROPERTY_72--#--Таблица состава--;--\";}', 'Y'),
(5309, 0, 'form', 'form_element_22', 'a:1:{s:4:\"tabs\";s:338:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--CODE--#--Символьный код--,--NAME--#--Название--,--DETAIL_TEXT--#--Текст--;--cedit1--#--Графика--,--PROPERTY_73--#--Галерея наград--;--cedit2--#--Слайдер--,--PROPERTY_74--#--Слайдер в блоке--;--\";}', 'Y'),
(5310, 0, 'form', 'form_element_23', 'a:1:{s:4:\"tabs\";s:1890:\"edit1--#--Элемент--,--ID--#--ID--,--DATE_CREATE--#--Создан--,--TIMESTAMP_X--#--Изменен--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--Начало активности--,--ACTIVE_TO--#--Окончание активности--,--SORT--#--Сортировка--,--PROPERTY_75--#--Дата новости--,--NAME--#--Название--,--CODE--#--Символьный код--;--edit5--#--Анонс--,--PREVIEW_PICTURE--#--Картинка для анонса--;--edit6--#--Статья--,--DETAIL_PICTURE--#--Детальная картинка--,--DETAIL_TEXT--#--Текст статьи--,--PROPERTY_76--#--Доп.факт--,--PREVIEW_TEXT--#--Текст примечания--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#--Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#--Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#--Дополнительно--,--TAGS--#--Теги--;--\";}', 'Y'),
(5311, 0, 'form', 'form_element_24', 'a:1:{s:4:\"tabs\";s:411:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--CODE--#--*Символьный код--,--NAME--#--*Заголовок--,--DETAIL_PICTURE--#--Изображение--,--DETAIL_TEXT--#--Текст--;--cedit1--#--Ссылки купить--,--PROPERTY_77--#--Ссылки где купить--;--cedit2--#--Партнёры--,--PROPERTY_78--#--Галерея партнёров--;--\";}', 'Y'),
(5312, 0, 'form', 'form_element_25', 'a:1:{s:4:\"tabs\";s:249:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--CODE--#--Символьный код--,--NAME--#--Название--,--IBLOCK_ELEMENT_PROP_VALUE--#--Значения свойств--,--PROPERTY_79--#--Terms of Use--;--\";}', 'Y'),
(5347, 3, 'main.interface.grid', 'tbl_iblock_43c0e29f955f0c645ad233f9f3d6bed3', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(5387, 3, 'form', 'form_element_18', 'a:1:{s:4:\"tabs\";s:360:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--PROPERTY_82--#--Скрыть блок--,--CODE--#--*Символьный код--,--NAME--#--*Заголовок--;--edit6--#--Графика--,--DETAIL_PICTURE--#--Изображение--;--cedit1--#--Список--,--PROPERTY_68--#--Данные о безопасности--;--\";}', 'N'),
(5393, 3, 'form', 'form_element_17', 'a:1:{s:4:\"tabs\";s:283:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--CODE--#--*Символьный код--,--NAME--#--*Заголовок--,--DETAIL_TEXT--#--Подзаголовок--;--cedit1--#--Состав--,--PROPERTY_67--#--Список компонентов--;--\";}', 'N'),
(5395, 3, 'html_editor', 'type_selector_DETAIL_TEXT17', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(5396, 3, 'form', 'form_element_24', 'a:1:{s:4:\"tabs\";s:411:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--CODE--#--*Символьный код--,--NAME--#--*Заголовок--,--DETAIL_PICTURE--#--Изображение--,--DETAIL_TEXT--#--Текст--;--cedit1--#--Ссылки купить--,--PROPERTY_77--#--Ссылки где купить--;--cedit2--#--Партнёры--,--PROPERTY_78--#--Галерея партнёров--;--\";}', 'N'),
(5410, 3, 'main.interface.grid', 'tbl_iblock_admin_a2e67259bd1e78fbde9bb6d6263b9e1e', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:4:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:12:\"last_sort_by\";s:4:\"sort\";s:15:\"last_sort_order\";s:3:\"asc\";}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(5419, 3, 'main.interface.grid', 'tbl_iblock_a2e67259bd1e78fbde9bb6d6263b9e1e', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:2:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(5423, 3, 'form', 'form_element_26', 'a:1:{s:4:\"tabs\";s:592:\"edit1--#--Препарат--,--ID--#--ID--,--NAME--#--*Название--,--PREVIEW_TEXT--#--Краткое описание--,--DETAIL_PICTURE--#--*Фоновое изображение--,--PREVIEW_PICTURE--#--*Изображение препарата--;--cedit1--#--Где купить--,--PROPERTY_83--#--*Текст кнопки--,--PROPERTY_87--#--*Якорная ссылка--;--cedit3--#--Действующие вещества--,--PROPERTY_85--#--Заголовок--,--PROPERTY_86--#--Список--;--cedit4--#--Преимущества--,--PROPERTY_89--#--Список (3x)--;--\";}', 'N'),
(5424, 0, 'form', 'form_element_26', 'a:1:{s:4:\"tabs\";s:592:\"edit1--#--Препарат--,--ID--#--ID--,--NAME--#--*Название--,--PREVIEW_TEXT--#--Краткое описание--,--DETAIL_PICTURE--#--*Фоновое изображение--,--PREVIEW_PICTURE--#--*Изображение препарата--;--cedit1--#--Где купить--,--PROPERTY_83--#--*Текст кнопки--,--PROPERTY_87--#--*Якорная ссылка--;--cedit3--#--Действующие вещества--,--PROPERTY_85--#--Заголовок--,--PROPERTY_86--#--Список--;--cedit4--#--Преимущества--,--PROPERTY_89--#--Список (3x)--;--\";}', 'Y'),
(5432, 3, 'html_editor', 'type_selector_DETAIL_TEXT27', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(5435, 3, 'form', 'form_element_27', 'a:1:{s:4:\"tabs\";s:359:\"edit1--#--Действие--,--ID--#--ID--,--NAME--#--*Заголовок--,--DETAIL_TEXT--#--Детальное описание--;--cedit1--#--До применения--,--PREVIEW_PICTURE--#--*Изображение--,--PROPERTY_90--#--Симптомы (3x)--;--cedit2--#--После применения--,--DETAIL_PICTURE--#--*Изображение--;--\";}', 'N'),
(5436, 0, 'form', 'form_element_27', 'a:1:{s:4:\"tabs\";s:359:\"edit1--#--Действие--,--ID--#--ID--,--NAME--#--*Заголовок--,--DETAIL_TEXT--#--Детальное описание--;--cedit1--#--До применения--,--PREVIEW_PICTURE--#--*Изображение--,--PROPERTY_90--#--Симптомы (3x)--;--cedit2--#--После применения--,--DETAIL_PICTURE--#--*Изображение--;--\";}', 'Y'),
(5439, 3, 'html_editor', 'type_selector_DETAIL_TEXT28', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(5442, 3, 'form', 'form_element_28', 'a:1:{s:4:\"tabs\";s:230:\"edit1--#--Применение--,--ID--#--ID--,--NAME--#--*Заголовок--,--PROPERTY_91--#--Подзаголовок--,--DETAIL_PICTURE--#--*Изображение--,--DETAIL_TEXT--#--Детальное описание--;--\";}', 'N'),
(5443, 0, 'form', 'form_element_28', 'a:1:{s:4:\"tabs\";s:230:\"edit1--#--Применение--,--ID--#--ID--,--NAME--#--*Заголовок--,--PROPERTY_91--#--Подзаголовок--,--DETAIL_PICTURE--#--*Изображение--,--DETAIL_TEXT--#--Детальное описание--;--\";}', 'Y'),
(5445, 3, 'list', 'tbl_iblock_list_b40280665019e7f0cea8cb85be2e79d8', 'a:4:{s:7:\"columns\";s:47:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,PREVIEW_PICTURE\";s:2:\"by\";s:4:\"sort\";s:5:\"order\";s:3:\"asc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(5446, 0, 'list', 'tbl_iblock_list_b40280665019e7f0cea8cb85be2e79d8', 'a:4:{s:7:\"columns\";s:47:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,PREVIEW_PICTURE\";s:2:\"by\";s:4:\"sort\";s:5:\"order\";s:3:\"asc\";s:9:\"page_size\";s:2:\"20\";}', 'Y'),
(5449, 3, 'form', 'form_element_29', 'a:1:{s:4:\"tabs\";s:249:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--*Название--,--PREVIEW_PICTURE--#--*Иконка--,--PREVIEW_TEXT--#--Дополнительное описание--;--\";}', 'N'),
(5450, 0, 'form', 'form_element_29', 'a:1:{s:4:\"tabs\";s:249:\"edit1--#--Элемент--,--ID--#--ID--,--ACTIVE--#--Активность--,--SORT--#--Сортировка--,--NAME--#--*Название--,--PREVIEW_PICTURE--#--*Иконка--,--PREVIEW_TEXT--#--Дополнительное описание--;--\";}', 'Y'),
(5457, 3, 'list', 'tbl_iblock_list_fd2839cb0a4900fb35a23ea5f227744d', 'a:4:{s:7:\"columns\";s:47:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,PREVIEW_PICTURE\";s:2:\"by\";s:4:\"sort\";s:5:\"order\";s:3:\"asc\";s:9:\"page_size\";s:2:\"20\";}', 'N'),
(5458, 0, 'list', 'tbl_iblock_list_fd2839cb0a4900fb35a23ea5f227744d', 'a:4:{s:7:\"columns\";s:47:\"NAME,ACTIVE,SORT,TIMESTAMP_X,ID,PREVIEW_PICTURE\";s:2:\"by\";s:4:\"sort\";s:5:\"order\";s:3:\"asc\";s:9:\"page_size\";s:2:\"20\";}', 'Y'),
(5462, 3, 'form', 'form_element_31', 'a:1:{s:4:\"tabs\";s:182:\"edit1--#--Видео--,--ID--#--ID--,--NAME--#--*Название--,--PROPERTY_93--#--*Видео (ссылка или ID YouTube)--,--DETAIL_PICTURE--#--*Изображение--;--\";}', 'N'),
(5463, 0, 'form', 'form_element_31', 'a:1:{s:4:\"tabs\";s:182:\"edit1--#--Видео--,--ID--#--ID--,--NAME--#--*Название--,--PROPERTY_93--#--*Видео (ссылка или ID YouTube)--,--DETAIL_PICTURE--#--*Изображение--;--\";}', 'Y'),
(5466, 3, 'html_editor', 'type_selector_PROP_95__n0__VALUE__TEXT_', 'a:1:{s:4:\"type\";s:4:\"text\";}', 'N'),
(5467, 3, 'html_editor', 'type_selector_PREVIEW_TEXT32', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(5469, 3, 'html_editor', 'type_selector_DETAIL_TEXT32', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(5472, 3, 'form', 'form_element_32', 'a:1:{s:4:\"tabs\";s:793:\"edit1--#--Общее--,--ID--#--ID--,--NAME--#--*Название--,--PROPERTY_94--#--Логотип--,--PROPERTY_101--#--Всплывающий текст о куках--,--PROPERTY_100--#--Всплывающее предупреждение--;--cedit2--#--Футер--,--PROPERTY_96--#--Телефон--,--PROPERTY_95--#--Текст у логотипа--,--PROPERTY_99--#--О противопоказаниях--;--cedit1--#--Инструкция--,--PROPERTY_97--#--Текст ссылки--,--PROPERTY_98--#--Файл инструкции--;--cedit4--#--Правила пользования сайтом--,--DETAIL_TEXT--#--Текст для страницы--;--cedit3--#--Политика конфиденциальности--,--PREVIEW_TEXT--#--Текст для страницы--;--\";}', 'N'),
(5473, 0, 'form', 'form_element_32', 'a:1:{s:4:\"tabs\";s:793:\"edit1--#--Общее--,--ID--#--ID--,--NAME--#--*Название--,--PROPERTY_94--#--Логотип--,--PROPERTY_101--#--Всплывающий текст о куках--,--PROPERTY_100--#--Всплывающее предупреждение--;--cedit2--#--Футер--,--PROPERTY_96--#--Телефон--,--PROPERTY_95--#--Текст у логотипа--,--PROPERTY_99--#--О противопоказаниях--;--cedit1--#--Инструкция--,--PROPERTY_97--#--Текст ссылки--,--PROPERTY_98--#--Файл инструкции--;--cedit4--#--Правила пользования сайтом--,--DETAIL_TEXT--#--Текст для страницы--;--cedit3--#--Политика конфиденциальности--,--PREVIEW_TEXT--#--Текст для страницы--;--\";}', 'Y');
-- -----------------------------------
-- Dumping table b_user_stored_auth
-- -----------------------------------
DROP TABLE IF EXISTS `b_user_stored_auth`;
CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ux_user_hash` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `b_user_stored_auth` VALUES
(15, 2, '2018-06-25 18:22:34', '2018-06-25 18:22:34', '2e8ea8e99a41b82e6a176d1bec2ba6fd', 'N', 3257713257),
(57, 1, '2020-02-04 21:56:34', '2020-02-04 21:56:34', '31084e5adb43e83c52e08067e3f04bb7', 'N', 2130706433),
(65, 1, '2020-06-01 13:38:04', '2020-06-01 15:21:33', 'f628d759aab72ad61fb3bdbc39bb7dc9', 'N', 3557889947),
(66, 1, '2020-06-23 16:51:13', '2020-06-23 17:19:21', '3a2f13afde4f2271572953c6b738ea38', 'N', 1572818625),
(67, 1, '2020-07-13 11:42:15', '2020-07-20 10:54:14', '130500dc6dae47459888494b8867e7fe', 'N', 1572818625),
(68, 1, '2021-01-25 14:22:25', '2021-01-28 10:40:57', '30bf6267561e3335f4500ebbeefdb9f8', 'N', 2130706433);
-- -----------------------------------
-- Dumping table nuage_city_list
-- -----------------------------------
DROP TABLE IF EXISTS `nuage_city_list`;
CREATE TABLE `nuage_city_list` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UF_CITY_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `nuage_city_list` VALUES
(1, 'Москва'),
(2, 'Санкт-Петербург'),
(3, 'Новосибирск'),
(4, 'Екатеринбург'),
(5, 'Нижний Новгород'),
(6, 'Казань'),
(7, 'Челябинск'),
(8, 'Омск'),
(9, 'Самара'),
(10, 'Ростов-на-Дону'),
(11, 'Уфа'),
(12, 'Красноярск'),
(13, 'Воронеж'),
(14, 'Пермь'),
(15, 'Волгоград'),
(16, 'Краснодар'),
(17, 'Саратов'),
(18, 'Тюмень'),
(19, 'Тольятти'),
(20, 'Ижевск'),
(21, 'Барнаул'),
(22, 'Ульяновск'),
(23, 'Иркутск'),
(24, 'Хабаровск'),
(25, 'Ярославль'),
(26, 'Владивосток'),
(27, 'Махачкала'),
(28, 'Томск'),
(29, 'Оренбург'),
(30, 'Кемерово'),
(31, 'Новокузнецк'),
(32, 'Рязань'),
(33, 'Астрахань'),
(34, 'Набережные Челны'),
(35, 'Пенза'),
(36, 'Липецк'),
(37, 'Киров'),
(38, 'Чебоксары'),
(39, 'Тула'),
(40, 'Калининград'),
(41, 'Балашиха'),
(42, 'Курск'),
(43, 'Ставрополь'),
(44, 'Улан-Удэ'),
(45, 'Тверь'),
(46, 'Магнитогорск'),
(47, 'Сочи'),
(48, 'Иваново'),
(49, 'Брянск'),
(50, 'Белгород'),
(51, 'Сургут'),
(52, 'Владимир'),
(53, 'Нижний Тагил'),
(54, 'Архангельск'),
(55, 'Чита'),
(56, 'Калуга'),
(57, 'Смоленск'),
(58, 'Волжский'),
(59, 'Курган'),
(60, 'Череповец'),
(61, 'Орёл'),
(62, 'Саранск'),
(63, 'Вологда'),
(64, 'Якутск'),
(65, 'Владикавказ'),
(66, 'Подольск'),
(67, 'Мурманск'),
(68, 'Грозный'),
(69, 'Тамбов'),
(70, 'Стерлитамак'),
(71, 'Петрозаводск'),
(72, 'Кострома'),
(73, 'Нижневартовск'),
(74, 'Новороссийск'),
(75, 'Йошкар-Ола'),
(76, 'Химки'),
(77, 'Таганрог'),
(78, 'Комсомольск-на-Амуре'),
(79, 'Сыктывкар'),
(80, 'Нальчик'),
(81, 'Нижнекамск'),
(82, 'Шахты'),
(83, 'Дзержинск'),
(84, 'Братск'),
(85, 'Орск'),
(86, 'Ангарск'),
(87, 'Энгельс'),
(88, 'Благовещенск'),
(89, 'Старый Оскол'),
(90, 'Королёв'),
(91, 'Великий Новгород'),
(92, 'Псков'),
(93, 'Мытищи'),
(94, 'Бийск'),
(95, 'Люберцы'),
(96, 'Прокопьевск'),
(97, 'Южно-Сахалинск'),
(98, 'Балаково'),
(99, 'Армавир'),
(100, 'Рыбинск'),
(101, 'Северодвинск'),
(102, 'Петропавловск-Камчатский'),
(103, 'Абакан'),
(104, 'Норильск'),
(105, 'Сызрань'),
(106, 'Волгодонск'),
(107, 'Уссурийск'),
(108, 'Каменск-Уральский'),
(109, 'Новочеркасск'),
(110, 'Златоуст'),
(111, 'Электросталь'),
(112, 'Альметьевск'),
(113, 'Красногорск'),
(114, 'Салават'),
(115, 'Миасс'),
(116, 'Находка'),
(117, 'Керчь'),
(118, 'Копейск'),
(119, 'Пятигорск'),
(120, 'Березники'),
(121, 'Рубцовск'),
(122, 'Коломна'),
(123, 'Майкоп'),
(124, 'Одинцово'),
(125, 'Хасавюрт'),
(126, 'Ковров'),
(127, 'Кисловодск'),
(128, 'Нефтекамск'),
(129, 'Нефтеюганск'),
(130, 'Новочебоксарск'),
(131, 'Серпухов'),
(132, 'Щёлково'),
(133, 'Новомосковск'),
(134, 'Батайск'),
(135, 'Первоуральск'),
(136, 'Домодедово'),
(137, 'Дербент'),
(138, 'Черкесск'),
(139, 'Орехово-Зуево'),
(140, 'Невинномысск'),
(141, 'Димитровград'),
(142, 'Назрань'),
(143, 'Кызыл'),
(144, 'Октябрьский'),
(145, 'Обнинск'),
(146, 'Каспийск'),
(147, 'Новый Уренгой'),
(148, 'Раменское'),
(149, 'Камышин'),
(150, 'Муром'),
(151, 'Долгопрудный'),
(152, 'Новошахтинск'),
(153, 'Жуковский'),
(154, 'Северск'),
(155, 'Ессентуки'),
(156, 'Ноябрьск'),
(157, 'Артём'),
(158, 'Пушкино'),
(159, 'Евпатория'),
(160, 'Ачинск'),
(161, 'Сергиев Посад'),
(162, 'Арзамас'),
(163, 'Элиста'),
(164, 'Елец'),
(165, 'Реутов'),
(166, 'Бердск'),
(167, 'Новокуйбышевск'),
(168, 'Ногинск'),
(169, 'Железногорск');
-- -----------------------------------
-- Dumping table nuage_partners
-- -----------------------------------
DROP TABLE IF EXISTS `nuage_partners`;
CREATE TABLE `nuage_partners` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UF_IMAGE_LINK` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_CITYS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_PARTNER_NAME` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_COORD` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `nuage_partners` VALUES
(1, 'images/par-1.svg', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', 'Perekrostok', '55.781433#37.579611#55.771212#37.390611#59.852099#30.321716#54.971818#82.917822'),
(2, 'images/par-2.svg', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'Metro Group', '55.742334#37.629267#59.893498#30.320952#59.999486#30.364307'),
(3, 'images/par-3.svg', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', 'Rigla', '59.992574#30.150368#55.736735#37.626057'),
(4, 'images/par-4.svg', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}', 'Metro', '55.043465#82.995077#55.067770#82.867147#55.709927#37.622413'),
(5, 'images/par-1.svg', 'a:1:{i:0;s:1:\"1\";}', 'Rigla2', '55.799927#37.612413  '),
(6, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner', '55.761574#37.564422'),
(7, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner2', '55.765417#37.578325'),
(8, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner3', '55.789669#37.602581'),
(9, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner4', '55.781076#37.650609'),
(10, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner5', '55.802591#37.596150'),
(11, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner6', '55.747029#37.563711'),
(12, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner7', '55.737668#37.641185'),
(13, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner8', '55.747278#37.667300'),
(14, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner9', '55.775493#37.649601'),
(15, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner10', '55.575493#37.649601'),
(16, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner11', '55.755493#37.549601'),
(17, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner12', '55.755493#36.549601'),
(18, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner13', '55.855493#37.549601'),
(19, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner14', '55.105493#37.549601'),
(20, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner15', '55.555493#37.549601'),
(21, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner16', '55.755493#37.249601'),
(22, '', 'a:1:{i:0;s:1:\"1\";}', 'Partner17', '55.655493#36.549601');
-- -----------------------------------
-- Dumping table nuage_partners_uf_citys
-- -----------------------------------
DROP TABLE IF EXISTS `nuage_partners_uf_citys`;
CREATE TABLE `nuage_partners_uf_citys` (
  `ID` int(11) NOT NULL,
  `VALUE` int(11) NOT NULL,
  KEY `IX_UTM_HL2_10_ID` (`ID`),
  KEY `IX_UTM_HL2_10_VALUE` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `nuage_partners_uf_citys` VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(5, 1),
(4, 1),
(4, 3),
(3, 1),
(3, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1);
-- -----------------------------------
-- Dumping table sprint_migration_versions
-- -----------------------------------
DROP TABLE IF EXISTS `sprint_migration_versions`;
CREATE TABLE `sprint_migration_versions` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO `sprint_migration_versions` VALUES
(1, 'Version20210215005419', 'fc27c703193cad4fa375f3a07d2b110d', ''),
(2, 'Version20210215005457', '701f99f8058d3fd0be985a21706d9913', ''),
(3, 'Version20210215005537', '2dc09083654967985d8fc68addbecccc', ''),
(4, 'Version20210215005621', 'f00bfc59608dd28c9a0751258fd40545', ''),
(5, 'Version20210215005703', '0b58ec2ec01857376deb3bdc5ccd2eb8', ''),
(6, 'Version20210215005751', '44a334ba614ec1a04f27b028f8529424', ''),
(7, 'Version20210215005901', 'b018d063c135f122ee855425fabf3509', ''),
(8, 'Version20210215005948', 'd06083ada86416e725d11bd8741cf4e5', ''),
(9, 'Version20210215010141', '16253d3397cf7409b88277b84a4f3a3a', ''),
(10, 'Version20210215010254', 'f8cb1bcf816cea2d0250dbebd7b91041', ''),
(11, 'Version20210215010404', '000c7a6e1e53fb37ac80addb669cfe6f', ''),
(12, 'Version20210215010535', 'c675478d98309eb44469cc02f541fac8', ''),
(13, 'Version20210215010728', '9c8150e45d85bd62254f65a65efaf5fe', ''),
(14, 'Version20210215010755', '8fadc9f53421d41b182fdf2e85808d47', ''),
(15, 'Version20210215010820', '69b0e936c2d5cdb758a42b26df1dac33', ''),
(16, 'Version20210215010914', '1bf815b4c3290c39e1389c4f5ecc06d2', ''),
(17, 'Version20210215010949', 'fd401230bede7ca9f32b0a34a5f433a1', ''),
(18, 'Version20210215011035', 'bd97d1f6f2318f10fefd35e780f3a8f3', ''),
(19, 'Version20210215011106', '4f91d428a593e2dc238d7df74cf158d8', ''),
(20, 'Version20210215011158', '643e3d1548dca6e04932876e5541e754', ''),
(21, 'Version20210215011236', '2effa06fdd38156312db51cb9090388e', ''),
(22, 'Version20210215011315', '80b077a4b82722063b9f8efeb2dfc133', ''),
(23, 'Version20210215011359', 'a84e0d10b1d2a71ddff7f21ed13c21a7', ''),
(24, 'Version20210215122846', '6adb3ae500f65c26aed0f00a34c9701b', ''),
(25, 'Version20210215160344', 'e8563c2795fd91d633d072cf1517400b', ''),
(26, 'Version20210713140759', '4c12d18b31bcaf8a5752e2346b5a994f', '');
-- -----------------------------------
-- Dumping table tabe_compare_images
-- -----------------------------------
DROP TABLE IF EXISTS `tabe_compare_images`;
CREATE TABLE `tabe_compare_images` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UF_IMAGES` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_ELEMENT_CODE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tabe_compare_images` VALUES
(1, '/images/vol-1.svg#/images/vol-2.svg#/images/vol-3.svg#/images/vol-4.svg#/images/vol-5.svg#/images/vol-6.svg', 'light'),
(2, '/images/vol-1-2.svg#/images/vol-2-2.svg#/images/vol-3-2.svg#/images/vol-4-2.svg#/images/vol-5-2.svg#/images/vol-6-2.svg', 'normal'),
(3, '/images/vol-1-3.svg#/images/vol-2-3.svg#/images/vol-3-3.svg#/images/vol-4-3.svg#/images/vol-5-3.svg#/images/vol-6-3.svg', 'super'),
(4, '/images/vol-1-4.svg#/images/vol-2-4.svg#/images/vol-3-4.svg#/images/vol-4-4.svg#/images/vol-5-4.svg#/images/vol-6-4.svg', 'night'),
(5, '/images/vol-1-5.svg#/images/vol-2-5.svg#/images/vol-3-5.svg#/images/vol-4-5.svg#/images/vol-5-5.svg#/images/vol-6-5.svg', 'night_plus'),
(6, '/images/vol-1-6.svg#/images/vol-2-6.svg#/images/vol-3-6.svg#/images/vol-4-6.svg#/images/vol-5-6.svg#/images/vol-6-6.svg', 'daily');
-- -----------------------------------
-- Dumping table tabe_compare_params
-- -----------------------------------
DROP TABLE IF EXISTS `tabe_compare_params`;
CREATE TABLE `tabe_compare_params` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UF_ELEMENT_CODE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEGREE` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_SEL_PARAMS` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `tabe_compare_params` VALUES
(1, 'light', 'light#light#normal', '1', '+#+#-'),
(2, 'light', 'normal#normal#normal', '2', '-#-#-'),
(3, 'light', 'super#super#super/night', '3', '-#-#-'),
(4, 'light', 'night#night/night plus#night plus', '4', '-#-#-'),
(5, 'light', 'night#night#night plus', '5', '-#-#-'),
(6, 'light', 'daily#daily#daily', '6', '-#-#-'),
(7, 'normal', 'light#light#normal', '1', '-#-#+'),
(8, 'normal', 'normal#normal#normal', '2', '+#+#+'),
(9, 'normal', 'super#super#super/night', '3', '-#-#-'),
(10, 'normal', 'night#night/night plus#night plus', '4', '-#-#-'),
(11, 'normal', 'daily#daily#daily', '6', '-#-#-'),
(12, 'normal', 'night#night#night plus', '5', '-#-#-'),
(13, 'super', 'light#light#normal', '1', '-#-#-'),
(14, 'super', 'normal#normal#normal', '2', '-#-#-'),
(15, 'super', 'super#super#super/night', '3', '+#+#+'),
(16, 'super', 'night#night/night plus#night plus', '4', '-#-#-'),
(17, 'super', 'night#night#night plus', '5', '-#-#-'),
(18, 'super', 'daily#daily#daily', '6', '-#-#-'),
(19, 'night', 'light#light#normal', '1', '-#-#-'),
(20, 'night', 'normal#normal#normal', '2', '-#-#-'),
(21, 'night', 'super#super#super/night', '3', '-#-#+'),
(22, 'night', 'night#night/night plus#night plus', '4', '+#+#-'),
(23, 'night', 'night#night/night plus#night plus', '5', '+#+#-'),
(24, 'night', 'daily#daily#daily', '6', '-#-#-'),
(25, 'night_plus', 'light#light#normal', '1', '-#-#-'),
(26, 'night_plus', 'normal#normal#normal', '2', '-#-#-'),
(27, 'night_plus', 'super#super#super/night', '3', '-#-#-'),
(28, 'night_plus', 'night#night/night plus#night plus', '4', '-#+#+'),
(29, 'night_plus', 'night#night#night plus', '5', '-#-#+'),
(30, 'night_plus', 'daily#daily#daily', '6', '-#-#-'),
(31, 'daily', 'light#light#normal', '1', '-#-#-'),
(32, 'daily', 'normal#normal#normal', '2', '-#-#-'),
(33, 'daily', 'super#super#super/night', '3', '-#-#-'),
(34, 'daily', 'night#night/night plus#night plus', '4', '-#-#-'),
(35, 'daily', 'night#night#night plus', '5', '-#-#-'),
(36, 'daily', 'daily#daily#daily', '6', '+#+#+');
-- Finished: 2021-09-03 17:40:10