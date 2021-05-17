--Employee Table--

CREATE TABLE Employees (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  manager_id INT,
  job_id INT,
  FOREIGN KEY (job_id) REFERENCES job(id),
  FOREIGN KEY (manager_id) REFERENCES Employees(id)

);

--Job Table--

CREATE TABLE job (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(20),
  salary DECIMAL,
  branch_id INT,
  FOREIGN KEY (branch_id) REFERENCES branch(id)
);

--Branch info--
CREATE TABLE branch (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20)
 
);
--EmployeeNames--
INSERT INTO Employees (first_name, last_name, manager_id, role_id)
VALUE ("Sarah", "Carter", null, 1);
INSERT INTO Employees (first_name, last_name, manager_id, role_id)
VALUE ("Luna", "Arellano", null, 2);
INSERT INTO Employees (first_name, last_name, manager_id, role_id)
VALUE ("Taylor","Sheldon",null,3);
INSERT INTO Employees (first_name, last_name, manager_id, role_id)
VALUE ("Bradley", "Smith", 1, 3);
INSERT INTO Employees (first_name, last_name, manager_id, role_id)
VALUE ("Pierce", "Stewart", 1, 5);
INSERT INTO Employees (first_name, last_name, manager_id, role_id)
VALUE ("Chelsea", "Swift", 1, 6);
INSERT INTO Employees (first_name, last_name, manager_id, role_id)
VALUE ("Tom", "Cruz", 2, 7);


INSERT INTO branch (name)
VALUE ("Operations"),
INSERT INTO branch (name)
VALUE ("Accounting"),
INSERT INTO branch (name)
VALUES ("Marketing"),
INSERT INTO branch (name)
VALUE ("Production"),

INSERT INTO job (title, salary, department_id)
VALUE ("Lead Engineer", 150000, 2);
INSERT INTO job (title, salary, department_id)
VALUE ("Business Operations", 410000, 4);
INSERT INTO job (title, salary, department_id)
VALUE ("Accountant Manager", 25000, 3);
INSERT INTO job (title, salary, department_id)
VALUE ("Sales Lead", 80000, 1 )
INSERT INTO job (title, salary, department_id)
VALUE ("Lawyer", 100000, 1);
INSERT INTO job (title, salary, department_id)
VALUE ("Gamer", 120000, 2);
INSERT INTO job (title, salary, department_id)
VALUE ("Cashier", 100000, 4);

SELECT * FROM Employees;
SELECT * FROM branch;
SELECT * FROM job;
