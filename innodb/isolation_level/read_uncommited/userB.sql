USE dbms_assignment;

SET autocommit = 0;

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT * FROM book WHERE b_id=2;