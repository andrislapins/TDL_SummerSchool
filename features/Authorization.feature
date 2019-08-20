@cucumber
Feature: Authorization

    @signin
    Scenario: Sign in Discord Web App
        Given I am on Discord login page
        And I login as user1
        And I click on skip the tutorial
        Then I see that login was successful
        And I log out from Discord App
        Then I have successfully logged out

    @signout
    Scenario: Log out from Discord Web App
        Given I am on Discord login page
        And I login as user1
        And I click on skip the tutorial
        And I log out from Discord App
        Then I have successfully logged out
