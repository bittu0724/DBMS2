/* Q6. Write a simple procedure without any parameter 
that updates the values in the EMP table. */


CREATE OR REPLACE PROCEDURE UPDATE_EMP
IS
BEGIN
    UPDATE U4EMP
    SET BASICSAL = BASICSAL + (BASICSAL * 10 / 100);

    DBMS_OUTPUT.PUT_LINE(
        SQL%ROWCOUNT || ' employee(s) salary updated.'
    );

    COMMIT;
END;
/

