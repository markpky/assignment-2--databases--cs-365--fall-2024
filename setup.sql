DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE IF NOT EXISTS passwords.people (
  personID smallint(5) NOT NULL,
  firstName varchar(50) NOT NULL,
  lastName varchar(50) NOT NULL,
  email varchar(320) NOT NULL,
  comment varchar(60) NULL,
  CONSTRAINT peoplePK PRIMARY KEY (personID)
);

CREATE TABLE IF NOT EXISTS passwords.websites (
  websiteID smallint(5) NOT NULL,
  name varchar(50) NOT NULL,
  url varchar(60) NOT NULL,
  comment varchar(60) DEFAULT NULL,
  CONSTRAINT websitesPK PRIMARY KEY (websiteID),
  UNIQUE KEY websites_unique (url)
);

CREATE TABLE IF NOT EXISTS passwords.users (
  personID smallint(5) NOT NULL,
  websiteID smallint(5) NOT NULL,
  username varchar(100) NOT NULL,
  password varchar(256) NOT NULL,
  timestamp datetime NOT NULL,
  comment varchar(60) DEFAULT NULL,
  PRIMARY KEY (username),
  CONSTRAINT usersWebsitesFK FOREIGN KEY (websiteID) REFERENCES websites (websiteID) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT users_people_FK FOREIGN KEY (personID) REFERENCES people (personID) ON DELETE CASCADE ON UPDATE CASCADE
);
