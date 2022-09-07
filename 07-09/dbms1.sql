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

create table classes( class_id int auto_increment, 
                     class_name varchar(255) not null, 
                     student_count int check(student_count >0), 
                     primary key(class_id) );
describe classes;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| class_id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| class_name    | varchar(255) | NO   |     | NULL    |                |
| student_count | int(11)      | YES  |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+

create table food (
    id int auto_increment,
    food_name varchar(20) not null,
    primary key (id) );
    
-- Query OK, 0 rows affected (0.121 sec)

insert into food (food_name) values ('Pizza'),
    ('Burger'),('Pasta'),('Momos'),('Noodles');

select * from food;
+----+-----------+
| id | food_name |
+----+-----------+
|  1 | Pizza     |
|  2 | Burger    |
|  3 | Pasta     |
|  4 | Momos     |
|  5 | Noodles   |
+----+-----------+

select * from food where id >= 4;
+----+-----------+
| id | food_name |
+----+-----------+
|  4 | Momos     |
|  5 | Noodles   |
+----+-----------+

