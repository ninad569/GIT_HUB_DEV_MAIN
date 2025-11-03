
create or replace TRIGGER AIU_RDI_FRAME_PERIOD
AFTER INSERT OR UPDATE ON RDI_FRAME_PERIOD
FOR EACH ROW
DECLARE
    v_action_type   VARCHAR2(10);
    v_json_obj      JSON_OBJECT_T;
    v_json_details  CLOB;

    -- Local variables to hold :NEW values
    v_frame_period_id RDI_FRAME_PERIOD.FRAME_PERIOD_ID%TYPE;
    v_frame_id RDI_FRAME_PERIOD.FRAME_ID%TYPE;
    v_period_id RDI_FRAME_PERIOD.PERIOD_ID%TYPE;
    v_created_by RDI_FRAME_PERIOD.CREATED_BY%TYPE;
    v_created_on RDI_FRAME_PERIOD.CREATED_ON%TYPE;
    v_modified_by RDI_FRAME_PERIOD.MODIFIED_BY%TYPE;
    v_modified_on RDI_FRAME_PERIOD.MODIFIED_ON%TYPE;
BEGIN
    -- Assign :NEW values to local variables
    v_frame_period_id := :NEW.FRAME_PERIOD_ID;
    v_frame_id := :NEW.FRAME_ID;
    v_period_id := :NEW.PERIOD_ID;
    v_created_by := :NEW.CREATED_BY;
    v_created_on := :NEW.CREATED_ON;
    v_modified_by := :NEW.MODIFIED_BY;
    v_modified_on := :NEW.MODIFIED_ON;

    -- Determine the action type
    IF INSERTING THEN
        v_action_type := 'INSERT';
    ELSIF UPDATING THEN
        v_action_type := 'UPDATE';
    END IF;

    -- Build the JSON object with the new values
    v_json_obj := JSON_OBJECT_T();
    v_json_obj.put('FRAME_PERIOD_ID', TO_CHAR(v_frame_period_id));
    v_json_obj.put('FRAME_ID', TO_CHAR(v_frame_id));
    v_json_obj.put('PERIOD_ID', TO_CHAR(v_period_id));
    v_json_obj.put('CREATED_BY', v_created_by);
    v_json_obj.put('CREATED_ON', v_created_on);
    v_json_obj.put('MODIFIED_BY', v_modified_by);
    v_json_obj.put('MODIFIED_ON', v_modified_on);

    -- Convert the JSON object to a CLOB for storage
    v_json_details := v_json_obj.to_clob;

    -- Insert the audit record into the central logging table
    INSERT INTO GEN_MGMT_LOG (
        USERNAME,
        SESSION_ID,
        PAGE_ID,
        ACTION_TYPE,
        TABLE_NAME,
        RECORD_ID,
        LOG_TIMESTAMP,
        DETAILS
    ) VALUES (
        GEN_SESSION_USER, -- Assumes this context variable exists
        GEN_SESSION_ID,   -- Assumes this context variable exists
        GEN_PAGE_ID,      -- Assumes this context variable exists
        v_action_type,
        'RDI_FRAME_PERIOD',
        :NEW.FRAME_PERIOD_ID,
        SYSTIMESTAMP,
        v_json_details
    );
EXCEPTION
    WHEN OTHERS THEN
        -- In a production environment, you might want to handle logging errors
        -- For example, write to DBMS_OUTPUT or a separate error log table.
        -- For now, we'll just let the transaction fail to ensure data integrity.
        RAISE;
END;
/