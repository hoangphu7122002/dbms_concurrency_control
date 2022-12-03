USE dbms_assignment;

SET autocommit = 0;

START TRANSACTION;
UPDATE book SET name = 'expired' WHERE b_id=2;
DO SLEEP(10);
ROLLBACK;
SELECT * FROM book;

