CREATE OR REPLACE PACKAGE cart_mgmt_pkg IS
  PROCEDURE add_to_cart(p_user_id    IN NUMBER,
                        p_product_id IN NUMBER,
                        p_quantity   IN NUMBER);
  PROCEDURE remove_from_cart(p_user_id IN NUMBER, p_product_id IN NUMBER);
  PROCEDURE update_cart_item(p_user_id    IN NUMBER,
                             p_product_id IN NUMBER,
                             p_quantity   IN NUMBER);
  FUNCTION calculate_cart_total(p_user_id IN NUMBER) RETURN NUMBER;
  PROCEDURE purchase_cart(p_user_id IN NUMBER);
  FUNCTION check_cart_stock(p_user_id IN NUMBER) RETURN BOOLEAN;
END cart_mgmt_pkg;


CREATE OR REPLACE PACKAGE BODY cart_mgmt_pkg IS

    PROCEDURE add_to_cart(p_user_id IN NUMBER, p_product_id IN NUMBER, p_quantity IN NUMBER) IS
    BEGIN
        INSERT INTO Cart (User_ID, Product_ID, Quantity)
        VALUES (p_user_id, p_product_id, p_quantity);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
    END add_to_cart;

    PROCEDURE remove_from_cart(p_user_id IN NUMBER, p_product_id IN NUMBER) IS
    BEGIN
        DELETE FROM Cart
        WHERE User_ID = p_user_id AND Product_ID = p_product_id;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
    END remove_from_cart;

    PROCEDURE update_cart_item(p_user_id IN NUMBER, p_product_id IN NUMBER, p_quantity IN NUMBER) IS
    BEGIN
        UPDATE Cart
        SET Quantity = p_quantity
        WHERE User_ID = p_user_id AND Product_ID = p_product_id;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
    END update_cart_item;

    FUNCTION calculate_cart_total(p_user_id IN NUMBER) RETURN NUMBER IS
        CURSOR c_cart_total IS
            SELECT SUM(c.Quantity * p.Price) AS total_amount
            FROM Cart c
            JOIN Product p ON c.Product_ID = p.Product_ID
            WHERE c.User_ID = p_user_id;
        v_total NUMBER;
    BEGIN
        FOR v_cart_total IN c_cart_total LOOP
            v_total := v_cart_total.total_amount;
        END LOOP;

        RETURN v_total;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
            RETURN NULL;
    END calculate_cart_total;

    PROCEDURE purchase_cart(p_user_id IN NUMBER) IS
        CURSOR c_cart IS
            SELECT Product_ID, Quantity
            FROM Cart
            WHERE User_ID = p_user_id;
        v_total NUMBER;
    BEGIN
        v_total := calculate_cart_total(p_user_id);

        FOR v_cart_record IN c_cart LOOP
            INSERT INTO Purchase (User_ID, Product_ID, Quantity, TotalAmount)
            VALUES (p_user_id, v_cart_record.Product_ID, v_cart_record.Quantity, v_total);
        END LOOP;

        DELETE FROM Cart
        WHERE User_ID = p_user_id;

    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
    END purchase_cart;

    FUNCTION check_cart_stock(p_user_id IN NUMBER) RETURN BOOLEAN IS
        CURSOR c_cart IS
            SELECT c.Product_ID, c.Quantity, p.Stock
            FROM Cart c
            JOIN Product p ON c.Product_ID = p.Product_ID
            WHERE c.Product_ID = p_user_id;
    BEGIN
        FOR v_cart_record IN c_cart LOOP
            IF v_cart_record.Quantity > v_cart_record.Stock THEN
                RETURN FALSE;
            END IF;
        END LOOP;
        RETURN TRUE;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
            RETURN FALSE;
    END check_cart_stock;

END cart_mgmt_pkg;
