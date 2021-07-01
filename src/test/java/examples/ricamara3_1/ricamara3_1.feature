@smoke
Feature: PUP Website Testing

  Scenario Outline: PUP <name>
    * configure driver = {type:'chrome'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name                    | btn1                     | btn2                | expected                                         |
      | Graduate Studies page   | {a}Academic              | {a}Graduate Studies | https://www.pup.edu.ph/academic/graduatestudies  |
      | Alumni page             | {a}Alumni                | {a}Alumni Relations | https://www.pup.edu.ph/alumni/                   |