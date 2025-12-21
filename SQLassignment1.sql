CREATE TABLE students (student_id INT,name VARCHAR(50),age INT,gender CHAR(1),email VARCHAR(100) UNIQUE,marks DECIMAL(5,2));

INSERT INTO students VALUES (1, 'Akshay', 22, 'M', 'akshay@gmail.com', 85.50);
INSERT INTO students (student_id,name, age, gender, email, marks) VALUES (2,'Riya', 21, 'F', 'riya@gmail.com', 92.75);
INSERT INTO students (student_id,name, age, gender, email, marks)
VALUES 
(3,'Rahul', 23, 'M', 'rahul@gmail.com', 78.00),
(4,'Sneha', 20, 'F', 'sneha@gmail.com', 88.25),
(5,'Vikram', 24, 'M', 'vikram@gmail.com', 90.00);
INSERT INTO students (name, email)
VALUES ('Pooja', 'pooja@gmail.com');

select * from students;