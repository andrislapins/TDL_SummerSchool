@cucumber
Feature: Call

    @call
    Scenario: Make a 30 second Call With Another User
        Given I am on Discord login page
        And I login as user1
        And I click on skip the tutorial
        And I Start a New Chat with André
        And I Start a 5 Second Voice Call
        And I End the Call
        And I log out from Discord App
        Then I have successfully logged out