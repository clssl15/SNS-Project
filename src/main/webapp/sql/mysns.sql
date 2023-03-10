CREATE DATABASE IF NOT EXISTS sns_project
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE sns_project;

CREATE TABLE IF NOT EXISTS user(
	id VARCHAR(128) PRIMARY KEY, -- "email"
	jsonstr VARCHAR(1024)
);

CREATE TABLE IF NOT EXISTS feed(
	no INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id VARCHAR(128), -- "email"
	content VARCHAR(4096),
	ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);