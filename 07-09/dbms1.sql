// queries

show databases;

create Database 07SeptTraining1;

use 07SeptTraining1;

show 07SeptTraining1;

create table students;

show tables;
+---------------------------+
| Tables_in_07SeptTraining1 |
+---------------------------+
| students                  |
+---------------------------+

describe students;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| id     | int(11)      | NO   |     | NULL    |       |
| name   | varchar(100) | NO   |     | NULL    |       |
| degree | varchar(50)  | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.016 sec)

alter table students add Email varchar(100);

describe students;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| id     | int(11)      | NO   |     | NULL    |       |
| name   | varchar(100) | NO   |     | NULL    |       |
| degree | varchar(50)  | YES  |     | NULL    |       |
| Email  | varchar(100) | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+

alter table students ADD address varchar(100),
    -> ADD phone int;
    
describe students;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | NO   |     | NULL    |       |
| name    | varchar(100) | NO   |     | NULL    |       |
| degree  | varchar(50)  | YES  |     | NULL    |       |
| Email   | varchar(100) | YES  |     | NULL    |       |
| address | varchar(100) | YES  |     | NULL    |       |
| phone   | int(11)      | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+

ALTER TABLE students DROP degree;

describe students;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | NO   |     | NULL    |       |
| name    | varchar(100) | NO   |     | NULL    |       |
| Email   | varchar(100) | YES  |     | NULL    |       |
| address | varchar(100) | YES  |     | NULL    |       |
| phone   | int(11)      | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+


ALTER TABLE students DROP phone, DROP address;
describe students;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id    | int(11)      | NO   |     | NULL    |       |
| name  | varchar(100) | NO   |     | NULL    |       |
| Email | varchar(100) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+

DROP TABLE students;

show tables;
Empty set


