CREATE OR REPLACE PACKAGE product_mgmt_pkg IS
  PROCEDURE add_product(
    p_name        IN VARCHAR2,
    p_description IN VARCHAR2,
    p_price       IN NUMBER,
    p_quantity    IN NUMBER
  );

  PROCEDURE update_product(
    p_product_id  IN NUMBER,
    p_name        IN VARCHAR2,
    p_description IN VARCHAR2,
    p_price       IN NUMBER,
    p_quantity    IN NUMBER
  );

  PROCEDURE delete_product(
    p_product_id IN NUMBER
  );

  FUNCTION get_product_price(
    p_product_id IN NUMBER
  ) RETURN NUMBER;

  FUNCTION get_product_quantity(
    p_product_id IN NUMBER
  ) RETURN NUMBER;
  
  PROCEDURE filter_products_by_price(p_min_price IN NUMBER,
                                     p_max_price IN NUMBER);
                                     
  PROCEDURE filter_products_by_category(p_category_id IN NUMBER);
  
  PROCEDURE top_selling_products;
  
  PROCEDURE filter_favorites;
  
END product_mgmt_pkg;


/
CREATE OR REPLACE PACKAGE BODY product_mgmt_pkg IS

PROCEDURE add_product(
  p_name        IN VARCHAR2,
  p_description IN VARCHAR2,
  p_price       IN NUMBER,
  p_quantity    IN NUMBER
) IS
BEGIN
  INSERT INTO product
    (product_name, description, price, quantity)
  VALUES
    (p_name, p_description, p_price, p_quantity);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.put_line('An unexpected error occurred: ' || SQLERRM);
END add_product;

PROCEDURE update_product(
  p_product_id  IN NUMBER,
  p_name        IN VARCHAR2,
  p_description IN VARCHAR2,
  p_price       IN NUMBER,
  p_quantity    IN NUMBER
) IS
BEGIN
  UPDATE product
     SET product_name = p_name,
         description  = p_description,
         price        = p_price,
         quantity     = p_quantity
   WHERE product_id = p_product_id;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.put_line('An unexpected error occurred: ' || SQLERRM);
END update_product;

PROCEDURE delete_product(
  p_product_id IN NUMBER
) IS
BEGIN
  DELETE FROM product WHERE product_id = p_product_id;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.put_line('An unexpected error occurred: ' || SQLERRM);
END delete_product;

FUNCTION get_product_price(
  p_product_id IN NUMBER
) RETURN NUMBER IS
  v_price product.price%TYPE;
BEGIN
  SELECT price INTO v_price
    FROM product
   WHERE product_id = p_product_id;
  RETURN v_price;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.put_line('An unexpected error occurred: ' || SQLERRM);
    RETURN NULL;
END get_product_price;

FUNCTION get_product_quantity(
  p_product_id IN NUMBER
) RETURN NUMBER IS
  v_quantity product.quantity%TYPE;
BEGIN
  SELECT quantity INTO v_quantity
    FROM product
   WHERE product_id = p_product_id;
  RETURN v_quantity;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.put_line('An unexpected error occurred: ' || SQLERRM);
    RETURN NULL;
END get_product_quantity;

PROCEDURE filter_products_by_price(p_min_price IN NUMBER,
                                   p_max_price IN NUMBER) IS
BEGIN
  FOR v_product IN (SELECT product_id, product_name, price
                      FROM product
                     WHERE price BETWEEN p_min_price AND p_max_price
                     ORDER BY price) LOOP
    dbms_output.put_line('ProductID: ' || v_product.product_id ||
                         ' - Product Name: ' || v_product.product_name ||
                         ' - Price: ' || v_product.price);
  
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('No products found within the price range: ' ||
                         p_min_price || ' to ' || p_max_price);
  WHEN OTHERS THEN
    dbms_output.put_line('An unexpected error occurred: ' || SQLERRM);
END filter_products_by_price;

PROCEDURE filter_products_by_category(p_category_id IN NUMBER) IS
BEGIN
  FOR v_product IN (SELECT product_id, product_name, category_id
                      FROM product
                     WHERE category_id = p_category_id
                     ORDER BY product_name) LOOP
    dbms_output.put_line('ProductID: ' || v_product.product_id ||
                         ' - Product Name: ' || v_product.product_name ||
                         ' - CategoryID: ' || v_product.category_id);
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('No products found for the given category ID: ' ||
                         p_category_id);
  WHEN OTHERS THEN
    dbms_output.put_line('An unexpected error occurred: ' || SQLERRM);
END filter_products_by_category;

PROCEDURE top_selling_products IS
BEGIN
  FOR v_product IN (SELECT p.product_id,
                           p.product_name,
                           SUM(pi.quantity) AS total_sold
                      FROM product p
                      JOIN purchase pi
                        ON p.product_id = pi.product_id
                     GROUP BY p.product_id, p.product_name
                     ORDER BY total_sold DESC) LOOP
    dbms_output.put_line('ProductID: ' || v_product.product_id ||
                         ' - Product Name: ' || v_product.product_name ||
                         ' - Total Sold: ' || v_product.total_sold);
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('No sales data found.');
  WHEN OTHERS THEN
    dbms_output.put_line('An unexpected error occurred: ' || SQLERRM);
END top_selling_products;

PROCEDURE filter_favorites IS
BEGIN
  FOR v_product IN (SELECT p.product_id,
                           p.product_name,
                           COUNT(f.user_id) AS favorite_count
                      FROM product p
                      JOIN favorite f
                        ON p.product_id = f.product_id
                     GROUP BY p.product_id, p.product_name
                     ORDER BY favorite_count DESC) LOOP
    dbms_output.put_line('ProductID: ' || v_product.product_id ||
                         ' - Product Name: ' || v_product.product_name ||
                         ' - Favorite Count: ' || v_product.favorite_count);
  END LOOP;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      dbms_output.put_line('No favorite products found.');
    WHEN OTHERS THEN
      dbms_output.put_line('An unexpected error occurred: ' || SQLERRM);
END filter_favorites;
END product_mgmt_pkg;

