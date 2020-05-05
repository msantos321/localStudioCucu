@sprint-2
Feature: Can be configured
    "**In order to** get the best possible coffees"
    "**As a** geeky coffee lover"
    "**I can** configure it to match my needs"

  @priority-medium
  Scenario: Display settings (uid:fc19702c-a366-4c9f-9d0c-aecb5070b1e1)
    Given the coffee machine is started
    When I switch to settings mode
    Then displayed message is:
      """
      Settings:
       - 1: water hardness
       - 2: grinder
      """

  @priority-high
  Scenario: Default settings (uid:7071f912-157b-494c-af1c-2750b1ab0f16)
    Given the coffee machine is started
    When I switch to settings mode
    Then settings should be:
      | water hardness | 2      |
      | grinder        | medium |
