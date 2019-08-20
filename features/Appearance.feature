@cucumber
Feature: Appearance

   @changeTheme
   Scenario: Change to the second theme
    Given I am on Discord login page
    And I login as user1
    And I click on skip the tutorial
    Then I see that login was successful
    
    And Entering the Appearance section
    And Changing the theme
    Then Exiting the page

    And I log out from Discord App
    Then I have successfully logged out