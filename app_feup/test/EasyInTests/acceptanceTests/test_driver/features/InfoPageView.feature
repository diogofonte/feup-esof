Feature: InfoPageView
  The Info page should appear when the info button is pressed.

  Scenario: Info page appears when the info button is pressed (1)
    When I open the drawer
    And I tap the button that contains the text "Avaliação"
    And I tap the button that contains the text "Posição no Plano"
    And I tap the "Info" button
    Then I wait until the widget of type "StudyPlanInfoPageView" is present