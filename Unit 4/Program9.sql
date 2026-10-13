/* Q9. Write a function that returns the square of the 
given number. Execute this function using a separate 
PL/SQL block and also without using PL/SQL block on 
the command line. */


CREATE OR REPLACE FUNCTION FIND_SQUARE
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
    V_RESULT := FIND_SQUARE(10);
    DBMS_OUTPUT.PUT_LINE('Square = ' || V_RESULT);
END;
/