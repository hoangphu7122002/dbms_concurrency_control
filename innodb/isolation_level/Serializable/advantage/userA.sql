USE dbms_assignment;

SET autocommit = 0;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

START TRANSACTION;
SELECT * FROM book;
DO SLEEP(10);
SELECT * FROM book;
COMMIT;

