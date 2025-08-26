CREATE DATABASE KLAVI;

CREATE TABLE KLAVI.user_define(
	id INT PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO KLAVI.user_define (id, name) VALUES
(1, 'Ariel'),
(2, 'Taylor'),
(3, 'Luka');



CREATE TABLE KLAVI.role_define(
	id INT PRIMARY KEY,
    label VARCHAR(50)
);

INSERT INTO KLAVI.role_define (id, label) VALUES
(1, 'charge'),
(2, 'analyse'),
(3, 'produce_consume'),
(4, 'manage ');

CREATE TABLE KLAVI.action_define(
	id INT PRIMARY KEY,
    description VARCHAR(50)
);

INSERT INTO KLAVI.action_define (id, description) VALUES
(1,'create bills'),
(2,'create products'),
(3,'view bills'),
(4,'view products'),
(5,'modify products'),
(6,'delete products');



CREATE TABLE KLAVI.user_role_rela(
	id INT PRIMARY KEY,
    user_id INT,
    role_id INT
);

INSERT INTO KLAVI.user_role_rela(id, user_id, role_id) VALUES
(1,1,1),
(2,2,2),
(3,2,3),
(4,3,2),
(5,3,3),
(6,3,4);



CREATE TABLE KLAVI.role_action_rela(
	id INT PRIMARY KEY,
    role_id INT,
    action_id INT
);

INSERT INTO KLAVI.role_action_rela (id,role_id, action_id) VALUES
(1,1,1),
(2,1,3),
(3,2,4),
(4,3,2),
(5,3,6),
(6,4,5);
