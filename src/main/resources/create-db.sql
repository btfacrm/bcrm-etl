CREATE SCHEMA sample;


 
CREATE TABLE sample.emailview (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 5, INCREMENT BY 1), 
contactId INTEGER, 
email varchar(50),
dateUpdated  varchar(50) ,
CONSTRAINT emailview_primary_key PRIMARY KEY (id));


CREATE TABLE sample.phoneview (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 5, INCREMENT BY 1), 
contactId INTEGER, 
type varchar(50),
number varchar(50) ,
dateUpdated  varchar(50),
CONSTRAINT phoneview_primary_key PRIMARY KEY (id));




CREATE TABLE sample.accountview (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 5, INCREMENT BY 1),
account VARCHAR(1024),
contactId BIGINT,
firstName VARCHAR(1024),
lastName VARCHAR(1024),
name VARCHAR(1024),
ssn VARCHAR(1024),
agencyCode VARCHAR(1024),
agencyDescription VARCHAR(1024),
regionCode VARCHAR(1024),
regionDescription VARCHAR(1024),
tribeCode VARCHAR(1024),
tribeDescription VARCHAR(1024),
motherMaidenName VARCHAR(1024),
tierLevelCode BIGINT,
tierLevelDescription VARCHAR(1024),
freezeCode VARCHAR(1024),
freezeDescription VARCHAR(1024),
typeCode VARCHAR(1024),
typeDescription VARCHAR(1024),
categoryCode VARCHAR(1024),
categoryDescription VARCHAR(1024),
dateUpdated VARCHAR(1024),
CONSTRAINT accountview_primary_key PRIMARY KEY (id));


CREATE TABLE sample.addressview (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 5, INCREMENT BY 1),
   contactId INTEGER  NOT NULL
  ,addType   VARCHAR(1024) NOT NULL
  ,address1  VARCHAR(1024) NOT NULL
  ,address2  VARCHAR(1024) NOT NULL
  ,address3  VARCHAR(1024) NOT NULL
  ,city      VARCHAR(1024) NOT NULL
  ,state     VARCHAR(1024) NOT NULL
  ,zipCode   INTEGER  NOT NULL
  ,dateUpdated    VARCHAR(1024) NOT NULL 
  ,CONSTRAINT addressview_primary_key PRIMARY KEY (id));
  
  
  
  
CREATE TABLE sample.balanceview (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 5, INCREMENT BY 1),
   account VARCHAR(10) NOT NULL  
  ,balance NUMERIC(7,2) NOT NULL
  ,dateUpdated  VARCHAR(20) NOT NULL
  ,CONSTRAINT balanceview_primary_key PRIMARY KEY (id));
  
CREATE TABLE sample.disbursmentview (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 5, INCREMENT BY 1),
   account           VARCHAR(10) NOT NULL 
  ,transactionNumber INTEGER  NOT NULL
  ,code              VARCHAR(8) NOT NULL
  ,currency          VARCHAR(3) NOT NULL
  ,amount            NUMERIC(8,2) NOT NULL
  ,dateUpdated              VARCHAR(20) NOT NULL
 ,CONSTRAINT disbursmentview_primary_key PRIMARY KEY (id));
  





CREATE TABLE sample.watermark (id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 6, INCREMENT BY 1), 
objName varchar(50) ,
LastRun varchar(50) ,
CONSTRAINT watermark_primary_key PRIMARY KEY (id));


