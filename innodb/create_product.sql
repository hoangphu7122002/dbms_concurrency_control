USE DBMS_ASSIGNMENT;

DROP TABLE IF EXISTS product;

CREATE TABLE product(
	productID VARCHAR(4) NOT NULL,
    quantity INT NOT NULL
); 

INSERT INTO product(productID,quantity) VALUES ('1001',700);
INSERT INTO product(productID,quantity) VALUES ('1002',600);
INSERT INTO product(productID,quantity) VALUES ('1003',500);
INSERT INTO product(productID,quantity) VALUES ('1004',400);
INSERT INTO product(productID,quantity) VALUES ('1005',300);