DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE IF NOT EXISTS passwords.people (
  personID smallint(5) NOT NULL COMMENT,
  firstName varchar(50) NOT NULL COMMENT,
  lastName varchar(50) NOT NULL COMMENT,
  email varchar(320) NOT NULL COMMENT,
  comment varchar(60) NULL COMMENT,
  CONSTRAINT peoplePK PRIMARY KEY (personID)
);

CREATE TABLE IF NOT EXISTS passwords.websites (
  websiteID smallint(5) NOT NULL COMMENT,
  name varchar(50) NOT NULL COMMENT,
  url varchar(2000) NOT NULL COMMENT,
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
