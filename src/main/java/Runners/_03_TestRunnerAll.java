package Runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(

        features = {"C:\\src\\main\\java\\featureFiles"},
        glue = {"StepDefinitions"}

)

public class _03_TestRunnerAll extends AbstractTestNGCucumberTests {
}
