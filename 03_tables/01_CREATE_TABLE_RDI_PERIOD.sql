DECLARE
    v_object_count NUMBER;
BEGIN
    -- Check for TABLE 'rdi_PERIOD'
    SELECT COUNT(*) INTO v_object_count FROM all_tables WHERE owner = 'rdi' AND table_name = 'rdi_PERIOD';

    IF v_object_count = 0 THEN
        EXECUTE IMMEDIATE '
    CREATE TABLE "rdi_PERIOD" 
       (	"PERIOD_YEAR_ID" NUMBER, 
    	"PERIOD_YEAR" NUMBER, 
    	"PERIOD_DESC" VARCHAR2(20), 
    	"CREATED_ON" TIMESTAMP (6), 
    	"CREATED_BY" VARCHAR2(50), 
    	"MODIFIED_ON" TIMESTAMP (6), 
    	"MODIFIED_BY" VARCHAR2(50), 
    	 PRIMARY KEY ("PERIOD_YEAR_ID")
      USING INDEX  ENABLE
       )
        ';
        DBMS_OUTPUT.PUT_LINE('TABLE "rdi_PERIOD" created successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TABLE "rdi_PERIOD" already exists.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error processing CREATE statement for ''CREATE TABLE "rdi_PERIOD" ( "PERIOD_YEAR_ID" NUMBER, "PERIO...'': ' || SQLERRM);
        RAISE;
END;
/