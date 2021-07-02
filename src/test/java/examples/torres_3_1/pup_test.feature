@smoke
Feature: PUP_Website

  Scenario Outline: About Us - PUP <name>
    * configure driver = {type:'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<dropdown>')
    When click('<link2>')
    Then waitForUrl('<expected>')

    Examples:
      | name               | dropdown      | link2                 | expected                                   |
      | University Profile | {a}About PUP  | {a}University Profile | https://www.pup.edu.ph/about/              |
      | Annual Reports     | {a}About PUP  | {a}Annual Reports     | https://www.pup.edu.ph/about/annualreports |
      | University Code    | {a}About PUP  | {a}University Code    | https://www.pup.edu.ph/about/code          |
      | Vision and Mission | {a}About PUP  | {a}Vision and Mission | https://www.pup.edu.ph/about/vm            |
      | History            | {a}About PUP  | {a}History            | https://www.pup.edu.ph/about/history       |