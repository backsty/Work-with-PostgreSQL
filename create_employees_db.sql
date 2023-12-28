CREATE TABLE IF NOT EXISTS Departments (
	id SERIAL PRIMARY KEY,
	name varchar(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Employees (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	Department_id INTEGER REFERENCES Departments(id)
);

ALTER TABLE Employees ADD Boss_id INTEGER REFERENCES employees(id);