DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE IF NOT EXISTS passwords.people (
  personID smallint(5) NOT NULL COMMENT 'Unique identifier for a person.',
  firstName varchar(50) NOT NULL COMMENT 'The first name of a person.',
  lastName varchar(50) NOT NULL COMMENT 'The last name of a person.',
  email varchar(320) NOT NULL COMMENT 'The email of a person. No two people within the passwords database can use the same email.',
  comment varchar(60) NULL COMMENT 'A little comment about the person.',
  CONSTRAINT peoplePK PRIMARY KEY (personID)
);

CREATE TABLE IF NOT EXISTS passwords.websites (
  websiteID smallint(5) NOT NULL COMMENT 'Unique identifier for a website',
  name varchar(50) NOT NULL COMMENT 'Name of the website.',
  url varchar(2000) NOT NULL COMMENT 'URL of the website.',
  CONSTRAINT websitesPK PRIMARY KEY (websiteID)
);

CREATE TABLE IF NOT EXISTS passwords.users (
  username varchar(100) NOT NULL,
  password varchar(256) NOT NULL,
  timestamp datetime NOT NULL,
  comment varchar(60) DEFAULT NULL,
  websiteID smallint(5) NOT NULL,
  PRIMARY KEY (username),
  KEY usersWebsitesFK (websiteID),
  CONSTRAINT usersWebsitesFK FOREIGN KEY (websiteID) REFERENCES websites (websiteID) ON DELETE CASCADE ON UPDATE CASCADE
)
