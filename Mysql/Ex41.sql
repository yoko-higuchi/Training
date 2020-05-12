DROP TABLE IF EXISTS emp;
DROP TABLE IF EXISTS dep;

CREATE TABLE emp (
	id integer PRIMARY KEY,
    name text NOT NULL,
    age integer,
    gender text,
    dep_id integer
);

CREATE TABLE dep (
	dep_id integer PRIMARY KEY,
    dep_name text
);

INSERT INTO emp (id, name, age, gender, dep_id) VALUES (10, 'user1', 20, '男', 1);
INSERT INTO emp (id, name, age, gender, dep_id) VALUES (20, 'user2', 30, '男', 2);
INSERT INTO emp (id, name, age, gender, dep_id) VALUES (30, 'user3', 40, '女', 3);
INSERT INTO emp (id, name, age, gender, dep_id) VALUES (40, '松本', 40, '女', 4);

INSERT INTO dep (dep_id, dep_name) VALUES (1, '技術部');
INSERT INTO dep (dep_id, dep_name) VALUES (2, '営業部');
INSERT INTO dep (dep_id, dep_name) VALUES (3, '経理部');
INSERT INTO dep (dep_id, dep_name) VALUES (4, '開発部');

/*
-- SELECT * from emp;
-- SELECT name, age from emp WHERE age >= 25;
-- SELECT * from emp WHERE gender = '男' AND age >= 25 ORDER BY age DESC;

UPDATE emp SET name = 'Tom' WHERE id = 10;
UPDATE emp SET age = age + 1;
SELECT * from emp;
*/
/*
SELECT count(*) FROM emp;
SELECT max(age) FROM emp;
SELECT * FROM emp INNER JOIN dep USING (dep_id);
SELECT name, dep_name FROM emp INNER JOIN dep USING (dep_id) WHERE age >= 25;
SELECT name FROM emp WHERE name LIKE '松%';
*/
SELECT name, age FROM emp WHERE dep_id IN (SELECT dep_id FROM dep WHERE dep_name = '経理部');
SELECT dep_name FROM dep WHERE dep_id IN (SELECT dep_id FROM emp WHERE dep_id = 2);
SELECT name FROM emp WHERE dep_id IN (SELECT dep_id FROM dep WHERE dep_name = '営業部' OR dep_name = '技術部');
SELECT name, age FROM emp WHERE dep_id IN (SELECT dep_id FROM emp WHERE age <= (SELECT avg(age) FROM emp));
SELECT name, age FROM emp WHERE dep_id IN (SELECT dep_id FROM dep WHERE dep_name = '経理部');