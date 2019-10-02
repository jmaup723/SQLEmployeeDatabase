SELECT Employees.employee_no, Employees.last_name, Employees.first_name, Employees.gender, Salaries.Salary FROM Employees
JOIN Salaries on Employees.employee_no = Salaries.employee_no
ORDER BY Employees.employee_no;

SELECT first_name, last_name FROM Employees where hire_date BETWEEN 01/01/1986 AND < 01/01/1987;

SELECT Department.Department_name, Department_Manager.department_no, Department_Manager.employee_no, Employees.last_name, Employees.first_name, Department_Manager.from_date, Department_Manager.to_date
FROM Department_Manager JOIN Department ON Deparment_Manager.department_no = Department.department_no
JOIN Department_Manager.employee_no = Employees.employee_no;

SELECT Employees.employee_no, Employees.last_name, Employees.first_name, Department.Department_name 
FROM Employees
 JOIN Department_Employee ON Employees.employee_no = Department_Employee.employee_no
 JOIN Department ON Department_Employee.deployment_no = Department.Department_no
ORDER BY Department_no

SELECT * 
FROM Employees where first_name = "Hercules" AND last_name LIKE "B%";

SELECT Employees.employee_no, Employees.last_name, Employees.first_name, Department.Department_name 
FROM Employees
     JOIN Department_Employee ON Employees.employee_no = Department_Employee.employee_no
     JOIN Department ON Department_Employee.department_no = Department.Department_no

where Department_no = "d007"

SELECT Employees.employee_no, Employees.last_name, Employees.first_name, Department.Department_name 
FROM Employees 
JOIN Department_Employee ON Employees.employee_no = Department_Employee.employee_no
JOIN Department ON Department_Employee.department_no = Department.department_no
WHERE Department.Department_no = "d007" AND Department.Department_no = "d005"
ORDER BY Employees.employee_no;

SELECT last_name, COUNT last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT (last name) DESC;
