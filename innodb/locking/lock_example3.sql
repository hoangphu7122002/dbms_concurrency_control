####INTENTION LOCK####
BEGIN;
INSERT INTO t3 VALUES (200); #create t3 table
SELECT ENGINE_TRANSACTION_ID as trx_id,
		OBJECT_NAME as 'table',
		INDEX_NAME,
		LOCK_DATA,
		LOCK_MODE,
		LOCK_STATUS
FROM performance_schema.data_locks;

SELECT * FROM test; #create table test
 SELECT OBJECT_NAME,LOCK_TYPE,LOCK_STATUS,OWNER_THREAD_ID
 FROM performance_shcema.metadata_locks
 WHERE OBJECT_SCHEMA='dbms_assignment' AND OBJECT_TYPE='TABLE';
 
#sesssion 2:
BEGIN;
SELECT * FROM employees WHERE emp_no = '1' FOR SHARE;
SELECT ENGINE_TRANSACTION_ID as trx_id,
		OBJECT_NAME as 'table',
		INDEX_NAME,
		LOCK_DATA,
		LOCK_MODE,
		LOCK_STATUS
FROM performance_schema.data_locks;
