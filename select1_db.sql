/* 3 Задание*/
/*Название и продолжительность самого длительного трека.*/
SELECT name, duration FROM Track
ORDER BY duration
LIMIT 1;

/*Название треков, продолжительность которых не менее 3,5 минут.*/
SELECT name, duration FROM Track
WHERE duration>=210;

/*Названия сборников, вышедших в период с 2018 по 2020 год включительно.*/
SELECT name, date_release_col FROM Collection
WHERE date_release_col BETWEEN 2018 AND 2021;

/*Исполнители, чьё имя состоит из одного слова.*/
SELECT DISTINCT name FROM Bands
WHERE name NOT LIKE '% %';

/*Название треков, которые содержат слово «мой» или «my».*/
SELECT name FROM Track
WHERE lower(name) LIKE '%мой%' OR lower(name) LIKE '%my%';


/* 4 Задание*/
/*Количество исполнителей в каждом жанре.*/
SELECT g.name, count(band_id) FROM Genre_Band gb
LEFT JOIN Genre g ON gb.genre_id = g.id
GROUP BY g.name;

--/*Количество треков, вошедших в альбомы 2019–2020 годов.*/
--SELECT count(t.id) FROM Track t
--LEFT JOIN Album a ON t.Album_id = a.id
--GROUP BY a.id;

/*Средняя продолжительность треков по каждому альбому.*/
SELECT a.name, avg(t.duration) FROM Track t
LEFT JOIN Album a ON t.Album_id = a.id
GROUP BY a.id;

/*Все исполнители, которые не выпустили альбомы в 2020 году.*/
SELECT name FROM Bands b
except
	(SELECT b.name FROM band_album ba
	JOIN Album a ON a.id = ba.Album_id
	JOIN Bands b ON b.id = ba.Band_id
	WHERE a.date_release = 2020);


/*Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).*/
SELECT DISTINCT col.name FROM Collection col
JOIN Track_Collection tc ON tc.Collection_id = col.id
JOIN Track t ON t.id = tc.Track_id
JOIN Album a ON a.id = t.Album_id
JOIN Band_Album ba ON ba.Album_id = a.id
JOIN Bands b ON b.id = ba.Band_id
WHERE b.name = 'Imagine Dragons';

/*Названия альбомов, в которых присутствуют исполнители более чем одного жанра.*/
SELECT a.name, count(g.name) FROM Album a
JOIN Band_Album ba ON ba.Album_id = a.id
JOIN Bands b ON b.id = ba.Band_id
JOIN Genre_Band gb ON gb.Band_id = b.id
JOIN Genre g ON g.id = gb.Genre_id
GROUP BY a.name
HAVING count(g.name) > 1; 

/*Наименования треков, которые не входят в сборники.*/
SELECT DISTINCT t.name FROM Track t
LEFT JOIN Track_Collection tc ON tc.Track_id = t.id
WHERE tc.Collection_id IS NULL;

/*Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.*/
SELECT DISTINCT t.name FROM Track t
WHERE t.duration = (SELECT MIN(duration) FROM Track);


/*Названия альбомов, содержащих наименьшее количество треков.*/
SELECT a.name, count(t.id) FROM Album a
JOIN Track t ON t.Album_id = a.id
GROUP BY a.id
HAVING count(t.id) = 
	(SELECT count(t.id) FROM Album a
	JOIN Track t ON t.Album_id = a.id
	GROUP BY a.id
	ORDER BY count(t.id)
	LIMIT 1);