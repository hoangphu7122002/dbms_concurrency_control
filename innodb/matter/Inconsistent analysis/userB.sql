USE dbms_assignment;

SET autocommit = 0;

START TRANSACTION;
UPDATE product SET quantity = quantity - 100 where productID = 1001;
COMMIT;