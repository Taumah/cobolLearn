CREATE TABLE USERS (
	ID SERIAL PRIMARY KEY,
	NAME VARCHAR(30) NOT NULL,
	LASTNAME VARCHAR(50) NOT NULL
);

INSERT INTO USERS (NAME, LASTNAME) VALUES
('Alice', 'Smith'),
('Bob', 'Johnson'),
('Charlie', 'Williams'),
('David', 'Jones'),
('Eva', 'Brown'),
('Frank', 'Davis'),
('Grace', 'Miller'),
('Henry', 'Wilson'),
('Ivy', 'Taylor'),
('Jack', 'Anderson');
