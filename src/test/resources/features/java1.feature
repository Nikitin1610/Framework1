@java1
  Feature: Java scenarious

    @java1_1
    Scenario: Java steps
      Given I write java code
      And I create my steps

    @java1_2
    Scenario: Java steps with argument
      Given I print "Eugene" argument

    @java1_3
    Scenario: Java variables
      Given I perform actions with "my var" and "my VAR"


#WebDriver functions

    @java1_10
    Scenario: Open the page
      Given I go to "google" page and print details
      And I go to "sample" page and print details
      And I print logs to the console


