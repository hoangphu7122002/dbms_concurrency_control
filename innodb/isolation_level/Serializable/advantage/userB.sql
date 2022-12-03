USE dbms_assignment;

SET autocommit = 0;

START TRANSACTION;
INSERT INTO book VALUES(200, "database", "Hiep", 1);
SELECT * FROM book;
COMMIT;

