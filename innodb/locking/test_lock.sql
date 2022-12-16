USE dbms_assignment;

SET autocommit = 0;
LOCK TABLE messages READ, book WRITE;

UNLOCK TABLES;
commit;