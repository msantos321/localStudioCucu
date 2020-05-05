Feature: Beans
    As a coffee lover
    I have to put fresh beans from time to time
    So I can have coffee when I need it

  Background:
    Given the coffee machine is started
    And I handle everything except the beans

  @priority-high
  Scenario: After adding beans, the message "Fill beans" disappears (uid:ac5756fc-bbe4-4264-a728-f4a1330bae11)
    When I take "40" coffees
    And I fill the beans tank
    Then message "Ready" should be displayed

  @priority-low
  Scenario: It is possible to take 40 coffees before there is really no more beans (uid:876a3914-3bfd-442b-8c80-a56dabe46e34)
    When I take "40" coffees
    Then coffee should be served
    When I take a coffee
    Then coffee should not be served
    And message "Fill beans" should be displayed

  @priority-high
  Scenario: Message "Fill beans" is displayed after 38 coffees are taken (uid:74050f1c-c09c-4b7d-b2f0-afb08867fd7c)
    When I take "38" coffees
    Then message "Fill beans" should be displayed
