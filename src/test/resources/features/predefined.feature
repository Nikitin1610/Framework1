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


  @predefined3
  Scenario: Steps for Bing
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@id='sb_form_q']" should not be present
    When I type "Behaviour Driven Development" into element with xpath "//input[@id='sb_form_q']"
    Then I click on element using JavaScript with xpath "//label[@id='search_icon']"

  @predefined4
  Scenario: New steps for Yandex
    Given I open url "https://yandex.com/"
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Java" into element with xpath "//input[@id='text']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//div[@class='content__left']" to be present
    Then element with xpath "//div[@class='content__left']" should contain text "Java"









