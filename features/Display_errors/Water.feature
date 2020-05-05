Feature: Water
    As a coffee lover
    I have to handle the water tank
    So I can have coffee when I need it

  Background:
    Given the coffee machine is started
    And I handle everything except the water tank

  @priority-high
  Scenario: When the water tank is filled, the message disappears (uid:6c9910b6-d326-4330-8032-c092bb4450dd)
    When I take "55" coffees
    And I fill the water tank
    Then message "Ready" should be displayed

  @priority-low
  Scenario: It is possible to take 10 coffees after the message "Fill water tank" is displayed (uid:68ea0f6d-c74b-4380-ad70-694d5dbe9bf4)
    When I take "60" coffees
    Then coffee should be served
    When I take a coffee
    Then coffee should not be served

  @priority-high
  Scenario: Message "Fill water tank" is displayed after 50 coffees are taken (uid:bc755888-5c16-4f68-98e1-135acb8b3d2d)
    When I take "50" coffees
    Then message "Fill tank" should be displayed
