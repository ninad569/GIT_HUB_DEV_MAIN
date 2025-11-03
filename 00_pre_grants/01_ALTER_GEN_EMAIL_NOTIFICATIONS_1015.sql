DECLARE
    v_column_exists NUMBER;
BEGIN
    -- Check if the column NOTIFICATION_STATUS already has the desired definition: VARCHAR2(1 BYTE)
    SELECT COUNT(*)
    INTO v_column_exists
    FROM ALL_TAB_COLUMNS
    WHERE OWNER = 'GENERAL'
      AND TABLE_NAME = 'GEN_EMAIL_NOTIFICATIONS'
      AND COLUMN_NAME = 'NOTIFICATION_STATUS'
      AND DATA_TYPE = 'VARCHAR2'
      AND DATA_LENGTH = 1
      AND CHAR_USED = 'B'; -- 'B' for BYTE, 'C' for CHAR

    IF v_column_exists = 0 THEN
        -- If the column does not match the target definition, add it.
        EXECUTE IMMEDIATE 'ALTER TABLE "GENERAL"."GEN_EMAIL_NOTIFICATIONS" ADD ("NOTIFICATION_STATUS" VARCHAR2(1 BYTE))';
        DBMS_OUTPUT.PUT_LINE('Column "NOTIFICATION_STATUS" in table "GEN_EMAIL_NOTIFICATIONS" has been modified.');
    ELSE
        -- If it already matches, do nothing.
        DBMS_OUTPUT.PUT_LINE('Column "NOTIFICATION_STATUS" in table "GEN_EMAIL_NOTIFICATIONS" already has the correct definition.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error modifying column "NOTIFICATION_STATUS": ' || SQLERRM);
        RAISE;
END;
/