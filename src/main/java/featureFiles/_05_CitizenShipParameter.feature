#Senaryo
#CitizenShip sayfasına gidiniz.
#Create işlemini parameter yöntemi ile doğrulayınız.
#Daha sonra aynı bilgilerle tekrar Create yapılamadığını doğrulayınız. (negatif test)
  #Ayrı senaryoda girilen bilgiyi silme işlemini doğrulayınız

  Feature: CitizenShip Functionality

    Background:
      Given Navigate to Campus
      When Enter username and password and click login button
      Then User should login successfully
      And Navigate to CitizenShip

    Scenario: Create a Citizenship with Parameter
      When Create a CitizenShip name as "Cabbarland21" shortKod as "CabbarAga31"
      Then Success message should be displayed

      Scenario: Create a CitizenShip with Parameter
        Given Create a CitizenShip name as "Cabbarland21" shortKod as "CabbarAga31"
        Then Already exist message should be displayed

        Scenario: Delete CitizenShip
          When user delete name as "Cabbarland21"
          Then Success message should be displayed