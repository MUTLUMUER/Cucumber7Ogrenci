#Nationality menusunun kayıt ve silme özelliğini
#DataTable ile 5 fakrlı değer seti ile çalıştırınız.

Feature: Nationality Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario Outline: Create Nationality and Delete

    And Click on the Element in LeftNav
      | setup         |
      | parameter     |
      | nationalities |

    And Click on the Element in Dialouge
      | addButton |

    And User sending the keys in Dialouge
      | nameInput | <name> |

    And Click on the Element in Dialouge
      | saveButton |

    Then Success message should be displayed

    And User delete the Element in Dialouge
      | <name> |

    Then Success message should be displayed
    Examples:
      | name       |
      | Mahmutish1 |
      | Mahmutish2 |
      | Mahmutish3 |
      | Mahmutish4 |
      | Mahmutish5 |
