-- Create RESULT table
CREATE TABLE RESULT (
    ROLLNO      NUMBER(5) PRIMARY KEY,
    NAME        VARCHAR2(50),
    SUB1        NUMBER(3),
    SUB2        NUMBER(3),
    SUB3        NUMBER(3),
    SUB4        NUMBER(3),
    SUB5        NUMBER(3),
    TOTAL       NUMBER(3),
    PER         NUMBER(5,2),
    GRADE       VARCHAR2(2)
);

-- Insert Sample Data
INSERT INTO RESULT (ROLLNO, NAME, SUB1, SUB2, SUB3, SUB4, SUB5)
VALUES (101, 'Amit', 85, 90, 88, 76, 92);

INSERT INTO RESULT (ROLLNO, NAME, SUB1, SUB2, SUB3, SUB4, SUB5)
VALUES (102, 'Neha', 75, 68, 80, 72, 70);

COMMIT;

-- Enable output
SET SERVEROUTPUT ON;

-- PL/SQL Block
DECLARE
    V_ROLLNO RESULT.ROLLNO%TYPE := &ROLLNO;
    V_TOTAL  NUMBER;
    V_PER    NUMBER(5,2);
    V_GRADE  VARCHAR2(2);
BEGIN
    -- Calculate Total and Percentage
    SELECT (SUB1 + SUB2 + SUB3 + SUB4 + SUB5),
           ((SUB1 + SUB2 + SUB3 + SUB4 + SUB5) / 5)
    INTO V_TOTAL, V_PER
    FROM RESULT
    WHERE ROLLNO = V_ROLLNO;

    -- Assign Grade
    IF V_PER >= 90 THEN
        V_GRADE := 'A+';
    ELSIF V_PER >= 80 THEN
        V_GRADE := 'A';
    ELSIF V_PER >= 70 THEN
        V_GRADE := 'B';
    ELSIF V_PER >= 60 THEN
        V_GRADE := 'C';
    ELSIF V_PER >= 50 THEN
        V_GRADE := 'D';
    ELSE
        V_GRADE := 'F';
    END IF;

    -- Update Table
    UPDATE RESULT
    SET TOTAL = V_TOTAL,
        PER = V_PER,
        GRADE = V_GRADE
    WHERE ROLLNO = V_ROLLNO;

    COMMIT;

    -- Display Result
    DBMS_OUTPUT.PUT_LINE('Roll No    : ' || V_ROLLNO);
    DBMS_OUTPUT.PUT_LINE('Total Marks: ' || V_TOTAL);
    DBMS_OUTPUT.PUT_LINE('Percentage : ' || V_PER || '%');
    DBMS_OUTPUT.PUT_LINE('Grade      : ' || V_GRADE);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student with the given Roll Number not found.');
END;
/
