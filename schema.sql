--EmployeeNames--
INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUE ("Sarah", "Carter", null, 1);
INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUE ("Luna", "Arellano", null, 2);
INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUE ("Taylor","Sheldon",null,3);
INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUE ("Bradley", "Smith", 1, 3);
INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUE ("Pierce", "Stewart", 1, 5);
INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUE ("Chelsea", "Swift", 1, 6);
INSERT INTO employees (first_name, last_name, manager_id, role_id)
VALUE ("Tom", "Cruz", 2, 7);


(
INSERT INTO branch (name)
VALUE ("Operations"),
INSERT INTO branch (name)
VALUE ("Accounting"),
INSERT INTO branch (name)
VALUES ("Marketing"),
INSERT INTO branch (name)
VALUE ("Production"),
)

INSERT INTO job (title, salary, department_id)
VALUE ("Lead Engineer", 150000, 2);
INSERT INTO job (title, salary, department_id)
VALUE ("Legal Team Lead", 250000, 4);
INSERT INTO job (title, salary, department_id)
VALUE ("Accountant", 125000, 3);
INSERT INTO job (title, salary, department_id)
VALUE ("Sales Lead", 100000, 1);
INSERT INTO job (title, salary, department_id)
VALUE ("Salesperson", 80000, 1);
INSERT INTO job (title, salary, department_id)
VALUE ("Software Engineer", 120000, 2);
INSERT INTO job (title, salary, department_id)
VALUE ("Lawyer", 100000, 4);

SELECT * FROM employee;
SELECT * FROM branch;
SELECT * FROM job;
