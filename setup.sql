DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE IF NOT EXISTS passwords.people (
  firstName varchar(50) NOT NULL COMMENT 'The first name of a person.',
  lastName varchar(50) NOT NULL COMMENT 'The last name of a person.',
  email varchar(320) NOT NULL COMMENT 'The email of a person. No two people within the passwords database can use the same email.',
  comment varchar(60) NULL COMMENT 'A little comment about the person.',
  CONSTRAINT peoplePK PRIMARY KEY (email)
);

CREATE TABLE IF NOT EXISTS passwords.websites (
  name varchar(50) NOT NULL COMMENT 'Name of the website.',
  url varchar(2000) NOT NULL COMMENT 'URL of the website.',
  CONSTRAINT websitesPK PRIMARY KEY (url)
);
