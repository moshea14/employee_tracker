\c employee_db;

SELECT
*
FROM department;

SELECT
    role.id,
    role.title,
    department.name AS department,
    role.salary,
FROM role
LEFT JOIN department
    ON role.department_id = department.id

SELECT
    employee.id,
    employee.first_name,
    employee.last_name,
    role.title,
    department.name AS department,
    role.salary,
    CONCAT(employee_manager.first_name, ' ', employee_manager.last_name) AS manager
FROM employee
LEFT JOIN role
    ON employee.role_id = role.id
LEFT JOIN department
    ON role.department_id = department.id
LEFT JOIN employee employee_manager
    ON employee.manager_id = employee_manager.id


SELECT
    id,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM employee


SELECT DISTINCT
    employee_manager.id,
    employee_manager.first_name,
    employee_manager.last_name
FROM employee
INNER JOIN employee employee_manager
    ON employee.manager_id = employee_manager.id

SELECT
    employee.manager_id,
    CONCAT(employee_manager.first_name, ' ', employee_manager.last_name) AS     manager,
    CONCAT(employee.first_name, ' ', employee.last_name) AS employee_name
FROM employee
JOIN employee employee_manager
    ON employee.manager_id = employee_manager.id



SELECT
    employee.id,
    CONCAT(employee.first_name, ' ', employee.last_name) AS employee_name,
FROM employee
JOIN role
    ON employee.role_id = role.id
JOIN department
    ON role.department_id = department.id

DELETE FROM employee
WHERE id = $1

DELETE FROM role
WHERE id = $1

DELETE FROM department
WHERE id = $1
