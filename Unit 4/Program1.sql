/* Q1. Write a simple procedure without any parameter 
that shows a user defined message on the screen. Call 
the procedure using a separate PL/SQL block and on 
the command line. */

SET SERVEROUTPUT ON

CREATE OR REPLACE TRIGGER restrict_weekend_logon
AFTER LOGON ON DATABASE
DECLARE
    v_day VARCHAR2(10);
BEGIN
    -- Check the current day of the week
    SELECT TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') INTO v_day FROM DUAL;
    
    -- Restrict for Saturday (SAT) and Sunday (SUN)
    -- Exclude DBA or specific administrative users if needed
    IF v_day IN ('SAT', 'SUN') AND USER NOT IN ('SYS', 'SYSTEM') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Database access is restricted on weekends.');
    END IF;
END;
/
