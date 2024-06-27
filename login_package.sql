CREATE OR REPLACE PACKAGE login_pkg IS
  FUNCTION user_login(p_username IN VARCHAR2, p_password IN VARCHAR2)
    RETURN BOOLEAN;
  PROCEDURE user_register(p_username IN VARCHAR2,
                          p_password IN VARCHAR2,
                          p_email    IN VARCHAR2);
END login_pkg;
/
CREATE OR REPLACE PACKAGE BODY login_pkg IS
  FUNCTION user_login(p_username IN VARCHAR2, p_password IN VARCHAR2)
    RETURN BOOLEAN IS
    CURSOR c_user IS
      SELECT COUNT(*) AS user_count
        FROM user_definition
       WHERE username = p_username
         AND password = p_password;
    v_count NUMBER;
  BEGIN
    v_count := 0;
    FOR v_user_record IN c_user LOOP
      v_count := v_user_record.user_count;
    END LOOP;
  
    RETURN v_count > 0;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN FALSE;
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
      RETURN FALSE;
  END user_login;

  PROCEDURE user_register(p_username IN VARCHAR2,
                          p_password IN VARCHAR2,
                          p_email    IN VARCHAR2) IS
  BEGIN
    INSERT INTO user_definition
      (user_id, address_id, username, first_name, last_name, password, email)
    VALUES
      (user_definition_seq.NEXTVAL, NULL, p_username, NULL, NULL, p_password, p_email);
  EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
      DBMS_OUTPUT.PUT_LINE('User already exists.');
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
  END user_register;

END login_pkg;
/
