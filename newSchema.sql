DROP DATABASE IF EXISTS menu_db;

CREATE DATABASE menu_db;

\C menu_db;

CREATE TABLE menus (
  ID int PRIMARY KEY NOT NULL,
  rest_id int NOT NULL,
  rest_name char(50) NOT NULL,
  menu_type_num int NOT NULL,
  menu_type_name char(50) NOT NULL,
  menu_section_num int NOT NULL,
  menu_section_name char(50) NOT NULL,
  menu_section_description text NULL,
  menu_item_name char(50) NOT NULL,
  menu_item_description text NULL,
  menu_item_price char(50) NULL
  
);

COPY menus(id, rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) FROM '/Users/Jon/HRLA/sris-menu-photos/data.csv' DELIMITER ',' CSV HEADER;