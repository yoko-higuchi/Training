CREATE TABLE test (
  id  integer PRIMARY KEY,
  name  text  NOT NULL,
  age integer
);
INSERT INTO test ( id, name, age) VALUES (31, '柴原洋', 25);
select * from test;