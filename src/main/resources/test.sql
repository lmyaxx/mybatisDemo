use test;
drop table if exists customer;
create table customer (
  id int not null primary key auto_increment,
  username varchar(50) ,
  jobs varchar(16),
  phone varchar(15)
);
INSERT INTO customer(username,jobs,Phone)
VALUES ('Zhang', 'enginer', '8888888');

drop table if exists person;
drop table if exists card;

create table card (
  id int primary key auto_increment,
  cardcode varchar (20)
);
INSERT INTO card(cardcode)
VALUES ('4328011980009191038');

create table person (
  id int primary key auto_increment,
  personname varchar(18),
  sex varchar(2),
  age int,
  card_id int unique,
  foreign key  (card_id) references card(id)
);
insert into person (personname,sex,age,card_id)
values('jack','男',13,1);

drop table if exists student;
drop table if exists clazz;


create table clazz (
  id int primary key auto_increment,
  code varchar(18),
  name varchar(18)
);
insert into clazz(code,name)
values('j1601','java班');

create table student(
  id int primary key auto_increment,
  name varchar(18),
  sex varchar(18),
  age int,
  clazz_id int,
  foreign key (clazz_id) references clazz(id)
);

insert into student(name,sex,age,clazz_id) values
  ('jack','男',23,1),
  ('rose','女',18,1),
  ('tom','男',21,1),
  ('alice','女',20,1);

drop table if exists tb_item;
drop table if exists tb_order;
drop table if exists tb_user;
drop table if exists tb_article;


create table tb_user(
  id INT PRIMARY KEY auto_increment,
  username VARCHAR(18),
  loginname VARCHAR(18),
  password VARCHAR(18),
  phone VARCHAR(18),
  address VARCHAR(18)
);

INSERT INTO tb_user(username,loginname,password,phone,address)
VALUES('杰克','jack','123456','13920001616','广州');

CREATE TABLE tb_article(
  id INT PRIMARY KEY auto_increment,
  name VARCHAR(20),
  price DOUBLE,
  remark VARCHAR(20)
);
INSERT INTO tb_article(NAME,price,remark) VALUES
  ('疯狂Java讲义',108.9,'李刚老师经典著作'),
  ('疯狂Android讲义',99.9,'李刚老师经典著作'),
  ('疯狂iOS讲义',89.9,'李刚老师经典著作'),
  ('Spring',69.9,'肖文吉老师经典著作');

CREATE TABLE tb_order(
  id INT  PRIMARY KEY auto_increment,
  code VARCHAR(32),
  total DOUBLE,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES tb_user(id)
);

INSERT INTO tb_order(code,total,user_id) VALUES
  ('6aa3fa359ff14619b77fab5990940a2d',388.6,1),
  ('6aa3fa359ff14619b77fab5990940b3c',217.8,1);

CREATE TABLE tb_item(
  order_id INT,
  article_id INT,
  amount INT,
  PRIMARY KEY(order_id,article_id),
  FOREIGN KEY (order_id) REFERENCES tb_order(id),
  FOREIGN KEY (article_id) REFERENCES tb_article(id)
);
INSERT INTO tb_item(order_id,article_id,amount)
VALUES(1,1,1),(1,2,1),(1,3,2),(2,4,2),(2,1,1);



