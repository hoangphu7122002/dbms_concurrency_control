USE dbms_assignment;

SET autocommit = 0;

START TRANSACTION;
UPDATE book SET name="Test change" WHERE b_id=2;
SELECT * FROM book;
COMMIT;

