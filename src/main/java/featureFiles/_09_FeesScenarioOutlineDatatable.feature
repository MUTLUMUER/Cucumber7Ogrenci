Feature: Fees multiple values functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

  Scenario Outline: Fee Functionality and delete

    And Click on the Element in LeftNav
      | setup     |
      | parameter |
      | fees      |

    And Click on the Element in Dialouge
      | addButton |

    And User sending the keys in Dialouge
      | nameInput       | <name>     |
      | codeInput       | <code>     |
      | integrationCode | <intCode>  |
      | priorityCode    | <priority> |

    And Click on the Element in Dialouge
      | toggleBar  |
      | saveButton |

    Then Success message should be displayed

    And User delete the Element in Dialouge
      | <name> |

    Then Success message should be displayed
    Examples:
      | name        | code | intCode  | priority |
      | MahmutFee11 | 1211 | PayPal   | 23411    |
      | MahmutFee21 | 1221 | Cash     | 23421    |
      | MahmutFee31 | 1231 | ApplePay | 23431    |
      | MahmutFee41 | 1241 | Cheque   | 23441    |
      | MahmutFee51 | 1251 | Crypto   | 23451    |