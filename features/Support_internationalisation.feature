@sprint-3
Feature: Support internationalisation
    "**In order to** practice my use of greetings in several languages"
    "**As a** polyglot coffee lover"
    "**I can** select the language on the coffee machine"

  @priority-medium
  Scenario Outline: Messages are based on language (<hiptest-uid>)
    When I start the coffee machine using language "<language>"
    Then message "<ready_message>" should be displayed

    Examples:
      | ready_message | language | hiptest-uid |
      | Ready | en | uid:2a1b33b3-82aa-4cdf-be93-200d0bb8a994 |
      | Pret | fr | uid:41785022-9867-441d-af7c-7702bd6999a9 |

  @priority-medium
  Scenario: No messages are displayed when machine is shut down (uid:22927032-7c21-4891-a775-6d75e521f09d)
    Given the coffee machine is started
    When I shutdown the coffee machine
    Then message "" should be displayed
