
-- insert data 
INSERT INTO memberships (mem_num, mem_fname, mem_lname, mem_street, mem_city, mem_state, mem_zip, mem_balance)
VALUES
('200', 'Jack', 'Mudau', '1432 Honey Suckle Street', 'Nylstroom', 'LP', '0699', 0.00),
('210', 'George', 'Mkhize', '3324 Marula Avenue', 'Saldanha', 'WC', '7394', 11.00),
('220', 'Natasha', 'Rodwick', '4322 Gordon Road', 'Mossel Bay', 'WC', '6520', 1.00),
('230', 'Sarah', 'Bennet', '1110 PeggyVera Street', 'Ladysmith', 'KN', '3370', 6.00),
('240', 'Lesedi', 'Segobela', '1908 Aloe Street', 'Bethlehem', 'FS', '9701', 5.00),
('260', 'Mavis', 'Sibanda', '1923 Blue Bush Drive', 'Johannesburg', 'GP', '2091', 12.00),
('270', 'John', 'Mokoena', '1818 Tamboti Street', 'Vereeniging', 'GP', '1805', 4.00),
('280', 'Ntombi', 'Zulu', '9531 Loveday Circle', 'Witbank', 'MP', '1042', 0.00),
('290', 'Musa', 'Baloyi', '1711 Boxer Avenue', 'Polokwane', 'LP', '0700', 10.00);

SELECT * FROM memberships;

INSERT INTO prices (price_code, price_description, price_rentfee, price_dailylatefee)
VALUES
(1, 'Standard', 3.00, 1.00),
(2, 'New Release', 4.50, 3.00),
(3, 'Discount', 2.50, 2.00),
(4, 'Weekly Special', 2.00, 0.60);

SELECT * FROM prices;

INSERT INTO movies (movie_num, movie_title, movie_year, movie_cost, movie_genre, price_code)
VALUES
(4321, 'The Tiger''s Apprentice', 2024, 59.95, 'FAMILY', 2),
(4322, 'Carter', 2022, 25.49, 'ACTION', 1),
(4323, 'The Family Plan', 2023, 39.95, 'COMEDY', 3),
(4324, 'Arcadian', 2024, 89.99, 'HORROR', 2),
(4325, 'The Paramedic', 2020, 58.29, 'THRILLER', 4),
(4326, 'Step Sisters', 2018, 11.29, 'COMEDY', 3),
(4327, 'Abigail', 2024, 46.75, 'HORROR', 2),
(4328, 'Arthur The King', 2024, 98.35, 'FAMILY', 2),
(4329, 'The Tearsmith', 2024, 56.95, 'ROMANCE', 2);

SELECT * FROM movies;

INSERT INTO videos (vid_num, vid_indate, movie_num)
VALUES
(54321, '2024-01-02', 4321),
(54324, '2023-03-03', 4323),
(54325, '2024-02-03', 4328),
(34341, '2018-06-16', 4326),
(61388, '2022-09-18', 4322),
(34366, '2024-04-11', 4327),
(34367, '2024-01-09', 4324),
(61369, '2024-01-08', 4329),
(44392, '2020-07-22', 4325);

SELECT * FROM videos;

INSERT INTO rentals (rent_num, rent_date, mem_num)
VALUES
(4001, '2024-04-01', '280'),
(4002, '2024-04-02', '210'),
(4003, '2024-04-01', '260'),
(4004, '2024-04-12', '220'),
(4005, '2024-04-01', '230'),
(4006, '2024-04-03', '200'),
(4007, '2024-04-03', '230'),
(4008, '2024-04-05', '290'),
(4009, '2024-04-02', '260');

SELECT * FROM rentals;


INSERT INTO rental_details (rent_num, vid_num, detail_fee, detail_duedate, detail_returndate, detail_dailylatefee)
VALUES
(4001, 54321, 2.00, '2024-04-05', '2024-04-03', 1.00),
(4002, 54324, 3.00, '2024-04-04', '2024-04-03', 1.00),
(4003, 54325, 3.50, '2024-04-07', '2024-04-04', 3.00),
(4004, 34341, 0.00, '2024-04-15', '2024-04-17', 3.00),
(4005, 61388, 2.00, '2024-04-06', '2024-04-09', 1.00),
(4006, 34366, 2.00, '2024-04-06', '2024-04-08', 1.00),
(4007, 34367, 3.50, '2024-04-06', '2024-04-06', 3.00),
(4008, 61369, 0.00, '2024-04-04', '2024-04-08', 3.00),
(4009, 44392, 3.50, '2024-04-05', '2024-04-04', 1.00);


SELECT * FROM rental_details;

