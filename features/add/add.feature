Feature: Design and build a ui that adds

  @javascript
  Scenario Outline: I add
    Given I have the initial value <initial_value>
    When I add the value <addition_value>
    Then I am returned <calculation_value>

    Examples:
      | initial_value | addition_value | calculation_value |
      | 0             | 10             | 10                |
      | 0             | 10,20          | 30                |
      | 10            | 50             | 60                |
      | 10            | 50,40          | 100               |