SET autocommit = 0;
START TRANSACTION;
BEGIN;
UPDATE table2 set value = 700 where id = 2; 
DO SLEEP(10);
UPDATE table1 set value = 800 where id = 1; 
COMMIT;