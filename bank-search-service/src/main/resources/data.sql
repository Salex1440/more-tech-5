DELETE FROM bank_branch;

INSERT INTO bank_branch (id, city, street, house, housing, latitude, longitude, schedule_from, schedule_till,
 individual, legal_entity, for_invalid, privilegy, weekend, late_evening, waiting_time, review_amount) VALUES
(1, 'Москва', 'Красная площадь', '3', NULL, '55.75474', '37.621408', '10:00', '22:00', true, false, true, false, false, true, 21, 416),
(2, 'Москва', '4-й Лесной пер.', '4', NULL, '55.779069', '37.586931', '10:00', '19:00', true, true, false, true, false, false, 43, 87),
(3, 'Москва', 'Алтуфьевское шоссе', '90', NULL, '55.900168', '37.588305', '10:00', '19:00', true, true, true, false, true, false, 28, 232),
(4, 'Москва', 'Б. Сухаревская пл.', '14/7', NULL, '55.771818', '37.636697', '10:00', '19:00', true, true, true, true, false, false, 42, 47),
(5, 'Москва', 'Бродников пер.', '4', NULL, '55.737446', '37.617959', '09:00', '18:00', true, true, false, false, false, false, 33, 17),
(6, 'Москва', 'бульвар Адмирала Ушакова', '2', NULL, '55.548574', '37.553244', '10:00', '19:00', true, false, true, false, false, false, 31, 18),
(7, 'Москва', 'бульвар Дмитрия Донского', '11', NULL, '55.566807', '37.576394', '09:00', '21:00', true, false, true, true, true, true, 20, 226),
(8, 'Москва', 'бульвар Энтузиастов', '2', NULL, '55.746481', '37.682619', '09:00', '20:00', true, true, true, true, false, true, 37, 295),
(9, 'Москва', 'Варшавское шоссе', '26', NULL, '55.684503', '37.621947', '10:00', '19:00', true, true, true, true, false, false, 48, 78),
(10, 'Москва', 'Варшавское шоссе', '87', NULL, '55.652938', '37.620698', '10:00', '19:00', true, false, true, true, false, false, 47, 62),
(11, 'Москва', 'Волгоградский пр-т', '94', 'корп. 1', '55.704073', '37.771328', '09:00', '20:00', true, false, true, true, true, true, 18, 118),
(12, 'Москва', 'Дмитровское ш.', '13а', NULL, '55.818715', '37.573501', '09:00', '19:00', true, true, true, true, false, false, 29, 152),
(13, 'Москва', 'Дмитровское ш.', '64', 'кор. 1', '55.855361', '37.562982', '09:00', '21:00', true, true, true, true, true, true, 18, 363),
(14, 'Москва', 'Звенигородское шоссе', '18/20', 'корп. 1', '55.764323', '37.556119', '10:00', '19:00', true, true, true, true, true, false, 24, 178),
(15, 'Москва', 'Зубовский бульвар', '27/26', 'стр. 1', '55.736858', '37.588889', '09:00', '20:00', true, true, true, true, false, true, 33, 122),
(16, 'Москва', 'Измайловский б-р', '46', NULL, '55.796344', '37.805841', '10:00', '19:00', true, true, true, true, true, false, 30, 193),
(17, 'Москва', 'Каширское шоссе', '26', 'корп. 2', '55.653517', '37.648178', '10:00', '19:00', true, false, true, false, false, false, 40, 75),
(18, 'Москва', 'Краснопресненская набережная', '12', NULL, '55.754203', '37.556388', '09:00', '18:00', true, false, true, false, false, false, 0, 0),
(19, 'Москва', 'Ленинградский проспект', '36', NULL, '55.791248', '37.559388', '10:00', '20:00', true, false, true, true, false, true, 60, 49),
(20, 'Москва', 'Ленинградский пр-т', '60', 'корп. 2', '55.79934', '37.536185', '10:00', '20:00', true, false, true, true, false, true, 26, 138),
(21, 'Москва', 'Ленинградский пр-т', '65', 'стр. 1', '55.802912', '37.518892', '10:00', '19:00', true, true, true, true, false, false, 28, 77),
(22, 'Москва', 'Ленинградский пр-т', '77', 'кор. 2', '55.805214', '37.508185', '09:00', '20:00', true, true, true, true, true, true, 49, 197),
(23, 'Москва', 'Ленинградское шоссе', '13', 'к. 1', '55.818685', '37.497198', '09:00', '20:00', true, true, true, true, true, true, 19, 140),
(24, 'Москва', 'Ленинградское шоссе', '16А', 'стр. 2', '55.821578', '37.498725', '10:00', '19:00', true, false, true, false, false, false, 43, 75),
(25, 'Москва', 'Ленинский пр-т', '34/1', NULL, '55.785761', '37.568839', '10:00', '19:00', true, true, true, true, false, false, 22, 40),
(26, 'Москва', 'Ленинский пр-т', '64/2', NULL, '55.802315', '37.529259', '10:00', '19:00', true, true, true, true, false, false, 36, 49),
(27, 'Москва', 'Ленинский пр-т', '69', NULL, '55.803681', '37.517338', '09:00', '19:00', true, true, false, true, false, false, '53', 41),
(28, 'Москва', 'Лермонтовский пр-т', '10', 'корп. 1', '55.700562', '37.851808', '10:00', '19:00', true, false, true, true, true, false, 48, 111),
(29, 'Москва', 'Маршала Катукова ул.', '16', NULL, '55.807395', '37.40628', '10:00', '20:00', true, true, true, true, true, true, 32, 117),
(30, 'Москва', 'Мичуринский пр-т', '34', NULL, '55.69834', '37.498025', '09:00', '20:00', true, false, true, false, true, true, 40, 80),
(31, 'Москва', 'Мичуринский пр-т', '7', NULL, '55.702729', '37.509703', '09:00', '20:00', true, false, true, true, true, true, 31, 116),
(32, 'Москва', 'Можайское ш.', '45Б', NULL, '55.716448', '37.40698', '10:00', '19:00', true, false, true, false, false, false, 38, 55),
(33, 'Москва', 'Нахимовский пр-т', '11', 'кор. 1', '55.663512', '37.6054', '10:00', '19:00', true, true, true, true, false, false, 64, 78),
(34, 'Москва', 'Неглинная ул.', '14', 'стр. 1А', '55.764273', '37.620393', '10:00', '19:00', true, true, true, true, false, false, 34, 62),
(35, 'Москва', 'Новоясеневский пр-т', '2а', 'стр. 1', '55.617774', '37.505768', '10:00', '19:00', true, true, true, true, true, false, 25, 124),
(36, 'Москва', 'Новоясеневский пр-т', '9', NULL, '55.608816', '37.535412', '09:00', '20:00', true, true, true, true, true, true, 23, 214),
(37, 'Москва', 'пл. Победы', '2', 'корп. 2', '55.737507', '37.51838', '09:00', '18:00', true, true, false, false, false, false, 18, 38),
(38, 'Москва', 'площадь Победы', '1', 'корп. Б', '55.735596', '37.519539', '09:00', '20:00', true, true, true, true, true, true, 29, 135),
(39, 'Москва', 'Пресненская наб.', '10', 'стр. 1', '55.748914', '37.535475', '10:00', '20:00', true, true, true, true, false, true, 58, 242),
(40, 'Москва', 'просп. Андропова', '30', NULL, '55.679138', '37.662434', '10:00', '20:00', true, false, true, false, true, true, 21, 154),
(41, 'Москва', 'просп. Вернадского', '105', 'корп. 3', '55.663811', '37.484864', '09:00', '20:00', true, false, true, true, true, true, 26, 169),
(42, 'Москва', 'просп. Маршала Жукова', '48', 'корп. 1', '55.777793', '37.465748', '10:00', '19:00', true, true, true, true, false, false, 44, 76),
(43, 'Москва', 'пр-т Вернадского', '29', NULL, '55.681712', '37.516449', '09:00', '20:00', true, true, true, true, true, true, 25, 122),
(44, 'Москва', 'пр-т Мира', '180', NULL, '55.824253', '37.645896', '10:00', '19:00', true, false, true, true, false, false, 45, 56),
(45, 'Москва', 'пр-т Мира', '41', 'стр. 2', '53.908193', '30.341551', '09:00', '18:00', true, true, false, true, false, false, 27, 131),
(46, 'Москва', 'пр-т Мира', '76', NULL, '55.790712', '37.635179', '10:00', '19:00', true, true, true, true, false, false, 56, 42),
(47, 'Москва', 'пр-т Мира', '81', NULL, '55.801318', '37.634335', '09:00', '18:00', true, true, false, false, false, false, 44, 16),
(48, 'Москва', 'пр-т Мира', '97', NULL, '55.809105', '37.636338', '10:00', '20:00', true, true, true, true, true, true, 27, 229),
(49, 'Москва', 'ул. Кировоградская', '14', NULL, '55.622609', '37.605939', '10:00', '20:00', true, false, false, true, true, true, 39, 131),
(50, 'Москва', 'Рублевское шоссе', '28', 'кор. 1', '55.746796', '37.421308', '10:00', '20:00', true, true, true, true, true, true, 36, 115),
(51, 'Москва', 'Рязанский пр-т', '71', 'кор. 1', '55.718633', '37.78827', '10:00', '19:00', true, true, true, true, true, false, 51, 124),
(52, 'Москва', 'Свободный пр-т', '20', NULL, '55.78361', '37.721301', '10:00', '19:00', true, true, true, true, true, false, 20, 190),
(53, 'Москва', 'Семеновская пл.', '7', 'корп. 17', '55.78361', '37.721301', '09:00', '20:00', true, true, true, true, true, true, 31, 188),
(54, 'Москва', 'Сокольническая пл.', '4', 'корп. 1-2', '55.789922', '37.677894', '10:00', '19:00', true, true, true, true, true, false, 22, 96),
(55, 'Москва', 'Стремянный пер.', '36', NULL, '55.727334', '37.627813', '10:00', '19:00', true, false, false, true, false, false, 0, 0),
(56, 'Москва', 'ул. 3-Я Фрунзенская', '9', NULL, '55.72124', '37.576825', '09:00', '20:00', true, true, true, true, false, true, 26, 93),
(57, 'Москва', 'ул. Авиамоторная', '10', 'кор. 1', '55.754259', '37.715246', '10:00', '19:00', true, true, true, true, true, false, 31, 227),
(58, 'Москва', 'ул. Автозаводская', '6', NULL, '55.709449', '37.661042', '09:00', '20:00', true, true, true, true, false, true, 32, 181),
(59, 'Москва', 'ул. Адмирала Макарова', '6', 'стр. 13', '55.83566', '37.490497', '09:00', '20:00', true, true, false, true, true, true, 29, 72),
(60, 'Москва', 'ул. Академика Скрябина', '1', NULL, '55.715728', '37.797685', '10:00', '19:00', true, true, true, false, false, false, 28, 135),
(61, 'Москва', 'ул. Академика Янгеля', '2', NULL, '55.596457', '37.599822', '10:00', '19:00', true, true, true, true, true, false, 35, 151),
(62, 'Москва', 'ул. Арбат', '51', 'стр. 1', '55.747784', '37.586688', '10:00', '19:00', true, true, true, true, false, false, 23, 64),
(63, 'Москва', 'ул. Б. Черкизовская', '5А', NULL, '55.797306', '37.718723', '10:00', '19:00', true, true, true, true, true, false, 28, 110),
(64, 'Москва', 'ул. Барклая', '7', 'кор. 1', '55.740588', '37.501285', '09:00', '20:00', true, true, true, true, true, true, 21, 115),
(65, 'Москва', 'ул. Бахрушина', '32', 'стр. 1', '55.731952', '37.637084', '09:00', '20:00', true, true, true, true, false, true, 28, 230),
(66, 'Москва', 'ул. Богданова', '50', NULL, '55.650632', '37.394449', '09:00', '20:00', true, true, true, false, true, true, 16, 294),
(67, 'Москва', 'ул. Большая Лубянка', '16', 'стр. 1', '55.762936', '37.628846', '09:00', '18:00', true, true, false, true, false, false, 66, 36),
(68, 'Москва', 'ул. Большая Никитская', '33', 'стр. 1', '55.75709', '37.595618', '09:00', '18:00', true, true, true, true, false, false, 29, 85),
(69, 'Москва', 'ул. Большая Полянка', '30', NULL, '55.734202', '37.618866', '10:00', '19:00', true, true, true, true, false, false, 42, 47),
(70, 'Москва', 'ул. Большая Черкизовская', '12', 'корп. 1', '55.797078', '37.725388', '10:00', '19:00', true, true, false, false, false, false, 51, 63),
(71, 'Москва', 'ул. Братиславская', '14', NULL, '55.659124', '37.755015', '09:00', '20:00', true, false, true, false, true, true, 42, 59),
(72, 'Москва', 'ул. Бутырская', '11', NULL, '55.79601', '37.583391', '10:00', '19:00', true, true, true, true, false, false, 48, 93),
(73, 'Москва', 'ул. Веневская', '6', NULL, '55.54785', '37.543255', '09:00', '20:00', true, true, true, true, true, true, 33, 198),
(74, 'Москва', 'ул. Вешняковская', '20Б', NULL, '55.721204', '37.823062', '10:00', '20:00', true, true, true, true, true, true, 29, 125),
(75, 'Москва', 'ул. Владимирская 2-я', '45', NULL, '55.749359', '37.786267', '10:00', '19:00', true, true, true, false, true, false, 15, 20),
(76, 'Москва', 'ул. Воздвиженка', '9', NULL, '55.752592', '37.604753', '09:00', '20:00', true, true, true, true, false, true, 52, 83),
(77, 'Москва', 'ул. Воронцовская', '43', 'стр. 1', '55.733057', '37.66495', '09:00', '18:00', true, true, false, false, false, false, 39, 44),
(78, 'Москва', 'ул. Генерала Белова', '33А', NULL, '55.612273', '37.722127', '10:00', '19:00', true, true, true, false, true, false, 17, 343),
(79, 'Москва', 'ул. Генерала Глаголева', '30', 'корп. 2', '55.788631', '37.46679', '10:00', '19:00', true, true, true, true, false, false, 25, 80),
(80, 'Москва', 'ул. Декабристов', '20', 'корп. 2', '55.862343', '37.608949', '10:00', '19:00', true, true, true, true, true, false, 23, 204),
(81, 'Москва', 'ул. Дмитрия Ульянова', '24', NULL, '55.686005', '37.575828', '10:00', '19:00', true, true, false, false, true, false, 41, 37),
(82, 'Москва', 'ул. Долгоруковская', '40', NULL, '55.778735', '37.602023', '10:00', '19:00', true, true, true, true, true, false, 27, 46),
(83, 'Москва', 'ул. Енисейская', '11', NULL, '55.865288', '37.661437', '10:00', '19:00', true, true, true, true, false, false, 40, 96),
(84, 'Москва', 'ул. Земляной вал', '14-16', 'стр. 1', '55.761305', '37.65629', '09:00', '18:00', true, true, true, false, false, false, 0, 0),
(85, 'Москва', 'ул. Земляной вал', '27', 'стр. 1', '55.759035', '37.658293', '09:00', '20:00', true, true, true, false, false, true, 31, 103),
(86, 'Москва', 'ул. Земляной Вал', '52/16', 'стр. 1', '55.748949', '37.655131', '10:00', '19:00', true, true, true, true, false, false, 58, 49),
(87, 'Москва', 'ул. Ивантеевская', '23', NULL, '55.815752', '37.731802', '10:00', '19:00', true, false, true, true, true, false, 29, 139),
(88, 'Москва', 'ул. Каланчевская', '35', NULL, '55.776781', '37.647891', '10:00', '19:00', true, false, true, true, false, false, 59, 38),
(89, 'Москва', 'ул. Кантемировская', '47', NULL, '55.637799', '37.656182', '10:00', '19:00', true, false, false, false, true, false, 20, 122),
(90, 'Москва', 'ул. Киевская', '2', NULL, '55.74332', '37.562694', '10:00', '19:00', true, false, false, false, false, false, 52, 29),
(91, 'Москва', 'ул. Краснопрудная', '18', 'стр. 1', '55.777287', '37.662883', '10:00', '19:00', true, false, false, false, false, false, 57, 47),
(92, 'Москва', 'ул. Пушечная', '5', NULL, '55.761598', '37.622082', '09:00', '18:00', true, false, true, false, false, false, 38, 97),
(93, 'Москва', 'ул. Кузнецкий Мост', '17', 'стр. 1', '55.762272', '37.624822', '09:00', '20:00', true, true, true, false, false, true, 48, 115),
(94, 'Москва', 'ул. Лавочкина', '34', NULL, '55.856341', '37.493847', '10:00', '21:00', true, false, true, false, true, true, 26, 155),
(95, 'Москва', 'ул. Люблинская', '165', NULL, '55.650505', '37.745924', '09:00', '20:00', true, true, true, true, true, true, 21, 248),
(96, 'Москва', 'ул. Люблинская', '4', 'корп. 1', '55.707841', '37.729925', '10:00', '19:00', true, false, false, false, false, false, 32, 66),
(97, 'Москва', 'ул. Люсиновская', '72', 'помещ. 7/1', '55.713699', '37.621839', '10:00', '19:00', true, true, true, true, false, false, 29, 204),
(98, 'Москва', 'ул. Марксистская', '5', 'стр. 1', '55.737182', '37.663952', '09:00', '20:00', true, true, true, true, true, true, 26, 310),
(99, 'Москва', 'ул. Маршала Бирюзова', '8', 'корп. 1', '55.792189', '37.496794', '10:00', '20:00', true, true, true, true, true, true, 24, 151),
(100, 'Москва', 'ул. Менжинского', 21, NULL, '55.868854', '37.667447', '09:00', '20:00', true, true, true, false, true, true, 23, 156),
(101, 'Москва', 'ул. Митинская', '35', NULL, '55.848013', '37.355201', '10:00', '20:00', true, true, true, true, true, true, 30, 115),
(102, 'Москва', 'ул. Митинская', '36', 'корп. 2', '55.847078', '37.362154', '10:00', '20:00', true, true, true, true, true, true, 21, 193),
(103, 'Москва', 'ул. Мясницкая', '35', NULL, '55.766045', '37.638081', '09:00', '20:00', true, true, false, true, true, true, 31, 215),
(104, 'Москва', 'ул. Новая Басманная', '37А', NULL, '55.76997', '37.669082', '10:00', '19:00', true, true, true, true, false, false, 29, 106),
(105, 'Москва', 'ул. Новослободская', '41', NULL, '55.783392', '37.596866', '10:00', '19:00', true, true, true, true, false, false, 20, 174),
(106, 'Москва', 'ул. Новый Арбат', '36', NULL, '55.753666', '37.57713', '09:00', '18:00', true, true, false, true, false, false, 64, 30),
(107, 'Москва', 'ул. Осенний бульвар', '7', 'кор. 1', '55.757794', '37.406944', '10:00', '20:00', true, true, true, true, true, true, 32, 81),
(108, 'Москва', 'ул. Планерная', '7', 'корп. 1', '55.863358', '37.433508', '09:00', '19:00', true, false, true, false, true, false, 16, 93),
(109, 'Москва', 'ул. Привольная', '65/32', NULL, '55.681534', '37.849886', '10:00', '19:00', true, true, true, true, true, false, 53, 116),
(110, 'Москва', 'ул. Пришвина', '23', NULL, '55.885499', '37.604682', '10:00', '19:00', true, true, true, true, true, false, 49, 109),
(111, 'Москва', 'ул. Профсоюзная', '104', NULL, '55.64192', '37.523465', '09:00', '21:00', true, false, false, false, true, true, 30, 100),
(112, 'Москва', 'ул. Профсоюзная', '12', NULL, '55.685437', '37.570123', '09:00', '19:00', true, true, true, true, true, false, 35, 50),
(113, 'Москва', 'ул. Профсоюзная', '15', NULL, '55.679514', '37.565335', '10:00', '19:00', true, false, true, false, false, false, 39, 54),
(114, 'Москва', 'ул. Профсоюзная', '56', NULL, '55.670021', '37.55248', '10:00', '20:00', true, false, false, true, true, true, 18, 105),
(115, 'Москва', 'ул. Рейсовая 2-я', '2', 'корп. 5', '55.605226', '37.286346', '09:00', '18:00', true, false, true, false, false, false, 0, 0),
(116, 'Москва', 'ул. Рождественская', '29', NULL, '55.707491', '37.928632', '09:00', '20:00', true, false, true, false, true, true, 26, 168),
(117, 'Москва', 'ул. Садовая-Триумфальная', '4/10', 'стр. 1', '55.770431', '37.599193', '10:00', '19:00', true, true, false, true, false, false, 41, 58),
(118, 'Москва', 'ул. Свободы', '13/2', 'стр. 1А', '55.829264', '37.451312', '10:00', '19:00', true, true, false, false, true, false, 38, 87),
(119, 'Москва', 'ул. Снежная', '26', NULL, '55.854997', '37.653388', '10:00', '19:00', true, true, false, true, false, false, 38, 86),
(120, 'Москва', 'ул. Совхозная', '41', NULL, '55.674575', '37.760234', '09:00', '20:00', true, true, true, true, true, true, 41, 115),
(121, 'Москва', 'ул. Тверская', '6/1', 'стр. 7', '55.759734', '37.612506', '10:00', '19:00', true, true, false, true, false, false, 45, 14),
(122, 'Москва', 'ул. Тверская', '8', 'стр. 1', '55.76212', '37.60964', '10:00', '19:00', true, true, true, true, false, false, 17, 114),
(123, 'Москва', 'ул. Чертановская', '1в', 'корп. 1', '55.639461', '37.607143', '10:00', '20:00', true, false, true, true, true, true, 35, 120),
(124, 'Москва', 'ул. Широкая', '13а', NULL, '55.888109', '37.662461', '10:00', '20:00', true, true, false, true, true, true, 53, 104),
(125, 'Москва', 'ул. Щукинская', '42', NULL, '55.809474', '37.464571', '10:00', '21:00', true, false, false, false, false, true, 34, 34),
(126, 'Москва', 'Химкинский бульвар', '16', 'корп. 1', '55.851985', '37.443012', '10:00', '20:00', true, true, false, false, true, true, 22, 137),
(127, 'Москва', 'Ходынский бульвар', '2', null, '55.789396', '37.536832', '10:00', '19:00', true, false, true, false, true, false, 67, 35),
(128, 'Москва', 'шоссе Энтузиастов', '31', 'стр. 39', '55.758863', '37.75205', '10:00', '19:00', true, false, true, true, false, false, 42, 55),
(129, 'Москва', 'Щелковское шоссе', '69', NULL, '55.810638', '37.794864', '09:00', '20:00', true, true, false, false, true, true, 31, 107),
(130, 'Москва', 'Ярцевская', '32', NULL, '55.741287', '37.417688', '09:00', '20:00', true, false, true, false, true, true, 14, 155);
