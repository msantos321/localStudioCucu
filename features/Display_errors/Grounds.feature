Feature: Grounds
    As a coffee lover
    I have to empty the grounds
    So I don't end up with a total mess around the coffee machine

  Background:
    Given the coffee machine is started
    And I handle everything except the grounds

  @priority-medium
  Scenario: When the grounds are emptied, message is removed (uid:d4fa5b46-08cf-445a-a457-2e44ddeb8356)
    When I take "30" coffees
    And I empty the coffee grounds
    Then message "Ready" should be displayed

  @priority-high
  Scenario: Message "Empty grounds" is displayed after 30 coffees are taken (uid:5290c432-6b24-43a6-846b-f1b9d46fc7d0)
    When I take "30" coffees
    Then message "Empty grounds" should be displayed
