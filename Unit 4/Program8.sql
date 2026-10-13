/* Q8. Write a procedure that search‟s whether the given 
employee number is present or not in the table. (Use 
both IN and OUT mode variables) and also Write a 
PL/SQL block to call the SEARCH_EMP procedure. */


CREATE OR REPLACE PROCEDURE SEARCH_EMPLOYEE
(
    P_EID    IN NUMBER,
    P_RESULT OUT VARCHAR2
)
IS
    V_NAME U4EMP.ENAME%TYPE;
BEGIN
    SELECT ENAME
    INTO V_NAME
    FROM U4EMP
    WHERE EID = P_EID;

    P_RESULT := 'Employee Found: ' || V_NAME;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        P_RESULT := 'Employee ID ' || P_EID || ' not found.';
END;
/
