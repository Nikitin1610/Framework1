@practise1

  Feature: A few sample TC

    @sample1
    Scenario: Responsive UI behaviour

      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      And I resize window to 1280 and 1024
      Then element with xpath "//b[@id='location']" should be displayed
      And I wait for 2 sec
      Given I resize window to 400 and 1024
      Then element with xpath "//b[@id='location']" should be displayed
      And I wait for 2 sec

    @sample2
    Scenario: Validation of username

      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      Then element with xpath "//label[contains(text(),'Username')]" should be displayed
      When I click on element with xpath "//input[@name='username']"
      And I type "A" into element with xpath "//input[@name='username']"
      When I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should be displayed
      Then element with xpath "//label[@id='username-error']" should contain text "2 characters"

      When I clear element with xpath "//input[@name='username']"
      When I type "aa" into element with xpath "//input[@name='username']"
      When I scroll to the element with xpath "//button[@id='formSubmit']" with offset 50
      And I wait for 2 sec
      When I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should not be displayed

    @sample3
    Scenario: Validation of email

      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      And I type "email@" into element with xpath "//input[@name='email']"
      When I click on element with xpath "//button[@id='formSubmit']"
      And I wait for 2 sec
      Then element with xpath "//label[@id='email-error']" should be displayed
      When I clear element with xpath "//input[@name='email']"

      And I type "email@gmail.com" into element with xpath "//input[@name='email']"
      When I click on element with xpath "//button[@id='formSubmit']"
      And I wait for 2 sec
      Then element with xpath "//label[@id='username-error']" should not be displayed

    @sample4
    Scenario: Validate Password fields
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//input[@id='password']"
      Then I type "Passw" into element with xpath "//input[@id='password']"
      When I type "Passw" into element with xpath "//input[@id='confirmPassword']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='password-error']" should not be present
      When I clear element with xpath "//input[@id='confirmPassword']"
      And I clear element with xpath "//input[@id='password']"

      When element with xpath "//input[@id='confirmPassword']" should be disabled
      Then I click on element with xpath "//button[@id='formSubmit']"
      And element with xpath "//label[@id='password-error']" should be displayed
      Then element with xpath "//label[@id='password-error']" should contain text "is required"

    @sample5
    Scenario: Validation of name filed
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//input[@id='name']"
      Then element with xpath "//*[@aria-describedby='nameDialog']" should be displayed
      When I type "Ievgen" into element with xpath "//input[@id='firstName']"
      When I type "Nikitin" into element with xpath "//input[@id='lastName']"
      When I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "Ievgen Nikitin"
      

    @sample6
     Scenario: Date field validation
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//input[@id='dateOfBirth']"
      When I click on element with xpath "//span[contains(text(),'Prev')]"
      Then element with xpath "//div/select[@data-handler='selectMonth']/option[@value='6']" should be selected
      When I click on element with xpath "//span[contains(text(),'Next')]"
      Then element with xpath "//div/select[@data-handler='selectMonth']/option[@value='7']" should be selected
      When I click on element with xpath "//div/select[@data-handler='selectMonth']/option[@value='9']"
      When I click on element with xpath "//div/select[@data-handler='selectYear']/option[@value='1990']"
      Then I click on element with xpath "//a[contains(text(),'16')]"
      Then element with xpath "//input[@id='dateOfBirth']" should have attribute "value" as "10/16/1990"



    @sample7
    Scenario: Iframes
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      When I switch to iframe with xpath "//iframe[@name='additionalInfo']"
      When I type "Eug" into element with xpath "//input[@id='contactPersonName']"
      When I type "5099809290" into element with xpath "//input[@id='contactPersonPhone']"
      And I switch to default content
      When I click on element using JavaScript with xpath "//span[contains(text(),'Privacy Policy.')]"


    @sample8
    Scenario: New windows
      Given I open url "https://skryabin.com/webdriver/html/sample.html"
      When I click on element with xpath "//*[contains(@onclick,'new_window')]"
      When I switch to new window
      Then element with xpath "/html" should contain text "Document 2"
      When I switch to first window















