USE DBMS_ASSIGNMENT;

SET autocommit = 0;
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION;
UPDATE book SET name = 'Changed';
DO SLEEP(10);
COMMIT;
SELECT * FROM book;