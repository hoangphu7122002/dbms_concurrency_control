USE DBMS_ASSIGNMENT;

SET autocommit = 0;

START TRANSACTION;
INSERT INTO book VALUES(100, "phantom", "ghost", 1);
COMMIT;

