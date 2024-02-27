DELETE from sample.emailview;
DELETE from sample.phoneview;
DELETE from sample.accountview;
DELETE from sample.disbursmentview;
DELETE from sample.balanceview;
DELETE from sample.addressview;
DELETE from sample.watermark;


INSERT INTO sample.emailview (contactId, email,dateUpdated) 
VALUES 
 (103,'user103@test.com','2024-02-10T21:00:00')
,(104,'user104@test.com','2024-02-10T22:00:00');


INSERT INTO sample.phoneview (contactId,type,number,dateUpdated) 
VALUES 
 (1,'principal','650-304-9999', '2024-02-10T21:00:00')
,(2,'principal','650-304-99991','2024-02-10T21:00:00');



INSERT INTO sample.accountview (account,contactId,firstName,lastName,name,ssn,agencyCode,agencyDescription,regionCode,regionDescription,tribeCode,tribeDescription,motherMaidenName,tierLevelCode,tierLevelDescription,freezeCode,freezeDescription,typeCode,typeDescription,categoryCode,categoryDescription,dateUpdated)
VALUES
 ('23U1234561',123451,'Han1','Solo1','Han1 Solo1','1234567891','200','Cherokke Agency','010','Eastern Region','040','Seneca Nation of NY','Virginia Kuhn',20,'Tier level description','freeze','description','200','IMM Accounts','110','Unallotted Indian','2024-02-11T21:00:00')
,('23U1234562',123452,'Han2','Solo2','Han2 Solo2','1234567892','200','Cherokke Agency','010','Eastern Region','040','Seneca Nation of NY','Virginia Kuhn',20,'Tier level description','freeze','description','200','IMM Accounts','110','Unallotted Indian','2024-02-11T21:00:00')
,('23U1234563',123452,'Han2','Solo2','Han2 Solo2','1234567892','200','Cherokke Agency','010','Eastern Region','040','Seneca Nation of NY','Virginia Kuhn',20,'Tier level description','freeze','description','200','IMM Accounts','110','Unallotted Indian','2024-02-11T21:00:00');



INSERT INTO sample.disbursmentview(account,transactionNumber,code,currency,amount,dateUpdated) 
VALUES 
 ('23U1234561',123451,'CHECKDEP','USD',12344.13,'2024-02-10T21:00:00')
,('23U1234562',123452,'CHECKDEP','USD',12344.23,'2024-02-10T21:00:00')
,('23U1234563',123453,'CHECKDEP','USD',12344.33,'2024-02-04T21:00:00');


INSERT INTO sample.balanceview(account,balance,dateUpdated) 
VALUES 
 ('23U1234561',1234.14,'2024-02-10T21:00:00')
,('23U1234562',1234.24,'2024-02-10T21:00:00');


INSERT INTO sample.addressview(contactId,addType,address1,address2,address3,city,state,zipCode,dateUpdated)
VALUES 
 (134561,'principal','address11','address21','address31','San Jose','CA',912344,'2024-02-10T21:00:00')
,(134564,'principal','address14','address24','address34','San Jose','CA',912344,'2024-02-13T21:00:00');

INSERT INTO sample.watermark (objName,LastRun) 
VALUES 
  ('account','2024-02-11T21:00:00')
 ,('phone','2024-02-06T21:00:00')
 ,('email','2024-02-06T21:00:00')
 ,('address','2024-02-06T21:00:00')
 ,('balance','2024-02-06T21:00:00')
 ,('disbursment','2024-02-06T21:00:00') ;