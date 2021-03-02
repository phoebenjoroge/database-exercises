use codeup_tests_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT * FROM albums WHERE date > 1989 && date < 2000;
SELECT * FROM albums WHERE genre like '%rock%';