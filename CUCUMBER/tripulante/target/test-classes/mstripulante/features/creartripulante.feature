@Item
Feature: Perform a item creation

  Scenario: Perform item creation with valid details
    Given an item with valid details
      | Nombre       | PRUEBA                               |
      | Apellido     | CUCUMBER                             |
      | EmailAddress | cucu@gmail.com                       |
      | Estado       | 1                                    |
      | Tipo         | AIRE                                 |
      | HorasVuelo   | 200                                  |
      | NroMillas    | 100                                  |
      | KeyCargo     | 7aeb23be-1fbc-40c0-bae9-eb87ce3c87a6 |

    When request is submitted for item creation
    Then verify that the Item HTTP response is 200
    And a item id is returned

  # Scenario: Perform a failed item creation
  #   Given an item with invalid details
  #     | KeyCargo | ASD |
  #   When request is submitted for item creation
  #   Then verify that the Item HTTP response is 500