DECLARE
    v_object_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_object_count
    FROM ALL_SEQUENCES
    WHERE SEQUENCE_OWNER = 'RDI' AND SEQUENCE_NAME = 'rdi_VALIDATION_RESULT_TBL_SEQ';

    IF v_object_count = 0 THEN
        -- The object does not exist, so we create it
        EXECUTE IMMEDIATE 'CREATE SEQUENCE  "rdi_VALIDATION_RESULT_TBL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ';
        DBMS_OUTPUT.PUT_LINE('SEQUENCE "rdi_VALIDATION_RESULT_TBL_SEQ" created successfully.');
    ELSE
        -- The object already exists
        DBMS_OUTPUT.PUT_LINE('SEQUENCE "rdi_VALIDATION_RESULT_TBL_SEQ" already exists.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
        RAISE;
END;
/