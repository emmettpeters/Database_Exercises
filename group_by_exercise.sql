use codeup_test_db;

select distinct *
from titles
group by title
order by title;
