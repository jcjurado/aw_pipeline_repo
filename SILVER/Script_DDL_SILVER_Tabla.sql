-----------------------------------------------------------
--SILVER
--CREACION Y CARGA
-----------------------------------------------------------

-----------------------------------------------------------
--CREACION DE TABLAS
-----------------------------------------------------------

USE DATABASE AW_PIPELINE;
USE SCHEMA STAGING;

-----------------------------------------------------------
--STG_CUSTOMER
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_CUSTOMER (
	CustomerID INTEGER,
	PersonID INTEGER,
	StoreID INTEGER,
	TerritoryID INTEGER,
    CREATED_DATE DATETIME
);

-----------------------------------------------------------
--STG_PERSON
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_PERSON (
	BusinessEntityID INTEGER,
	PersonType VARCHAR,
	Title VARCHAR,
	FirstName VARCHAR(100),
	MiddleName VARCHAR(100),
	LastName VARCHAR(100),
    CREATED_DATE DATETIME
);

-----------------------------------------------------------
--STG_STORE
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_STORE (
	BusinessEntityID INTEGER,
	Name VARCHAR,
    CREATED_DATE DATETIME
);
-----------------------------------------------------------
--STG_SalesTerritory
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_SalesTerritory (
	TerritoryID INTEGER,
	Name VARCHAR,
	CountryRegionCode VARCHAR,
	GROUP_ VARCHAR,
	SalesYTD NUMBER(20,5),
	SalesLastYear NUMBER(20,5),
    CREATED_DATE DATETIME
);

-----------------------------------------------------------
--PRODUCT
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_PRODUCT
(
    PRODUCTID INTEGER,
    NAME VARCHAR(100),
    PRODUCT_NUMBER VARCHAR(100),
    COLOR VARCHAR(100),
    LISTPRICE VARCHAR(100),
    STANDARCOST VARCHAR(100),
    SUBCATEGORYID TINYINT,
    SUBCATEGORYNAME VARCHAR(100),
    CATEGORYNAME VARCHAR(100),
    CREATED_DATE DATETIME

);

-----------------------------------------------------------
--SUBCATEGORY
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_SUBCATEGORY (
	ProductSubcategoryID INTEGER,
	ProductCategoryID INTEGER,
	Name VARCHAR(100),
	CREATED_DATE DATETIME
);

-----------------------------------------------------------
--CATEGORY
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_CATEGORY(
	ProductCategoryID INTEGER,
	Name VARCHAR(100),
	CREATED_DATE DATETIME
);

-----------------------------------------------------------
--SALESORDERHEADER
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_SALESORDERHEADER (
    SalesOrderID INT,
    RevisionNumber TINYINT,
    OrderDate DATETIME,
    DueDate DATETIME,
    ShipDate DATETIME,
    Status TINYINT,
    OnlineOrderFlag BOOLEAN,
    SalesOrderNumber VARCHAR,
    PurchaseOrderNumber VARCHAR,
    AccountNumber VARCHAR,
    CustomerID INT,
    SalesPersonID INT,
    TerritoryID INT,
    BillToAddressID INT,
    ShipToAddressID INT,
    ShipMethodID INT,
    CreditCardID INT,
    CreditCardApprovalCode VARCHAR(15),
    CurrencyRateID INT,
    SubTotal NUMBER(19,4),
    TaxAmt NUMBER(19,4),
    Freight NUMBER(19,4),
    TotalDue NUMBER(19,4),
    creation_date DATETIME
);

-----------------------------------------------------------
--SALESORDERDETAIL
-----------------------------------------------------------

CREATE OR REPLACE TABLE STAGING.STG_SALESORDERDETAIL (
    SalesOrderID INT,
    SalesOrderDetailID INT,
    CarrierTrackingNumber VARCHAR(25),
    OrderQty SMALLINT,
    ProductID INT,
    SpecialOfferID INT,
    UnitPrice NUMBER(19,4),
    UnitPriceDiscount NUMBER(19,4),
    LineTotal NUMBER(19,4),
    creation_date DATETIME
);

-----------------------------------------------------------
--SALESORDER
-----------------------------------------------------------

create or replace TABLE AW_PIPELINE.STAGING.STG_SALESORDER (
	SALESORDERID NUMBER(38,0),
	SALESORDERDETAILID NUMBER(38,0),
	ORDERDATE TIMESTAMP_NTZ(9),
	DUEDATE TIMESTAMP_NTZ(9),
	SHIPDATE TIMESTAMP_NTZ(9),
	STATUSID NUMBER(38,0),
	CUSTOMERID NUMBER(38,0),
	PRODUCTID NUMBER(38,0),
	TAXAMT NUMBER(19,4),
	FREIGHT NUMBER(19,4),
	ORDERQTY NUMBER(19,4),
	UNITPRICE NUMBER(19,4),
	UNITPRICEDISCOUNT NUMBER(19,4),
	LINETOTAL NUMBER(19,4),
	CREATION_DATE TIMESTAMP_NTZ(9)
);