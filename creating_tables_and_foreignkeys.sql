--Tablolarýn oluþturulmasý
CREATE TABLE user_definition (
  user_id NUMBER PRIMARY KEY,
  address_id NUMBER,
  user_name VARCHAR2(50),
  first_name VARCHAR2(50),
  last_name VARCHAR2(50),
  password VARCHAR2(8),
  email VARCHAR2(50)
);

CREATE TABLE product (
  product_id NUMBER PRIMARY KEY,
  category_id NUMBER,
  product_name VARCHAR2(50),
  price DECIMAL,
  description VARCHAR2(50),
  quantity NUMBER
);

CREATE TABLE category (
  category_id NUMBER PRIMARY KEY,
  category_name VARCHAR2(50),
  description VARCHAR2(50)
);

CREATE TABLE sub_category (
  sub_cat_id NUMBER PRIMARY KEY,
  category_id NUMBER,
  subcat_name VARCHAR2(50),
  description VARCHAR2(50)
);

CREATE TABLE basket (
  basket_id NUMBER PRIMARY KEY,
  user_id NUMBER,
  total DECIMAL,
  product_id NUMBER,
  quantity NUMBER
);

CREATE TABLE purchase (
  purchase_id NUMBER PRIMARY KEY,
  user_id NUMBER,
  product_id NUMBER,
  total DECIMAL,
  quantity NUMBER,
  purchase_date DATE
);

CREATE TABLE address (
  address_id NUMBER PRIMARY KEY,
  user_id NUMBER,
  country VARCHAR2(50),
  city VARCHAR2(50),
  address_line VARCHAR2(100)
);

CREATE TABLE favorite (
  favorite_id NUMBER PRIMARY KEY,
  product_id NUMBER,
  user_id NUMBER
);

-- Foreignkey tanýmlamalarý
ALTER TABLE product
ADD CONSTRAINT fk_category
FOREIGN KEY (category_id) REFERENCES category(category_id);

ALTER TABLE sub_category
ADD CONSTRAINT fk_category_sub
FOREIGN KEY (category_id) REFERENCES category(category_id);

ALTER TABLE basket
ADD CONSTRAINT fk_user_basket
FOREIGN KEY (user_id) REFERENCES user_definition(user_id);

ALTER TABLE basket
ADD CONSTRAINT fk_product_basket
FOREIGN KEY (product_id) REFERENCES product(product_id);

ALTER TABLE purchase
ADD CONSTRAINT fk_user_purchase
FOREIGN KEY (user_id) REFERENCES user_definition(user_id);

ALTER TABLE purchase
ADD CONSTRAINT fk_product_purchase
FOREIGN KEY (product_id) REFERENCES product(product_id);

ALTER TABLE address
ADD CONSTRAINT fk_user_address
FOREIGN KEY (user_id) REFERENCES user_definition(user_id);

ALTER TABLE favorite
ADD CONSTRAINT fk_user_favorite
FOREIGN KEY (user_id) REFERENCES user_definition(user_id);

ALTER TABLE favorite
ADD CONSTRAINT fk_product_favorite
FOREIGN KEY (product_id) REFERENCES product(product_id);
