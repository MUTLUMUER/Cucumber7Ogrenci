#Inventory Bölümündeki
#Item Categories Çalışmasını test ediniz
#girişi yapıp , sonrasında silmesini yapınız
Feature: Inventory Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario Outline: Create Inventory and Delete

    And Click on the Element in LeftNav
      | inventory      |
      | setupInventory |
      | inventoryCat   |

    And Click on the Element in Dialouge
      | addButton |

    And User sending the keys in Dialouge
      | nameInput | <name> |

    And Click on the Element in Dialouge
      | userType |
      | <type>   |


    And Click on the Element in Dialouge
      | saveButton |

    Then Success message should be displayed

    And User delete the Element in Dialouge
      | <name> |


    Then Success message should be displayed
    Examples:
      | name     | type          |
      | Maho     | student       |
      | Mahoo    | administrator |
      | Mahooo   | student       |
      | Mahoooo  | administrator |
      | Mahooooo | student       |