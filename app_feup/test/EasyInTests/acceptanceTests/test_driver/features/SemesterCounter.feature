Feature: SemesterCounter
  The semester should be incremented/decremented when incrementSemester/decrementSemester buttons are pressed.

  Scenario: SemesterCounter starts at "1ºSemestre" when the page is loaded (1)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    Then I expect the "SemesterCounter" to be "1º Semestre"

  Scenario: SemesterCounter may be incremented and decremented (2)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    When I tap the "incrementSemester" button
    Then I expect the "SemesterCounter" to be "2º Semestre"
    And I tap the "decrementSemester" button
    Then I expect the "SemesterCounter" to be "1º Semestre"

  Scenario: SemesterCounter should be between 1 and 2 (3)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    When I tap the "incrementSemester" button
    And I tap the "incrementSemester" button
    Then I expect the "SemesterCounter" to be "2º Semestre"

    When I tap the "decrementSemester" button
    And I tap the "decrementSemester" button
    Then I expect the "SemesterCounter" to be "1º Semestre"