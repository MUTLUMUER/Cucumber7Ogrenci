Feature: Datatable Örnek

  Scenario: Users List
    When write username "Kamil"
    And write username and password "Kamil" and "1234"

    And write username as Datatable
      | Ali    |
      | Mahmut |
      | Kamil  |
      | Kemal  |
      | Kamrul |

    And write username and password as Datatable
      | Ali    | 12     |
      | Mahmut | 123    |
      | Kamil  | 2134   |
      | Kemal  | 12345  |
      | Kamrul | 123456 |
