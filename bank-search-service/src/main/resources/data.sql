DELETE FROM bank_branch;

INSERT INTO bank_branch (id, city, street, house, housing, latitude, longitude, schedule_from, schedule_till) VALUES
(1, 'Город', 'Улица', 'дом1', 'корпус1', 45.55, 22.32, '10:00:00', '22:00:00'),
(2, 'Город', 'Улица', 'дом2', 'корпус2', 55.55, 32.32, '10:00:00', '22:00:00'),
(3, 'Город', 'Улица', 'дом3', 'корпус2', 65.55, 42.32, '10:00:00', '22:00:00');