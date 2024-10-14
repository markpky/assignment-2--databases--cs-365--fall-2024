DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE passwords.people (
  firstName varchar(50) NOT NULL COMMENT 'The first name of a person.',
  lastName varchar(50) NOT NULL COMMENT 'The last name of a person.',
  email varchar(320) NOT NULL COMMENT 'The email of a person. No two people within the passwords database can use the same email.',
  comment varchar(60) NULL COMMENT 'A little comment about the person.',
  CONSTRAINT peoplePK PRIMARY KEY (email)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
