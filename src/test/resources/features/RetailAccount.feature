Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'shabshab02@tek.com' and password 'Afghanshams02$'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  @UpdateInfo
  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'Shabana jan' and Phone '2025468970'
    And User click on Update button
    Then user profile information should be updated

  @ChangeNewPass
  Scenario: Verify User can Update password
    And User enter below information
      | previousPassword | newPassword    | confirmPassword |
      | Afghanshams02$   | Afghanshams04$ | Afghanshams04$  |
    And User click on Change Password button
    Then a message should be displayed Password Updated Successfully

  @AddPayment
  Scenario: Verify User can add a payment method
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 8753296341739208 | shabana    |              12 |           2024 |          656 |
    And User click on Add your Card button
    Then a message should be displayed Payment Method added successfully

  @UpdateTheCard
  Scenario: Verify User can edit Debit or Credit card
    And User select the payment Card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard    | expirationMonth | expirationYear | securityCode |
      | 7648392439875394 | shabana shams |              12 |           2025 |          499 |
    And user click on Update Your Card button
    Then a message should be displayed Payment Method updated Successfully

  @RemoveCardTest
  Scenario: Verify User can remove Debit or Credit card
    And User select the payment Card
    And User click on remove option of card section
    Then payment details should be removed

  @AddNewAddress
  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country       | fullName      | phoneNumber | streetAddress | apt | city    | state | zipCode |
      | United States | Shabana Shams |  2803875638 | 123 Nowhere   |  11 | AshVill | Ohio  |   56724 |
    And User click on Add Your Address button
    Then a message should be displayed Address Added Successfully

  @EditOldAddress
  Scenario: Verify User can edit an Address added on account
    And User click on edit address option
    And User fill new address form with below information
      | country       | fullName      | phoneNumber | streetAddress | apt | city        | state    | zipCode |
      | United States | Shabana Shams |  3647183926 | 33 Wood Rd    | 222 | Haltom City | New York |   38919 |
    And User click update Your Address button
    Then a message should be displayed Address Updated Successfully

  @RemoveOldAddress
  Scenario: Verify User can remove Address from Account
    And User click on remove option of Address section
    Then Address details should be removed
