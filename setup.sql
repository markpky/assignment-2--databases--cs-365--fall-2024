DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

SOURCE _create-tables.sql;
SOURCE _init-insertion.sql;
