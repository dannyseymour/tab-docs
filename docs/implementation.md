## Implementation and APIs
Tab uses two sets APIs- one to import and process data, and one to handle transactions. The first group uses:
* The Yodlee API, which oepns a connection to data from a user's bank and credit accounts
* A custom API I am building in Django/Heroku, which will use a python script to calculate credit risk based on data imported from
the Yodlee API and return that data to the cloud servlet and/or device apps.

The second set uses various Square APIs:
* Payments API- takes user input and sends that data to Square's payment API and returns confirmation of payment received or an error. This may not need to interact directly with the cloud servlet- it can run directly through the user-facing apps. The transaction will show up in the data obtained by Yodlee, making logging of this payment
activity by the cloud servlet potentially redundant.
* Customers API allows users to save payment methods to be used again in the future-works with Square Oauth

[Application Map](ApplicationComponents.png)
## Android App

[Master Source Code](https://github.com/dannyseymour/Tab)

*[Android Manifest](https://github.com/dannyseymour/Tab/blob/master/app/src/main/AndroidManifest.xml)   

*[Main Application](https://github.com/dannyseymour/Tab/blob/master/app/src/main/java/io/discordia/tab/TabApplication.java)  
 
*[Main Navigation Activity (Presently the launcher application, though this will probably change)](https://github.com/dannyseymour/Tab/blob/master/app/src/main/java/io/discordia/tab/viewmodel/NavigationActivity.java)


## Java Servlet (WORK IN PROGRESS)

[Source Code](https://github.com/dannyseymour/tabbackend)
## Custom Django API (WORK IN PROGRESS)


[Source Code](https://github.com/dannyseymour/tabcreditanalysis)