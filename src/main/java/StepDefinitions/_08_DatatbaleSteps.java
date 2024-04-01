package StepDefinitions;

import Pages.DialougeContent;
import Pages.LeftNav;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import org.openqa.selenium.WebElement;

import java.util.List;

public class _08_DatatbaleSteps {
    LeftNav ln=new LeftNav();

    DialougeContent dc=new DialougeContent();

    @And("Click on the Element in LeftNav")
    public void clickOnTheElementInLeftNav(DataTable linkler) {
        List<String> strLinkList= linkler.asList(String.class);

        for(int i=0;i< strLinkList.size();i++) {
            //System.out.println(strLinkList.get(i));
            WebElement linkWebElemnt= ln.getWebElement(strLinkList.get(i));
            ln.myClick(linkWebElemnt);
        }
    }

    @And("Click on the Element in Dialouge")
    public void clickOnTheElementInDialouge(DataTable butonlar) {
        List<String> strButtonList= butonlar.asList(String.class);

        for(int i=0;i< strButtonList.size();i++) {
            WebElement linkWebElemnt= dc.getWebElement(strButtonList.get(i));
            dc.myClick(linkWebElemnt);
        }
    }

    @And("User sending the keys in Dialouge")
    public void userSendingTheKeysInDialouge(DataTable textBoxVeYazilar) {
        List<List<String>>listTextYazi=textBoxVeYazilar.asLists(String.class);
        for (int i = 0; i <listTextYazi.size() ; i++) {
            WebElement textBoxWebElement= dc.getWebElement(listTextYazi.get(i).get(0));
            dc.mySendKeys(textBoxWebElement,listTextYazi.get(i).get(1));

        }
    }

    @And("User delete the Element in Dialouge")
    public void userDeleteTheElementInDialouge(DataTable silinecekler) {
        List<String>strSilList=silinecekler.asList(String.class);
        for (int i = 0; i < strSilList.size(); i++) {
            dc.deleteItem(strSilList.get(i));

        }
    }
}
