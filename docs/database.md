## Data Model Implementation (Android)

Due to errors in XML which prevented running as of the morning of 10/28, I have not
yet generated a schema or DDL.

### Description of Entities

* User is the top-level entity, which stores fundamental information such as the user's name, id, and credit score.
* Account refers to any open debit account- where the user owes money. It contains information such as the provider to whom the money is owed, the amount due, 
the date due, and the amount owed.
* Payment Option contains information on any stored payments, connected bank accounts, credit cards, or paypal/Google Pay. It contains identifying information such as the account type
and date added, but only the last 4 digits of the account (for security purposes).
* Transaction contains a ledger of previous transactions stored in memory. The primary transaction ledger will be stored in the cloud servlet for persistence, but there
will be a local cache stored in Room for convenient access.

### Entity Relationship Diagrams
Primary keys marked in bold. Foreign keys marked in italics. Nullable attributes marked with N. No attributes outside of primary keys are indexed in this model.   

[Entity Relationship Diagram](/REAL FINAL TAB ERD.png)   
[ERD PDF Version](/REAL FINAL TAB ERD.pdf)   

### Source Code
[Entity Classes](https://github.com/dannyseymour/Tab/tree/master/app/src/main/java/io/discordia/tab/model/entity)   
[Dao Interfaces](https://github.com/dannyseymour/Tab/tree/master/app/src/main/java/io/discordia/tab/model/dao)   
[Database Service Class](https://github.com/dannyseymour/Tab/blob/master/app/src/main/java/io/discordia/tab/service/TabDatabase.java)   