SELECT OBJECT_NAME,LOCK_TYPE,LOCK_STATUS,OWNER_THREAD_ID
FROM performance_schema.metadata_locks
WHERE OBJECT_SCHEMA='dbms_assignment' AND OBJECT_TYPE="TABLE";

SELECT CONNECTION_ID();

SELECT thread_id, processlist_id
FROM performance_schema.threads;

SELECT ENGINE_TRANSACTION_ID as trx_id, 
	  OBJECT_NAME as 'table',
	  INDEX_NAME,
	  LOCK_DATA,
	  LOCK_MODE,
	  LOCK_STATUS
FROM performance_schema.data_locks;

SELECT thread_id, processlist_id
FROM performance_schema.threads WHERE thread_id = 59;

SELECT trx_id FROM information_schema.innodb_trx 
WHERE trx_mysql_thread_id = 59;