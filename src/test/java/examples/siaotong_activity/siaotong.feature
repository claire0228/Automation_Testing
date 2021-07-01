@smoke
Feature: PUP Website Nav Testing

  Scenario Outline: Using <nav>
    * configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<b1>')
    When click('<b2>')
    Then waitForUrl('<expected>')

    Examples:
      | nav              | b1          | b2                       | expected                                             |
      | Student Org      | {a}Students | {a}Student Organizations | https://www.pup.edu.ph/studentservices/organizations |
      | Alumni Relations | {a}Alumni   | {a}Alumni Relations      | https://www.pup.edu.ph/alumni                        |

