USE Employee_Tracker;

CREATE DATABASE Employee_Tracker;

INSERT INTO department (dept_name)
VALUES ('Sales'),
       ('Finance'),
       ('Engineering'),
       ('Legal'),
       ('Management'),
       ('Operations');

--Department insert
INSERT INTO roles (title, salary, department_id)
VALUES ('Manager', 101000, 1),
       ('Accountant', 250000, 2),
       ('Software Engineer', 320000, 2),
       ('Developer', 425000, 3),
       ('Lawyer', 550000, 4),
       ('Lead Sales', 95000, 2),
       ('Technician', 45000, 6),
       ('Mechanical Engineer', 65000, 7);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Lipa', 'Dua', 1, 3),
       ('Rodrigo', 'Olivia', 2, 1),
       ('Holt', 'Olivia', 3, 4),
       ('Swift', 'Taylor', 4, 3),
       ('Bieber', 'Justin', 5, 9),
       ('Gomez', 'Selena', 2, 5),
       ('Jauregui', 'Lauren', 4, 7),
       ('Cabello', 'Camila', 1010101, 2);