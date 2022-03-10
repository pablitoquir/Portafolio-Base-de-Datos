create database sales_db  charset utf8;
use sales_db;

create table products(
product_id int auto_increment primary key,
name varchar(100) not null,
description varchar(300),
type varchar(20) not null ,
price_ars float); 
create table users(
user_id int auto_increment primary key,
name varchar(20) not null,
gender varchar(2) not null,
zip_code varchar(5),
address varchar(200),
state varchar(50),
city varchar(50),
phone varchar(10));




create table sales(
order_id int auto_increment primary key,
date  date,
units int ,
amount float,
user_id_fk int,
product_id_fk int,

constraint fk_user foreign key (user_id_fk) references  users (user_id) on delete no action,
constraint fk_product foreign key (product_id_fk) references  products (product_id) on delete no action);
describe users;
alter table users
drop name,
add first_name varchar(20) not null,
add last_name varchar(20) ;