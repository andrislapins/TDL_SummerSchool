Given(/^I am on Discord login page$/) do
  @pages.login.load_home_page
end

And(/^I login as (.*)/) do |user|
  file = YAML.load_file('config/test_data.yml')
  case user
    when 'user1' then
      $user_manager.current_user = 'user1'
      @pages.login.fill_form(file['user1'])
    when 'user2' then
      $user_manager.current_user = 'user2'
      @pages.login.fill_form(file['user2'])
    else
      raise 'Login is not correct!'
  end
end


And (/^I click on skip the tutorial/) do
  sleep 5
  if @pages.login.skipButton.visible?
    @pages.login.skipButton.click
  else
    puts 'Skip button is invisble'
  end
end

Then (/^I see that login was successful/) do
  sleep 1
  @pages.home.userSettings.visible?
  @pages.home.friendsTab.visible?
  @pages.home.homeButton.visible?
end

And (/^I log out from Discord App$/) do
  sleep 1
  @pages.home.userSettings.click
  sleep 1
  @pages.home.logOutButton.click
  sleep 1
  if @pages.home.logOutConfirm.visible?  # problem
    @pages.home.logOutConfirm.click
  else
    puts 'Cant see logout confirm'
  end
end

Then (/^I have successfully logged out$/) do
  sleep 1
  @pages.login.email.visible?
end

