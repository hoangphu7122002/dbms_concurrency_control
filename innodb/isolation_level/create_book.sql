USE dbms_assignment;

DROP TABLE IF EXISTS book;

CREATE TABLE book(
	b_id INT PRIMARY KEY,
    name VARCHAR(50) NULL,
    author VARCHAR(120) NULL,
    category_id INT NULL
); 

INSERT INTO book(b_id,name,author,category_id) VALUES (1,'mySQL','HP1',1);
INSERT INTO book(b_id,name,author,category_id) VALUES (2,'mongoDB','H1',2);
INSERT INTO book(b_id,name,author,category_id) VALUES (3,'couchDB','H2',2);
INSERT INTO book(b_id,name,author,category_id) VALUES (4,'oracle','H3',3);
INSERT INTO	 book(b_id,name,author,category_id) VALUES (5,'noSQL','H4',2);
INSERT INTO book(b_id,name,author,category_id) VALUES (6,'SQL_Server','H5',1);
INSERT INTO book(b_id,name,author,category_id) VALUES (7,'kdB','HP2',3);