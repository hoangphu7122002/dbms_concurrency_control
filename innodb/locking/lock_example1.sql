USE dbms_assingment;

UPDATE employees SET name = 'HP7122002' WHERE emp_no = '1';
SELECT CONNECTION_ID(); #show thread id

#session 1:

INSERT INTO employees VALUES('5','Phuc Nguyen','7-6-2013');
LOCK TABLE employees READ;
#session 2:

SELECT * FROM performance_schema.data_locks;
SELECT * FROM information_schema.innodb_trx;

SELECT * FROM employees WHERE emp_no = '5';

SELECT LOCK_TYPE,LOCK_STATUS,OWNER_THREAD_ID
FROM performance_schema.metadata_locks
WHERE OBJECT_NAME='employees' AND OBJECT_TYPE="TABLE";

#session3:
UPDATE employees SET name = 'DH2002' WHERE emp_no = '4';

#session2:
SELECT LOCK_TYPE,LOCK_STATUS,OWNER_THREAD_ID
FROM performance_schema.metadata_locks
WHERE OBJECT_NAME='employees' AND OBJECT_TYPE="TABLE";

#session1:
BEGIN;
SELECT @@autocommit;
SELECT @@transaction_isolation;