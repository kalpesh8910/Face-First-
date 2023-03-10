@LoginPage
Feature: Test Face-First login functionality

  Background: 
    Given user navigate to the FaceFirst Website

  @LoginPositive
  Scenario: Login with right username and password
    When user enter right username
    And user enter right password
    And user click on login button
    Then verify user should be successfully login and redirected on welcome page

  @LoginNegetive
  Scenario: Login with invalid username and password
    When user enter invalid username
    And user enter invalid password
    And user click on login button
    Then verify validation message for the invalid username and password
