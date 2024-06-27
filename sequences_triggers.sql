SELECT MAX(address_id) FROM address;
SELECT MAX(basket_id) FROM basket;
SELECT MAX(category_id) FROM category;
SELECT MAX(favorite_id) FROM favorite;
SELECT MAX(product_id) FROM product;
SELECT MAX(purchase_id) FROM purchase;
SELECT MAX(sub_cat_id) FROM sub_category;
SELECT MAX(user_id) FROM user_definition;
/

-- Sequence

CREATE SEQUENCE address_seq START WITH 3 INCREMENT BY 1; 

CREATE SEQUENCE basket_seq START WITH 3 INCREMENT BY 1;

CREATE SEQUENCE category_seq START WITH 2 INCREMENT BY 1;

CREATE SEQUENCE favorite_seq START WITH 3 INCREMENT BY 1;

CREATE SEQUENCE product_seq START WITH 50 INCREMENT BY 1;

CREATE SEQUENCE purchase_seq START WITH 3 INCREMENT BY 1;

CREATE SEQUENCE sub_category_seq START WITH 106 INCREMENT BY 1;

CREATE SEQUENCE user_definition_seq START WITH 3 INCREMENT BY 1;
/

--Triggers

-- Address tablosu için trigger
CREATE OR REPLACE TRIGGER address_before_insert
BEFORE INSERT ON address
FOR EACH ROW
BEGIN
  SELECT address_seq.NEXTVAL INTO :NEW.address_id FROM dual;
END;
/

-- Basket tablosu için trigger
CREATE OR REPLACE TRIGGER basket_before_insert
BEFORE INSERT ON basket
FOR EACH ROW
BEGIN
  SELECT basket_seq.NEXTVAL INTO :NEW.basket_id FROM dual;
END;
/

-- Category tablosu için trigger
CREATE OR REPLACE TRIGGER category_before_insert
BEFORE INSERT ON category
FOR EACH ROW
BEGIN
  SELECT category_seq.NEXTVAL INTO :NEW.category_id FROM dual;
END;
/

-- Favorite tablosu için trigger
CREATE OR REPLACE TRIGGER favorite_before_insert
BEFORE INSERT ON favorite
FOR EACH ROW
BEGIN
  SELECT favorite_seq.NEXTVAL INTO :NEW.favorite_id FROM dual;
END;
/

-- Product tablosu için trigger
CREATE OR REPLACE TRIGGER product_before_insert
BEFORE INSERT ON product
FOR EACH ROW
BEGIN
  SELECT product_seq.NEXTVAL INTO :NEW.product_id FROM dual;
END;
/

-- Purchase tablosu için trigger
CREATE OR REPLACE TRIGGER purchase_before_insert
BEFORE INSERT ON purchase
FOR EACH ROW
BEGIN
  SELECT purchase_seq.NEXTVAL INTO :NEW.purchase_id FROM dual;
END;
/

-- Sub_Category tablosu için trigger
CREATE OR REPLACE TRIGGER sub_category_before_insert
BEFORE INSERT ON sub_category
FOR EACH ROW
BEGIN
  SELECT sub_category_seq.NEXTVAL INTO :NEW.sub_cat_id FROM dual;
END;
/

-- User_Definition tablosu için trigger
CREATE OR REPLACE TRIGGER user_definition_before_insert
BEFORE INSERT ON user_definition
FOR EACH ROW
BEGIN
  SELECT user_definition_seq.NEXTVAL INTO :NEW.user_id FROM dual;
END;
/
