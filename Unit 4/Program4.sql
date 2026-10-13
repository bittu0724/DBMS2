/*Q4. Write a function that returns the square of the 
given number. Execute the function using a separate 
PL/SQL block and on the command line. 
  */

CREATE OR REPLACE FUNCTION SQUARE_NUMBER
(
    P_NUM IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN P_NUM * P_NUM;
END;
/

DECLARE
    V_RESULT NUMBER;
BEGIN
    V_RESULT := SQUARE_NUMBER(5);

    DBMS_OUTPUT.PUT_LINE('Square = ' || V_RESULT);
END;
/

