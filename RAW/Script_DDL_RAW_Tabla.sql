-----------------------------------------------------------
--RAW
--CREACION Y CARGA
--Esta es script DDL de las tablas de capa RAW.
--La fuente es de una base de datos de sql server.
-----------------------------------------------------------

-----------------------------------------------------------
--CUSTOMER
-----------------------------------------------------------

USE DATABASE AW_PIPELINE;
USE SCHEMA RAW;

CREATE OR ALTER TABLE RAW.RAW_CUSTOMER (
	CustomerID VARCHAR,
	PersonID VARCHAR,
	StoreID VARCHAR,
	TerritoryID VARCHAR,
	AccountNumber VARCHAR,
    rowguid VARCHAR,
    ModifiedDate VARCHAR
);

-----------------------------------------------------------
--PERSON
-----------------------------------------------------------

CREATE OR ALTER TABLE RAW.PERSON (
	BusinessEntityID VARCHAR,
	PersonType VARCHAR,
	NameStyle VARCHAR,
	Title VARCHAR,
	FirstName VARCHAR,
	MiddleName VARCHAR,
	LastName VARCHAR,
	Suffix VARCHAR,
	EmailPromotion VARCHAR,
	AdditionalContactInfo VARCHAR,
	Demographics VARCHAR,
	rowguid VARCHAR,
	ModifiedDate VARCHAR
);

-----------------------------------------------------------
--STORE
-----------------------------------------------------------

CREATE OR ALTER TABLE RAW.Store (
	BusinessEntityID VARCHAR,
	Name VARCHAR,
	SalesPersonID VARCHAR,
	Demographics VARCHAR,
	rowguid VARCHAR,
	ModifiedDate VARCHAR
);

-----------------------------------------------------------
--SALESTERRITORY
-----------------------------------------------------------

CREATE OR ALTER TABLE RAW.SalesTerritory (
	TerritoryID VARCHAR,
	Name VARCHAR,
	CountryRegionCode VARCHAR,
	GROUP_ VARCHAR,
	SalesYTD VARCHAR,
	SalesLastYear VARCHAR,
	CostYTD VARCHAR,
	CostLastYear VARCHAR,
	rowguid VARCHAR,
	ModifiedDate VARCHAR
);

-----------------------------------------------------------
--PRODUCT
-----------------------------------------------------------

CREATE OR ALTER TABLE RAW.PRODUCT (
	ProductID VARCHAR(100),
	Name VARCHAR(100),
	ProductNumber VARCHAR(100),
	MakeFlag VARCHAR(100),
	FinishedGoodsFlag VARCHAR(100),
	Color VARCHAR(100),
	SafetyStockLevel VARCHAR(100),
	ReorderPoint VARCHAR(100),
	StandardCost VARCHAR(100),
	ListPrice VARCHAR(100),
	Size VARCHAR(100),
	SizeUnitMeasureCode VARCHAR(100),
	WeightUnitMeasureCode VARCHAR(100),
	Weight VARCHAR(100),
	DaysToManufacture VARCHAR(100),
	ProductLine VARCHAR(100),
	Class VARCHAR(100),
	Style VARCHAR(100),
	ProductSubcategoryID VARCHAR(100),
	ProductModelID VARCHAR(100),
	SellStartDate VARCHAR(100),
	SellEndDate VARCHAR(100),
	DiscontinuedDate VARCHAR(100),
	rowguid VARCHAR(100),
	ModifiedDate VARCHAR(100)
);

-----------------------------------------------------------
--SUBCATEGORY
-----------------------------------------------------------

CREATE OR ALTER TABLE RAW.PRODUCTSUBCATEGORY (
	ProductSubcategoryID VARCHAR(100),
	ProductCategoryID VARCHAR(100),
	Name VARCHAR(100),
	rowguid VARCHAR(100),
	ModifiedDate VARCHAR(100)
);

-----------------------------------------------------------
--CATEGORY
-----------------------------------------------------------

CREATE OR ALTER TABLE RAW.PRODUCTCATEGORY(
	ProductCategoryID VARCHAR(100),
	Name VARCHAR(100),
	rowguid VARCHAR(100),
	ModifiedDate VARCHAR(100)
);

-----------------------------------------------------------
--SALESORDERHEADER
-----------------------------------------------------------

CREATE OR ALTER TABLE RAW.SALESORDERHEADER (
	SalesOrderID VARCHAR(100),
	RevisionNumber VARCHAR(100),
	OrderDate VARCHAR(100),
	DueDate VARCHAR(100),
	ShipDate VARCHAR(100),
	Status VARCHAR(100),
	OnlineOrderFlag VARCHAR(100),
	SalesOrderNumber VARCHAR(100),
	PurchaseOrderNumber VARCHAR(100),
	AccountNumber VARCHAR(100),
	CustomerID VARCHAR(100),
	SalesPersonID VARCHAR(100),
	TerritoryID VARCHAR(100),
	BillToAddressID VARCHAR(100),
	ShipToAddressID VARCHAR(100),
	ShipMethodID VARCHAR(100),
	CreditCardID VARCHAR(100),
	CreditCardApprovalCode VARCHAR(100),
	CurrencyRateID VARCHAR(100),
	SubTotal VARCHAR(100),
	TaxAmt VARCHAR(100),
	Freight VARCHAR(100),
	TotalDue VARCHAR(100),
	Comment VARCHAR(200),
	rowguid VARCHAR(100),
	ModifiedDate VARCHAR(100)
    );

-----------------------------------------------------------
--SALESORDERDETAIL
-----------------------------------------------------------

CREATE OR ALTER TABLE RAW.SalesOrderDetail (
	SalesOrderID VARCHAR(100),
	SalesOrderDetailID VARCHAR(100),
	CarrierTrackingNumber VARCHAR(100),
	OrderQty VARCHAR(100),
	ProductID VARCHAR(100),
	SpecialOfferID VARCHAR(100),
	UnitPrice VARCHAR(100),
	UnitPriceDiscount VARCHAR(100),
	LineTotal VARCHAR(100),
	rowguid VARCHAR(100),
	ModifiedDate VARCHAR(100)
);
