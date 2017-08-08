USE codeup_test_db;

-- SELECT * FROM albums\G;
SELECT * FROM albums;

UPDATE albums
SET sales = (sales * 10);

SELECT * FROM albums;

-- SELECT name AS "all albums in table"
-- FROM albums;


-- SELECT name as "Albums released b4 1980" FROM albums Where release_date < 1980;

-- UPDATE albums
-- SET release_date = release_date + 100
-- Where release_date > 1980;

-- SELECT * FROM albums;




-- UPDATE albums
-- SET artist = 'Peter Jackson'
-- WHERE artist = 'Michael Jackson';


-- SELECT name as "Michael Jackson Albums" FROM albums where artist = "peter jackson"\G;
