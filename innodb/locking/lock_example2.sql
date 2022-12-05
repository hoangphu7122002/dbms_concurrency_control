SET autocommit = 0;

LOCK TABLE employees READ, employees WRITE;

SELECT OBJECT_NAME,LOCK_TYPE,LOCK_STATUS,OWNER_THREAD_ID
FROM performance_schema.metadata_locks
WHERE OBJECT_SCHEMA='employees' AND OBJECT_TYPE="TABLE";

SELECT CONNECTION_ID(); #show thread id
SELECT thread_id,processlist_id
FROM performance_schema.threads
WHERE thread_id=58;

SELECT trx_id FROM information_schema.innodb_trx 
WHERE trx_mysql_thread_id=8;

SELECT
	ENGINE_TRANSACTION_ID as trx_id,
    OBJECT_NAME as 'table',
    INDEX_NAME,
    LOCK_DATA,
    LOCK_MODE,
    LOCK_STATUS
FROM performance_schema.data_locks;

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

    