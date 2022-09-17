Feature: YearCounter
  The year should be incremented/decremented when incrementYear/decrementYear buttons are pushed.

  Scenario: YearCounter starts at "1ºAno" when the page is loaded (1)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    Then I expect the "YearCounter" to be "1º Ano"

  Scenario: YearCounter increases when the incrementYear button is pressed (2)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    And I tap the "incrementYear" button
    Then I expect the "YearCounter" to be "2º Ano"
    When I tap the "incrementYear" button
    Then I expect the "YearCounter" to be "3º Ano"

  Scenario: YearCounter decreases when the decrementYear button is pressed (3)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    And I tap the "incrementYear" button
    And I tap the "incrementYear" button
    And I tap the "decrementYear" button
    And I tap the "decrementYear" button
    Then I expect the "YearCounter" to be "1º Ano"

  Scenario: YearCounter may be incremented and decremented (4)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    When I tap the "incrementYear" button
    And I tap the "incrementYear" button
    And I tap the "decrementYear" button
    Then I expect the "YearCounter" to be "2º Ano"

  Scenario: YearCounter should be between 1 and 3 (5)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    And I tap the "incrementYear" button
    And I tap the "incrementYear" button
    And I tap the "incrementYear" button
    Then I expect the "YearCounter" to be "3º Ano"

    When I tap the "decrementYear" button
    And I tap the "decrementYear" button
    And I tap the "decrementYear" button
    Then I expect the "YearCounter" to be "1º Ano"




