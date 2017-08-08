USE codeup_test_db;
-- delete from albums where release_date > 1991;
-- SElECT name as "albums after 1991" FROM albums Where release_date > 1991;




-- delete from albums where genre like "%disco%";
-- SELECT name as "albums with disco genre" FROM albums where genre like "%disco%";


delete from albums where artist = "eagles";
-- select name as "albums by the eagles" from albums where artist = "eagles";