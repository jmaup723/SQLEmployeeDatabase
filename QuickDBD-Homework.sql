DROP TABLE IF EXISTS Department_Manager CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Department CASCADE;
DROP TABLE IF EXISTS Title CASCADE;
DROP TABLE IF EXISTS Department_Employee CASCADE;

CREATE TABLE Department_Manager (
    "department_no" varchar   NOT NULL,
    "employee_no" int   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    PRIMARY KEY (
        "employee_no", "department_no"
     )
);

CREATE TABLE Employees (
    "employee_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" date   NOT NULL,
    PRIMARY KEY (
        "employee_no"
     )
);

CREATE TABLE Salaries (
    "employee_no" int   NOT NULL,
    "Salary" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    PRIMARY KEY (
        "employee_no"
     )
);

CREATE TABLE Title (
    "employee_no" int   NOT NULL,
    "title" varchar(200)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    PRIMARY KEY (
        "employee_no", "title", "from_date"
     )
);

CREATE TABLE Department (
    "Department_no" varchar   NOT NULL,
    "Department_name" varchar   NOT NULL,
    PRIMARY KEY (
        "Department_no"
     )
);

CREATE TABLE Department_Employee (
    "employee_no" int   NOT NULL,
	"department_no" VARCHAR   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    PRIMARY KEY (
        "employee_no", "department_no"
     )
);

SELECT * FROM title;