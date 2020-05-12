DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	id serial primary key,
    name text not null,
    age integer,
    gender text,
    department_id integer
);

CREATE TABLE departments (
	id serial primary key,
    name text
);

INSERT INTO departments(name)values('総務部');
INSERT INTO departments(name)values('営業部');
INSERT INTO departments(name)values('技術部');
INSERT INTO departments(name)values('経理部');
INSERT INTO departments(name)values('企画部');


INSERT INTO employees(name, age, gender, department_id)values('伊賀 将之', 29, '男', 2);
INSERT INTO employees(name, age, gender, department_id)values('山田 太郎', 23, '男', 3);
INSERT INTO employees(name, age, gender, department_id)values('鈴木 一郎', 30, '男', 4);
INSERT INTO employees(name, age, gender, department_id)values('佐藤 次郎', 29, '男', 2);
INSERT INTO employees(name, age, gender, department_id)values('高橋 三郎', 29, '男', 1);

-- SELECT id, name  FROM departments ORDER BY id;
-- UPDATE departments SET name = "hoge" WHERE id = 1;
-- SELECT name FROM departments WHERE id = 1;

-- SELECT department_id, employees.name FROM employees INNER JOIN departments ON departments.id = department_id  ORDER BY department_id ASC;

