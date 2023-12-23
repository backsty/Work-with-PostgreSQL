INSERT INTO Genre(name) VALUES
('Metal'),
('Rok'),
('Classic'),
('Ballad'),
('Instrumental'),
('Disco'),
('Pop'),
('Rave'),
('Jazz'),
('Folk'),
('New-age')
('Popular');

INSERT INTO Bands(name) values
('Imagine Dragons'),
('Coldplaу'),
('Maroon-5'),
('Rammstein'),
('Muse'),
('Twenty-one-pilots'),
('Metallica'),
('Blackpink'),
('Maneskin');

INSERT INTO Genre_Band VALUES
(2, 1),
(2, 2),
(2, 3),
(1, 4),
(2, 6),
(2, 7),
(2, 8),
(5, 8),
(4, 2),
(4, 1),
(4, 3),
(4, 8),
(4, 7),
(1, 5);

INSERT INTO Album(name, release_date) VALUES
('Born Pink', 2022),
('So Far So Good', 2020),
('Liebe ist für alle da', 2009),
('Supermassive Black Hole', 2006),
('The Fourth World', 2004),
('Book Lover Hits', 2019),
('Hymn for the Weekend', 2016),
('Это пройдёт', 2020),
('Rashl', 2020);

INSERT INTO Band_Album VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

INSERT INTO Track(name, Album_id, duration) VALUES
('Hard to Love', 5, 165),
('The Happiest Girl', 6, 205),
('The Fall', 1, 196),
('Time Bomb', 3, 203),
('Rammlied', 1, 318),
('Wiener Blut', 7, 232),
('Supermassive Black Hole', 1, 209),
('The Real Reality in the Galaxy', 1, 402),
('Human Independence Day, Pt. 1', 3, 237),
('Believer', 1, 204),
('Hymn For The Weekend', 1, 258),
('Нас догонит любовь', 3, 228),
('Attends moi', 1, 226);

INSERT INTO Collection(name, date_release_col) VALUES
('BLACKPINK — Born Pink', 2022),
('The Chainsmokers', 2020),
('Rammstein - Liebe ist für alle da', 2022),
('Supermassive Black Hole Twilight Soundtrack Version', 2006),
('The 4th World', 2004),
('Believer Piano Version', 2016),
('Порнофильмы — "Это пройдёт" (2020) NR. Playlist', 2020),
('Hymn For The Weekend', 2020),
('RashL - Live, Love, Dance', 2013);

INSERT INTO Track_Collection VALUES
(1, 13),
(2, 9),
(5, 13),
(10, 5),
(13, 6),
(14, 5),
(1, 7),
(2, 8),
(11, 5),
(5, 7),
(1, 5),
(2, 7);