@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

   @predefined2
   Scenario: Predefined steps for Sheremetvevo airport
     Given I open url "https://www.moscow-airport.com/sheremetyevo/"
     Then I should see page title as "Moscow Sheremetyevo Airport (SVO)"
     Then element with xpath "//li/a[@title='Airlines']" should be present
     Then I click on element with xpath "//li/a[@title='Airlines']"
     Then element with xpath "//li/a[@title='Airlines']" should be present
     When I type "Air China" into element with xpath "//div/input[@placeholder='Search airlines']"
     Then I click on element using JavaScript with xpath "//a[contains(text(),'Air China')]"
     Then I wait for element with xpath "//a[contains(text(),'www.airchina.us/US/GB/Home')]" to be present
     Then element with xpath"//a[contains(text(),'www.airchina.us/US/GB/Home')]" should contain text "www.airchina.us/US/GB/Home"


