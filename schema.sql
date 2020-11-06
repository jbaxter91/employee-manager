DROP DATABASE IF EXISTS company_DB;

CREATE DATABASE company_DB;

USE company_DB;

CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NULL,
  salary DECIMAL NULL,
  department_id INT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NULL,
  last_name VARCHAR(100) NULL,
  role_id INT NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
);