DROP TABLE IF EXISTS bank_branch;

CREATE TABLE bank_branch (
 id INT PRIMARY KEY,
 city VARCHAR(255) NOT NULL,
 street VARCHAR(255) NOT NULL,
 house VARCHAR(10) NOT NULL,
 housing VARCHAR(10),
 latitude FLOAT NOT NULL,
 longitude FLOAT NOT NULL,
 schedule_from TIME NOT NULL,
 schedule_till TIME NOT NULL);