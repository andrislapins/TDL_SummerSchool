@cucumber
Feature: Chat

    @chat
    Scenario: Send a Chat Message
        Given I am on Discord login page
        And I login as user1
        And I click on skip the tutorial
        Then I see that login was successful
        And I Start a New Chat with André
        And I Send a Chat Message with text NewTestText123
        Then I clean the direct message list
        And I log out from Discord App
        Then I have successfully logged out
