Here are three BDD test scenarios for the feature "Perform foreign transaction on ebanking portal" in Gherkin-style:

Feature: Perform foreign transaction on ebanking portal

Scenario: Successful Foreign Transaction
  Given a user with valid login credentials and sufficient balance to perform a foreign transaction
  When the user initiates a foreign transaction on the ebanking portal
  Then the transaction is successfully processed, and the updated balance reflects the foreign exchange rate difference

Scenario: Insufficient Balance for Foreign Transaction
  Given a user with invalid login credentials or insufficient balance to perform a foreign transaction
  When the user attempts to initiate a foreign transaction on the ebanking portal
  Then an error message is displayed indicating the user lacks sufficient funds for the transaction

Scenario: Error in Currency Conversion
  Given a user with valid login credentials and sufficient balance, but incorrect currency code selected for conversion
  When the user initiates a foreign transaction on the ebanking portal using the incorrect currency code
  Then an error message is displayed indicating that the selected currency code is invalid