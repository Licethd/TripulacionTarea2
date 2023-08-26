@Item
Feature: Perform a tripulante creation

  Scenario: Perform tripulante creation with valid details
    Given an item with valid details
      | Nombre       | PRUEBA3                               |
      | Apellido     | CUCUMBER                             |
      | EmailAddress | cucu@gmail.com                       |
      | Estado       | 1                                    |
      | Tipo         | AIRE                                 |
      | HorasVuelo   | 200                                  |
      | NroMillas    | 100                                  |
      | KeyCargo     | 7aeb23be-1fbc-40c0-bae9-eb87ce3c87a6 |

    When request is submitted for tripulante creation
    Then verify that the tripulante HTTP response is 200
    And a tripulante id is returned

  Scenario: Perform a failed tripulante creation
    Given an tripulante with invalid details
      | Nombre       | PRUEBA ERROR                              |
      | Apellido     | CUCUMBER                             |
      | EmailAddress | cucu@gmail.com                       |
      | Estado       | 1                                    |
      | Tipo         | AIRE                                 |
      | HorasVuelo   | 200                                  |
      | NroMillas    | 100                                  |
      | KeyCargo     | 7aeb23be-1fbc-40c0-bae9-eb87ce3c87a5 |
    When request is submitted for tripulante creation
    Then verify that the tripulante HTTP response is 400