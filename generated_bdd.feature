Here are three BDD test scenarios for the domestic payment process feature:

Feature: domestic payment process

Scenario: Successful Payment
  Given a user is logged into their account with valid login credentials
  When they initiate a payment transaction using their stored payment method
  Then the payment should be processed successfully and the order should be confirmed

Scenario: Invalid Payment Method
  Given a user is logged into their account with valid login credentials but an invalid payment method
  When they attempt to initiate a payment transaction
  Then an error message should be displayed indicating that the payment method is not supported

Scenario: Insufficient Funds
  Given a user is logged into their account with a low account balance (e.g. $10)
  When they initiate a payment transaction using a payment method that exceeds their available funds (e.g. $100)
  Then an error message should be displayed indicating that insufficient funds are unavailable