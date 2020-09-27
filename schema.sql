-- Drops the company_db if it exists currently --
DROP DATABASE IF EXISTS company_db;
-- Creates the "company_db" database --
CREATE DATABASE company_db;

-- Makes it so all of the following code will affect company_db --
USE company_db;

-- Creates the table "department" within animals_db --
CREATE TABLE department (
  -- Makes an int for the id that auto incriments
  id INT NOT NULL AUTO_INCREMENT,
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30) NOT NULL,
  -- sets the id as the primary key
  PRIMARY KEY(id)
  
);

CREATE TABLE roles (
  -- Makes an int for the id that auto incriments
  id INT NOT NULL AUTO_INCREMENT,
  title varchar(30) not null,
  salary decimal,
  department_id int,
  PRIMARY KEY(id),
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE manager (
  id INT NOT NULL AUTO_INCREMENT,
  employee_id int,
  PRIMARY KEY(id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id int,
  manager_id int,
  PRIMARY KEY(id),
  FOREIGN KEY (role_id) REFERENCES roles(id),
  FOREIGN KEY (manager_id) REFERENCES manager(id)
);

ALTER TABLE manager
ADD FOREIGN KEY (employee_id) REFERENCES employee(id);



-- Creates new rows containing data in all named columns --
INSERT INTO department (name)
VALUES ('Sales');

INSERT INTO department (name)
VALUES ('Engineering');

INSERT INTO department (name)
VALUES ('Finance');

INSERT INTO department (name)
VALUES ('Legal');

INSERT INTO roles (title, salary, department_id)
VALUES ('Lawyer', 50000, 4);

select * from roles
