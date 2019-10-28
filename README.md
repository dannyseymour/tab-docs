# Tab: A Bill Payment and Microlending App

## Project Description
Tab is a simple bill payment app- with a twist. The payment system is built upon the free Square In-App Payments SDK, while the cloud backend sevlet and 
credit analysis portion use a connection to the Yodlee API. 
On a basic level, Tab provides a convenient checkout screen to use a credit card, google pay, or other service to pay bills, rent, and other predictable expenses.
The key to its functionality, however, is that users allow the application to access banking/expense/income history (accessed via the Yodlee API)
and assesses credit risk based on recent financial history, allowing a financing option. The user can choose to "pay now" or choose a short-term loan-
perhaps to the next paycheck, and the app will assess risk and set the interest rate accordingly. This allows the user to "put it on my tab," which creates a new microloan,
pays the bill in question, and collects payment from the user on the specified date by debiting one of the user's accounts.
This is an alternative to a payday or title loan, most useful for those with limited/bad credit histories or few accounts (young people and low-income people), allowing them
to access payday financing without the usual extreme interest rates those services entail. By leveraging the power of user data, a more accurate measurement of risk can help lower
transaction costs and information problems in microfinance and credit risk analysis.


## Table of Contents

* [Intended Users and User Stories](/docs/user-stories.md)   
* [User Experience Walkthrough and Wireframes](/docs/ux.md)
* [Data Model Implementation, ERDs, DDL](/docs/database.md)
* [Implementation, API Descriptions, and Links to Related Repositories](/docs/implementation.md)