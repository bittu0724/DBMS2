/* Q7.  Write a simple procedure that increases the salary 
of employees for the given department not by 
percentage inputted by the user using the IN 
parameter.*/

CREATE OR REPLACE PROCEDURE UPDATE_DEPT_SALARY
(
    P_DEPTNO  IN NUMBER,
    P_PERCENT IN NUMBER
)
IS
BEGIN
    UPDATE U4EMP
    SET BASICSAL = BASICSAL + (BASICSAL * P_PERCENT / 100)
    WHERE DEPTNO = P_DEPTNO;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            'No employees found in department ' || P_DEPTNO
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            SQL%ROWCOUNT || ' employee(s) updated.'
        );
    END IF;

    COMMIT;
END;
/
