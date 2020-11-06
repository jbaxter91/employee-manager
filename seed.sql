USE company_DB;

INSERT INTO departments (name)
VALUES
('Sales'), 
('Management'),
('Accounting'),
('Reception'),
('Legal'),
('Logistics'),
('Security'),
('Human Resources');

INSERT INTO roles (title, salary, department_id)
VALUES
('Salesman', 30000, 1),
('Manager', 85000, 2),
('Accountant', 21000, 3),
('Reception', 21500, 4),
('Quality Assurer', 66666, 5),
('Truck Driver', 19900, 6),
('Mall Cop', 35000, 7),
('Kevin - The HR GOD', 428100, 8);

INSERT INTO employees (first_name, last_name, role_id, manager_id)
VALUES 
('Carly', 'Leblanc', 1, 2),
('Alanah', 'Cochran', 2,null),
('King', 'Combs', 3,2),
('Alyssa', 'Mccarty', 4,2),
('Boris', 'Parker', 5,2),
('Charlotte', 'Bradshaw', 6,2),
('Warren', 'Mcdowell', 7,2),
('Amos ', 'Kevbob', 8, 2),
('Kevin', 'Kevbob', 8,2);