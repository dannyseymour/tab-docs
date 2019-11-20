## Data Model Implementation (Android)

[DDL](/ddl.md)    
[DDL SQL](/ddl.sql)    
[Schema](https://github.com/dannyseymour/TabBootcampRealFinal/blob/master/app/schemas/edu.cnm.deepdive.tabbootcamprealfinal.service.TabDatabase/1.json)

### Description of Entities

* User is the top level entity. One user can contain many items, accounts, and transactions.
* Item is an object specified by the Plaid API. In short, it refers to one user login with a bank- for example,
my Bank of America account, consisting of a checking and credit card account, would be considered one item. This is 
the primary data transfer object sent back by the WebView link created by Plaid.
* Account, using the example above, is an individual ledger account consisting of many transactions, and some metadata
about the account details. In the example above, this may be my credit card account within my Bank of America account.
* Transaction is the lowest level data point this app will consume. It consists of numerical data such as the transaction amount, plus data
about the counterparty, data, status, category, and more.

### Entity Relationship Diagrams
Primary keys marked in bold. Foreign keys marked in italics. Nullable attributes marked with N. No attributes outside of primary keys are indexed in this model.   

[Entity Relationship Diagram](/REAL FINAL TAB ERD.png)   
[ERD PDF Version](/REAL FINAL TAB ERD.pdf)   

### Source Code
[Entity Classes](https://github.com/dannyseymour/TabBootcampRealFinal/tree/master/app/src/main/java/edu/cnm/deepdive/tabbootcamprealfinal/model/entity)   
[Dao Interfaces](https://github.com/dannyseymour/TabBootcampRealFinal/tree/master/app/src/main/java/edu/cnm/deepdive/tabbootcamprealfinal/model/dao)   
[Database Service Class](https://github.com/dannyseymour/TabBootcampRealFinal/blob/master/app/src/main/java/edu/cnm/deepdive/tabbootcamprealfinal/service/TabDatabase.java)   