#CitizenShip menusunun kayıt ve silme özelliğini
#(DataTable ile) 5 farklı değer seti ile çalıştırınız.

Feature: CitizenShip Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario Outline: Create Citizenship and Delete

    And Click on the Element in LeftNav
      | setup       |
      | parameter   |
      | citizenship |

    And Click on the Element in Dialouge
      | addButton |

    And User sending the keys in Dialouge
      | nameInput | <name>  |
      | shortName | <short> |

    And Click on the Element in Dialouge
      | saveButton |

    Then Success message should be displayed

    And User delete the Element in Dialouge
      | <name>  |


    Then Success message should be displayed
    Examples:
      | name       | short       |
      | Mahmut1111 | Mahmutish11 |
      | Mahmut1112 | Mahmutish21 |
      | Mahmut1113 | Mahmutish31 |
      | Mahmut1114 | Mahmutish41 |
      | Mahmut1115 | Mahmutish51 |
