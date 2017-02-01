-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.

SELECT title FROM albums WHERE artist_id = (SELECT id FROM artists WHERE name = 'Queen');

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".

SELECT COUNT(name) FROM tracks WHERE media_type_id = (SELECT id FROM media_types WHERE name = 'Protected MPEG-4 video file')

-- 3) Find the least expensive track that has the genre "Electronica/Dance".

SELECT MAX(unit_price) FROM tracks WHERE genre_id = (SELECT id FROM genres WHERE name = 'Electronica/Dance');

-- 4) Find the all the artists whose names start with A.

SELECT name FROM artists WHERE name LIKE 'A%';

-- 5) Find all the tracks that belong to playlist 1.

SELECT name FROM tracks INNER JOIN playlists_tracks ON tracks.id=playlists_tracks.track_id WHERE playlists_tracks.playlist_id = 1
