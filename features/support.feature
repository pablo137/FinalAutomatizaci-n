Feature: Mercury Tours Verify Support
  Click on the support option
  Back to Home

Scenario: Enter the support section
    Given I click the "SUPPORT" link
    Then A web site under construction message

@supportToHome
Scenario: The support a back to home
    Given I am on the Mercury Tours homepage
    And I click the "SUPPORT" link
    When I press the BACK TO HOME button
    Then I am on the Mercury Tours homepage