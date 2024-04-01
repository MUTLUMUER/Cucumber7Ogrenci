Feature: Country Multi Scenario

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully
    And Navigate to country

    Scenario: Create a Country
      When Create a country
      Then Success message should be displayed

  Scenario: Create a Country 2
    When Create a country name as "KamillerUlkesi2" code as "Kamil2"
    Then Success message should be displayed