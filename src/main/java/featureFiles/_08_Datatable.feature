Feature: Datatable Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario: Create Country
    And Click on the Element in LeftNav
      | setup     |
      | parameter |
      | countries |

    And Click on the Element in Dialouge
      | addButton |

    And User sending the keys in Dialouge
      | nameInput | Mahmutland12 |
      | codeInput | Mhmt         |

    And Click on the Element in Dialouge
      | saveButton |

    Then Success message should be displayed

     # And User delete the Element in Dialouge
     # |Mahmutland12|

     # Then Success message should be displayed

  Scenario: Create Citizenship and delete

    And Click on the Element in LeftNav
      | setup       |
      | parameter   |
      | citizenship |

    And Click on the Element in Dialouge
      | addButton |

    And User sending the keys in Dialouge
      | nameInput | Mahmutland123 |
      | shortName | Mhmt12        |

    And Click on the Element in Dialouge
      | saveButton |

    Then Success message should be displayed

    And User delete the Element in Dialouge
      | Mahmutland123 |

    Then Success message should be displayed

  Scenario: Create Nationality and Delete

    And Click on the Element in LeftNav
      | setup         |
      | parameter     |
      | nationalities |

    And Click on the Element in Dialouge
      | addButton |

    And User sending the keys in Dialouge
      | nameInput | Mahmutish |

    And Click on the Element in Dialouge
      | saveButton |

    Then Success message should be displayed

    And User delete the Element in Dialouge
      | Mahmutish |

    Then Success message should be displayed

  Scenario: Fee Functionality and delete

    And Click on the Element in LeftNav
      | setup     |
      | parameter |
      | fees      |

    And Click on the Element in Dialouge
      | addButton |

    And User sending the keys in Dialouge
      | nameInput       | MahmutFee |
      | codeInput       | M3        |
      | integrationCode | 123       |
      | priorityCode    | 121212    |

    And Click on the Element in Dialouge
      | toggleBar  |
      | saveButton |

    Then Success message should be displayed

    And User delete the Element in Dialouge
      | MahmutFee |

    Then Success message should be displayed