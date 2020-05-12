DROP TABLE IF EXISTS hobbies;
DROP TABLE IF EXISTS students;

CREATE TABLE students (
	id serial primary key,
    name text not null,
    age integer not null
);

CREATE TABLE hobbies (
	id serial primary key,
    name text not null,
    student_id integer
);

-- INSERT INTO students (name, age) VALUES("Masayuki IGA", 20);
/*
INSERT INTO students (name, age) VALUES("bbbbb", 15);
INSERT INTO students (name, age) VALUES("ccccc", 24);
INSERT INTO hobbies (name, student_id) VALUES("tennis", 1);
INSERT INTO hobbies (name, student_id) VALUES("running", 1);
INSERT INTO hobbies (name, student_id) VALUES("running", 3);
INSERT INTO hobbies (name, student_id) VALUES("swining", 2);
INSERT INTO hobbies (name, student_id) VALUES("swining", 1);
INSERT INTO hobbies (name, student_id) VALUES("volleyBall", 2);
*/
-- NSERT INTO hobbies (name, student_id) VALUES ("swiming", 1);
-- SELECT * FROM hobbies;
-- SELECT students.id, students.name, hobbies.name, age FROM students,hobbies WHERE student_id = 1 AND students.id = student_id;
-- INSERT INTO students (id, name, age) VALUES (1, "Misaki Iga", 20);
-- SELECT * FROM students;
