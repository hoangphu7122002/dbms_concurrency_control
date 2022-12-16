USE dbms_assignment;

SET autocommit = 0;
START TRANSACTION;
BEGIN;
INSERT INTO table1(name, value) VALUES('trans1', 100);
DO SLEEP(10);
INSERT INTO table2(name, value) VALUES('trans2', 100);
COMMIT;