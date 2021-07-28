DROP DATABASE IF EXISTS Employee_Tracker ;
CREATE DATABASE Employee_Tracker;

USE Employee_Tracker;

CREATE TABLE department(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dept_name varchar(30),
);

CREATE TABLE role (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NULL,
    salary DECIMAL(10.3) NULL,
    department_id INT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager_id INTEGER,
    FOREIGN KEY (role_id) REFERENCES roles(id),
    FOREIGN KEY (manager_id) REFERENCES empoyee(id)
);