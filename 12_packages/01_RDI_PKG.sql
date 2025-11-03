create or replace PACKAGE RDI_PKG AS

  PROCEDURE CREATE_RDI_FRAME_DATA
  (p_frame_name in RDI_FRAME.FRAME_NAME%TYPE,
  p_quarterly_yearly RDI_PERIOD.QUARTERLY_YEARLY%TYPE,
  p_year RDI_PERIOD.YEAR%TYPE,
  p_type RDI_PERIOD.TYPE%TYPE,
  p_existing_frame_id RDI_FRAME.FRAME_ID%TYPE default null,
  p_from_sbr RDI_COMPANY_DETAILS.FROM_SBR%TYPE,
  p_frame_id        OUT  RDI_FRAME.FRAME_ID%TYPE,
  p_period_id       OUT  RDI_PERIOD.PERIOD_ID%TYPE,
  p_frame_period_id OUT  RDI_FRAME_PERIOD.FRAME_PERIOD_ID%TYPE);

END RDI_PKG;
/
create or replace PACKAGE BODY RDI_PKG AS

PROCEDURE CREATE_RDI_FRAME_DATA(
    p_frame_name        IN RDI_FRAME.FRAME_NAME%TYPE,
    p_quarterly_yearly  IN RDI_PERIOD.QUARTERLY_YEARLY%TYPE,
    p_year              IN RDI_PERIOD.YEAR%TYPE,
    p_type              IN RDI_PERIOD.TYPE%TYPE,
    p_existing_frame_id IN RDI_FRAME.FRAME_ID%TYPE default null,
    p_from_sbr          IN RDI_COMPANY_DETAILS.FROM_SBR%TYPE,
    p_frame_id        OUT  RDI_FRAME.FRAME_ID%TYPE,
    p_period_id       OUT  RDI_PERIOD.PERIOD_ID%TYPE,
    p_frame_period_id OUT  RDI_FRAME_PERIOD.FRAME_PERIOD_ID%TYPE
  ) IS
    -- Local variables to hold the generated IDs for linking tables
    v_frame_id          RDI_FRAME.FRAME_ID%TYPE;
    v_period_id         RDI_PERIOD.PERIOD_ID%TYPE;
    v_frame_period_id   RDI_FRAME_PERIOD.FRAME_PERIOD_ID%TYPE;
    v_agent_count     NUMBER;
BEGIN
  
    -- Point 2: Load data into RDI_FRAME, RDI_PERIOD, and RDI_FRAME_PERIOD
    -- Step 1: Create the main frame record
    IF p_frame_name IS NOT NULL THEN
        INSERT INTO RDI_FRAME (
          FRAME_NAME
        ) VALUES (
          p_frame_name
        ) RETURNING FRAME_ID INTO v_frame_id;
    ELSIF p_existing_frame_id IS NOT NULL THEN
        v_frame_id:= p_existing_frame_id;
    END IF;    

    -- Step 2: Ensure the period exists (insert if new) and get its ID
    MERGE INTO RDI_PERIOD p
    USING (
      SELECT p_quarterly_yearly AS qy, p_year AS y, p_type AS t FROM DUAL
    ) src
    ON (p.QUARTERLY_YEARLY = src.qy AND p.YEAR = src.y)
    WHEN NOT MATCHED THEN
      INSERT (QUARTERLY_YEARLY, YEAR, TYPE, STATUS)
      VALUES (src.qy, src.y, src.t, '1');

    -- Fetch the Period ID (whether it was new or existing)
    SELECT PERIOD_ID
    INTO v_period_id
    FROM RDI_PERIOD
    WHERE QUARTERLY_YEARLY = p_quarterly_yearly AND YEAR = p_year;

    -- Step 3: Link the Frame and Period together
    INSERT INTO RDI_FRAME_PERIOD (
      FRAME_ID,
      PERIOD_ID
    ) VALUES (
      v_frame_id,
      v_period_id
    ) RETURNING FRAME_PERIOD_ID INTO v_frame_period_id;

 OUTPUT.PUT_LINE('Frame creation and data load process completed successfully.');

    p_frame_id := v_frame_id;
    p_period_id := v_period_id;
    p_frame_period_id := v_frame_period_id;
  EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK; -- Undo all changes if any step fails
      DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);
      RAISE; -- Propagate the error to the calling application
      
END CREATE_RDI_FRAME_DATA;


END RDI_PKG;
/