Feature: CitizenShip Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully
    And Navigate to CitizenShip

  Scenario Outline: Create a Citizenship with Parameter
    When Create a CitizenShip name as "<name>" shortKod as "<shortName>"
    Then Success message should be displayed

    Given Create a CitizenShip name as "<name>" shortKod as "<shortName>"
    Then Already exist message should be displayed

    When user delete name as "<name>"
    Then Success message should be displayed
    Examples:
      | name     | shortName |
      | Halis    | Halis     |
      | Muhlis   | Muhlis    |
      | Kaymaklı | Kaymaklı  |
      | Manda    | Manda     |
      | Yogurdu  | Yogurdu   |