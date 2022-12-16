SET autocommit = 0;
START TRANSACTION;
BEGIN;
UPDATE table1 set value = 500 where id = 1; 
DO SLEEP(10);
UPDATE table2 set value = 600 where id = 2; 
COMMIT;