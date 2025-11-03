BEGIN
   FOR obj IN (SELECT object_name, object_type
               FROM all_objects
               WHERE owner = 'RDI' AND status = 'INVALID'
               ORDER BY object_type) -- Basic ordering
   LOOP
      BEGIN
         IF obj.object_type = 'PACKAGE BODY' THEN
            EXECUTE IMMEDIATE 'ALTER PACKAGE ' || obj.object_name || ' COMPILE BODY';
         ELSE
            EXECUTE IMMEDIATE 'ALTER ' || obj.object_type || ' ' || obj.object_name || ' COMPILE';
         END IF;
         DBMS_OUTPUT.PUT_LINE('Compiled ' || obj.object_type || ': ' || obj.object_name);
      EXCEPTION
         WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error compiling ' || obj.object_type || ': ' || obj.object_name);
      END;
   END LOOP;
END;
/