DROP DATABASE IF EXISTS Employee;

CREATE database Employee_Tracker;

USE Employee_Tracker;

INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Customer Service");
INSERT INTO department (name)
VALUES ("Human Resources");
INSERT INTO department (name)
VALUES ("Legal");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Manager", 101000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 250000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 320000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Developer", 425000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 550000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Halsey", "Yungblud", 1, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Travis", "Barker", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Machine", "Gun", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kelly", "Disturbed", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tool", "Nirvana", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("The", "Weekend", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Ellie", "Goulding", 4, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Good", "Charlotte", 1010101, 2);