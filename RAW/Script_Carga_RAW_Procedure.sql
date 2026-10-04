-----------------------------------------------------------
--RAW
--CREACION PRODEDURES
-----------------------------------------------------------

-----------------------------------------------------------
--CUSTOMER
-----------------------------------------------------------

USE DATABASE AW_PIPELINE;
USE SCHEMA RAW;

CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_CUSTOMER()
RETURNS VARCHAR
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.CUSTOMER;
    
    COPY INTO RAW.CUSTOMER
    FROM @STG_AW_RAW/Customer.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - CUSTOMER cargado';
END;

-----------------------------------------------------------
--PERSON
-----------------------------------------------------------
CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_PERSON()
RETURNS VARCHAR
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.PERSON;
    
    COPY INTO RAW.PERSON
    FROM @STG_AW_RAW/Person.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - PERSON cargado';
END;

-----------------------------------------------------------
--STORE
-----------------------------------------------------------
CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_STORE()
RETURNS VARCHAR
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.STORE;
    
    COPY INTO RAW.STORE
    FROM @STG_AW_RAW/Store.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - STORE cargado';
END;

-----------------------------------------------------------
--SALESTERRITORY
-----------------------------------------------------------
CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_SALESTERRITORY()
RETURNS VARCHAR
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.SALESTERRITORY;
    
    COPY INTO RAW.SALESTERRITORY
    FROM @STG_AW_RAW/SalesTerritory.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - SALESTERRITORY cargado';
END;

-----------------------------------------------------------
--PRODUCTO
-----------------------------------------------------------

CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_PRODUCT()
RETURNS STRING
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.PRODUCT;
    
    COPY INTO RAW.PRODUCT
    FROM @STG_AW_RAW/Product.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - PRODUCTO cargado';
END;

-----------------------------------------------------------
--SUBCATEGORY
-----------------------------------------------------------

CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_SUBCATEGORY()
RETURNS STRING
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.PRODUCTSUBCATEGORY;
    
    COPY INTO RAW.PRODUCTSUBCATEGORY
    FROM @STG_AW_RAW/ProductSubcategory.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - SUBCATEGORY cargado';    
END;

-----------------------------------------------------------
--CATEGORY
-----------------------------------------------------------

CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_CATEGORY()
RETURNS STRING
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.PRODUCTCATEGORY;
    
    COPY INTO RAW.PRODUCTCATEGORY
    FROM @STG_AW_RAW/ProductCategory.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - CATEGORY cargado';    
END;


-----------------------------------------------------------
--SALESORDERHEADER
-----------------------------------------------------------
CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_SALESORDERHEADER()
RETURNS STRING
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.SALESORDERHEADER;
    
    COPY INTO RAW.SALESORDERHEADER
    FROM @STG_AW_RAW/SalesOrderHeader.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - SALESORDERHEADER cargado';    
END;

-----------------------------------------------------------
--SALESORDERDETAIL
-----------------------------------------------------------

CREATE OR REPLACE PROCEDURE RAW.SP_LOAD_SALESORDERDETAIL()
RETURNS STRING
LANGUAGE SQL
AS
BEGIN
    TRUNCATE TABLE RAW.SALESORDERDETAIL;
    
    COPY INTO RAW.SALESORDERDETAIL
    FROM @STG_AW_RAW/SalesOrderDetail.csv
    FILE_FORMAT = AW_PIPELINE.RAW.FF_CSV_STANDARD
    ON_ERROR = 'ABORT_STATEMENT'
    FORCE = TRUE;
    COMMIT;

    RETURN 'OK - SALESORDERDETAIL cargado';    
END;