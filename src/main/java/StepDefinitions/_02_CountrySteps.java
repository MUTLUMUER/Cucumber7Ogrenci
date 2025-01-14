package StepDefinitions;

import Pages.DialougeContent;
import Pages.LeftNav;
import io.cucumber.java.en.*;
import org.apache.commons.lang3.RandomStringUtils;
import org.openqa.selenium.WebElement;

public class _02_CountrySteps {
    LeftNav ln=new LeftNav();
    DialougeContent dc=new DialougeContent();

    @And("Navigate to country")
    public void navigateToCountry() {
        ln.myClick(ln.setup);
        ln.myClick(ln.parameter);
        ln.myClick(ln.countries);

    }

    @When("Create a country")
    public void createACountry() {
        String ulkeAdi= RandomStringUtils.randomAlphanumeric(8);
        String ulkeKod=RandomStringUtils.randomNumeric(4);

        dc.myClick(dc.addButton);
        dc.mySendKeys(dc.nameInput, ulkeAdi);
        dc.mySendKeys(dc.codeInput, ulkeKod);
        dc.myClick(dc.saveButton);
    }

    @Then("Success message should be displayed")
    public void successMessageShouldBeDisplayed() {
        dc.verifyContainsText(dc.successMessage, "success");
    }

    @When("Create a country name as {string} code as {string}")
    public void createACountryNameAsCodeAs(String ulkeAdi, String ulkeKod) {
        dc.myClick(dc.addButton);
        dc.mySendKeys(dc.nameInput, ulkeAdi);
        dc.mySendKeys(dc.codeInput, ulkeKod);
        dc.myClick(dc.saveButton);
    }
}
