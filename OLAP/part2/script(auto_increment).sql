CREATE SEQUENCE sq_name
START WITH 1 
INCREMENT BY 1 
NOMAXVALUE;

CREATE OR REPLACE TRIGGER tr_ai_table before INSERT ON "TableName" FOR each row
BEGIN
  SELECT sq_name.NEXTVAL
  INTO :new."id"
  FROM dual;
END;