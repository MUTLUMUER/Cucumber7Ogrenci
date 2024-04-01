package Runners;


import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = {"C:\\Users\\mutlu\\IdeaProjects\\Cucumber7Ogrenci\\src\\main\\java\\featureFiles\\_01_Login.feature",
                "C:\\Users\\mutlu\\IdeaProjects\\Cucumber7Ogrenci\\src\\main\\java\\featureFiles\\_02_Country.feature",
                "C:\\Users\\mutlu\\IdeaProjects\\Cucumber7Ogrenci\\src\\main\\java\\featureFiles\\_03_CitizenShip.feature"
        },


        glue = {"StepDefinitions"}
)

public class _02_TestRunnerBelirliFeaturelar extends AbstractTestNGCucumberTests {
}