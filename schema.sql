DROP DATABASE IF EXISTS menu_db;

CREATE DATABASE menu_db;

USE menu_db;

CREATE TABLE menus (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  rest_id int NOT NULL,
  rest_name varchar(50) NOT NULL,
  menu_type_num int NOT NULL,
  menu_type_name varchar(50) NOT NULL,
  menu_section_num int NOT NULL,
  menu_section_name varchar(50) NOT NULL,
  menu_section_description text NULL,
  menu_item_name varchar(50) NOT NULL,
  menu_item_description text NULL,
  menu_item_price varchar(50) NULL
);

CREATE TABLE photos (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  rest_id int NOT NULL,
  photo_id int NOT NULL,
  photoURL text NOT NULL
);


INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 0, "Breakfast", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 0, "Breakfast", 0, "Appetizer", null, "Butter", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 0, "Breakfast", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 0, "Breakfast", 1, "Mains", null, "Eggs and Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 0, "Breakfast", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 0, "Breakfast", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 0, "Breakfast", 2, "Desserts", null, "Waffles", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 1, "Lunch", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 1, "Lunch", 0, "Appetizer", null, "Butter", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 1, "Lunch", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 1, "Lunch", 1, "Mains", null, "Eggs and Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 1, "Lunch", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 1, "Lunch", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 1, "Lunch", 2, "Desserts", null, "Waffles", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 2, "Dinner", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 2, "Dinner", 0, "Appetizer", null, "Butter", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 2, "Dinner", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 2, "Dinner", 1, "Mains", null, "Eggs and Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 2, "Dinner", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 2, "Dinner", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (0,"The Red WheelBarrow", 2, "Dinner", 2, "Desserts", null, "Waffles", null, "$99.42");

-- Break

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 0, "Breakfast", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 0, "Breakfast", 0, "Appetizer", null, "Butter", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 0, "Breakfast", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 0, "Breakfast", 1, "Mains", null, "Eggs and Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 0, "Breakfast", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 0, "Breakfast", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 0, "Breakfast", 2, "Desserts", null, "Waffles", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 1, "Lunch", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 1, "Lunch", 0, "Appetizer", null, "Butter", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 1, "Lunch", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 1, "Lunch", 1, "Mains", null, "Eggs and Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 1, "Lunch", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 1, "Lunch", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 1, "Lunch", 2, "Desserts", null, "Waffles", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 2, "Dinner", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 2, "Dinner", 0, "Appetizer", null, "Butter", null, "$99.42");
The Red
INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 2, "Dinner", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 2, "Dinner", 1, "Mains", null, "Eggs and Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 2, "Dinner", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 2, "Dinner", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (1,"Delia's Chicken Sausage", 2, "Dinner", 2, "Desserts", null, "Waffles", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 0, "Breakfast", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 0, "Breakfast", 0, "Appetizer", null, "Butter", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 0, "Breakfast", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 0, "Breakfast", 1, "Mains", null, "Eggs and Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 0, "Breakfast", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 0, "Breakfast", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 0, "Breakfast", 2, "Desserts", null, "Waffles", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 1, "Lunch", 0, "Appetizer", null, "Pita and shwarma", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 1, "Lunch", 0, "Appetizer", null, "shishkabob", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 1, "Lunch", 0, "Appetizer", null, "salad", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 1, "Lunch", 1, "Mains", null, "Eggs and Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 1, "Lunch", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 1, "Lunch", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 1, "Lunch", 2, "Desserts", null, "Waffles", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 2, "Dinner", 0, "Appetizer", null, "Bread", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 2, "Dinner", 0, "Appetizer", null, "Bacon", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 2, "Dinner", 0, "Appetizer", null, "Steak", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 2, "Dinner", 1, "Mains", null, "Chicken parmesean", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 2, "Dinner", 1, "Mains", null, "Hash Browns", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 2, "Dinner", 2, "Desserts", null, "Apple Pie", null, "$99.42");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (2,"Hummus Factory", 2, "Dinner", 2, "Desserts", null, "Waffles", null, "$99.42");

-- Break

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 0, "Starters", null, "French Toast", "w/ Maple Syrup", "$4.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 0, "Starters", null, "Biscuits", "w/ Sausage Gravy", "$3.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 0, "Starters", null, "Hash Browns", "cooked crispy", "$4.00");


INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 0, "Starters", null, "Fresh Fruit", "Chopped Fresh Daily", "$3.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 0, "Starters", null, "Grits", "w/ Cheese", "$1.75");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 0, "Starters", null, "Pancakes", "w/ Maple Syrup", "$3.75");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 1, "Main Entrees", null, "Omelette", "w/ your choice: Bacon or Sausage", "$15.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 1, "Main Entrees", null, "Breakfast Scramble", "w/ peppers and onions", "$12.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 1, "Main Entrees", null, "Steak and Eggs", "w/ House Signature Steak Sauce", "$9.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 1, "Main Entrees", null, "Fried Eggs with Bacon", "Ranked Best Breakfast in town", "$13.50");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 1, "Main Entrees", null, "Hot Oatmeal", "Comes w/ Sliced Apples + Maple Syrup", "$14.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 1, "Main Entrees", null, "Tofu Scramble", "w/ Egg, Avocado, and Tofu", "$16.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 2, "Desserts", null, "Baklava", "Made with Local Honey", "$2.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 2, "Desserts", null, "Banana Pie", "Served with whipped cream", "$4.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 2, "Desserts", null, "Ice Cream", "With Hot Chocolate Syrup", "$2.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 0, "Breakfast", 2, "Desserts", null, "Chocolate Cake", "With Extra Fudge", "$7.00");

-- Break

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 0, "Starters", null, "Agedashi Tofu", "Bonito flakes, House togarashi", "$8.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 0, "Starters", null, "Corn Tempura", "sweet corn fritters, jalapeno", "$8.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 0, "Starters", null, "Miso Pork Spare Ribs", "spice blend, miso caramel", "$12.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 0, "Starters", null, "Black Karaage", "house pickles, black ranch dip", "$12.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 0, "Starters", null, "Black Fried Rice", "black garlic sauce, carrot", "$12.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 0, "Starters", null, "Sashimi Salad", "Baby Mixed Greens with Tuna", "$19.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 1, "Main Entrees", null, "Takami Wagyu Tataki", "Seared rare A5 Wagyu", "$29.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 1, "Main Entrees", null, "Salmon Carpaccio", "topped with Red Onion, Arugula", "$17.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 1, "Main Entrees", null, "Japanese Tacos", "Gyoza Skin Filled with Spicy Tuna", "$16.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 1, "Main Entrees", null, "Yellowtail Jalapeno", "with Ponzu Sauce & Sliced Jalapeno", "$19.50");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 1, "Main Entrees", null, "Takami Tartare", "Served with Karashi Soy Dressing", "$19.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 1, "Main Entrees", null, "Peppered Ahi Tuna", "Ahi Tuna on a Crispy Wonton", "$17.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 2, "Desserts", null, "Key Lime Pie", "secret recipe", "$13.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 2, "Desserts", null, "Pate A Choux Beignets", "dulce de leche", "$13.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 2, "Desserts", null, "Seasonal Cobbler", "served with lemon verbena", "$13.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 1, "Lunch", 2, "Desserts", null, "Strawberry Cheesecake", "With strawberry syrup", "$2.00");

-- Break

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 0, "Sushi Rolls", null, "Takami Roll", "Spicy Albacore & Cucumber", "$20.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 0, "Sushi Rolls", null, "Dragon Roll", "Shrimp Tempura, Avocado", "$19.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 0, "Sushi Rolls", null, "Lobster Roll", "topped with Lobster Dynamite", "$21.75");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 0, "Sushi Rolls", null, "Crunch Roll", "Tempura Crunch & Eel Sauce", "$19.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 0, "Sushi Rolls", null, "Caprese Roll", "with Mozzarella & Basil Vinaigrette", "$18.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 0, "Sushi Rolls", null, "California Roll", "Kanikama Crab, Cucumber ", "$11.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 1, "Main Entrees", null, "Chicken Katsu", "stuffed with Crispy Applewood Bacon,", "$15.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 1, "Main Entrees", null, "Grilled New York Steak", "with Sautéed Shiitake Mushrooms", "$19.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 1, "Main Entrees", null, "Seared Ahi Tuna", "w/ Yellow & Red Bell Pepper", "$19.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 1, "Main Entrees", null, "Braised Pork", "served with Carrots, Cucumbers", "$18.50");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 1, "Main Entrees", null, "Chirashi", "Thinly Sliced Assorted Sashimi", "$24.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 1, "Main Entrees", null, "Vegan Chicken", "w/ Pickled Onions & Carrots,", "$19.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 2, "Desserts", null, "New York Style Cheesecake", "with raspberry sauce", "$12.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 2, "Desserts", null, "Classic Vanilla Crème Brûlée", "sugar-crusted vanilla bean custard", "$14.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 2, "Desserts", null, "Sugar Donut Holes", "With Chocolate Sauce", "$12.00");

INSERT into menus (rest_id, rest_name, menu_type_num, menu_type_name, menu_section_num, menu_section_name, menu_section_description, menu_item_name, menu_item_description, menu_item_price) VALUES (3,"Genki Sushi House", 2, "Dinner", 2, "Desserts", null, "Seasonal Berries", "vanilla bean crème anglaise", "$11.00");