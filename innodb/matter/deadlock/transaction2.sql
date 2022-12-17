USE dbms_assignment;

SET autocommit = 0;
START TRANSACTION;
BEGIN;
UPDATE table2 set value = 300;
DO SLEEP(10);
UPDATE table1 set value = 300;
COMMIT;