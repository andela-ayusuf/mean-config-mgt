Feature: Configure MEAN stack and New Relic

  Scenario: Download Keys and Repos sources and Update cache
    When I download Keys and Repos sources and Update cache
    Then it should be successful

  Scenario: Install MongoDB
    When I install MongoDB
    Then it should be successful
    And MongoDB shuld be running

  Scenario: Install Nodejs
    When I install Nodejs
    Then it should be successful

  Scenario: Install Packages
    When I install Packages
    Then it should be successful

  Scenario: Clone project repository
    When I clone project repository
    Then it should be successful

  Scenario: Setup New Relic
    When I setup New Relic
    Then it should be successful
    And the newrelic.js file should exists

  Scenario: Install modules in package.json file
    When I install modules in package.json file
    Then it should be successful