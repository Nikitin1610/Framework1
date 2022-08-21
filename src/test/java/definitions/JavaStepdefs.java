package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.openqa.selenium.logging.LogEntries;
import org.openqa.selenium.logging.LogEntry;
import support.TestContext;
import static support.TestContext.getDriver;


public class JavaStepdefs {
    @Given("I write java code")
    public void iWriteJavaCode() {

        System.out.println("Here is some text!");
    }

    @And("I create my steps")
    public void iCreateMySteps() {

        String fName = "Ievgen";

        System.out.println(fName.toUpperCase());

    }

    @Given("I print {string} argument")
    public void iPrintArgument(String var) {
        System.out.println(var);
        System.out.println(var.equalsIgnoreCase("Eugene"));
        System.out.println(var == "Java");


    }

    @Given("I perform actions with {string} and {string}")
    public void iPerformActionsWithAnd(String var1, String var2) {

        System.out.println(var1 + " " + var2);
        System.out.println(var1.contains(var2));


    }

    @Given("I go to {string} page and print details")
    public void iGoToPageAndPrintDetails(String page) {
        if (page.equals("google")) {

            TestContext.getDriver().get("https://www.google.com/");
            System.out.println(TestContext.getDriver().getCurrentUrl());


        } else if (page.equals("sample")) {
            getDriver().get("https://skryabin.com/webdriver/html/sample.html");
        }
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getWindowHandle());
        System.out.println(TestContext.getDriver().getCurrentUrl());

    }

    @And("I print logs to the console")
    public void iPringLogsToTheConsole() {

        LogEntries logEntries = getDriver().manage().logs().get("browser");

        for (LogEntry element : logEntries){
            System.out.println();
        }

    }
}