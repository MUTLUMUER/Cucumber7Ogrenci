package StepDefinitions;

import Pages.DialougeContent;
import Pages.LeftNav;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.apache.commons.lang3.RandomStringUtils;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class _03_CitizenShip {

    LeftNav ln=new LeftNav();
    DialougeContent dc=new DialougeContent();
    @And("Navigate to CitizenShip")
    public void navigateToCitizenShip() {
        ln.myClick(ln.setup);
        ln.myClick(ln.parameter);
        ln.myClick(ln.citizenship);


    }

    @When("Create a CitizenShip")
    public void createACitizenShip() {
        String CitizenShipName= RandomStringUtils.randomAlphanumeric(8);
        String CitizenShipShortName=RandomStringUtils.randomNumeric(4);
        dc.myClick(dc.addButton);
        dc.mySendKeys(dc.nameInput, CitizenShipName);
        dc.mySendKeys(dc.shortName,CitizenShipShortName);
        dc.myClick(dc.saveButton);

    }

    @When("Create a CitizenShip name as {string} shortKod as {string}")
    public void createACitizenShipNameAsShortKodAs(String name, String shortKod) {
        dc.myClick(dc.addButton);
        dc.mySendKeys(dc.nameInput, name);
        dc.mySendKeys(dc.shortName,shortKod);
        dc.myClick(dc.saveButton);
    }

    @Then("Already exist message should be displayed")
    public void alreadyExistMessageShouldBeDisplayed() {
        dc.verifyContainsText(dc.alreadyExist,"already");
    }

    @When("user delete name as {string}")
    public void userDeleteNameAs(String deleteName) {
        dc.deleteItem(deleteName);
    }
}
