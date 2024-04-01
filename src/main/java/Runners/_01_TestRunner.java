package Runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;


@CucumberOptions(

        features = {"C:\\Users\\mutlu\\IdeaProjects\\Cucumber7Ogrenci\\src\\main\\java\\featureFiles\\_01_Login.feature"}, //Buraya feature files in path i verilecek
        glue = {"StepDefinitions"}  //stepDefinitions un clasörünün adı yazılıyor
)
public class _01_TestRunner extends AbstractTestNGCucumberTests {

}
