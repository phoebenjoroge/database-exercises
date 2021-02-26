use codeup_tests_db;

SELECT * FROM albums WHERE date > 1991;
SELECT * FROM albums WHERE genre = 'disco';
SELECT * FROM albums WHERE artist = 'Whitney Houston';

DELETE FROM albums WHERE date > 1991;
DELETE FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE artist = 'Whitney Houston';