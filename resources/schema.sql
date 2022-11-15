DROP DATABASE IF EXISTS db_fakeapp_police;

CREATE DATABASE db_fakeapp_police;

CREATE TABLE police(
    id INT NOT NULL AUTO_INCREMENT,
    userId INT,
    content VARCHAR(200),
    recordedDate DATE,
    PRIMARY KEY(id)
);

SELECT * FROM police;

SELECT * FROM police WHERE id = 123;