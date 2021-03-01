use codeup_tests_db;


UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

SELECT * FROM albums WHERE date < 1980;
UPDATE albums SET year = year - 100 WHERE date < 1980;


SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET name = 'Peter Jackson' WHERE artist = 'Michael Jackson';