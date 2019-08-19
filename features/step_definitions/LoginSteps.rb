Given(/^I am on login page$/) do
  @pages.login.load_home_page
end

And(/^I login as (.*)/) do |user|
file = YAML.load_file('config/test_data.yml')
  case user
    when 'user1' then
      $user_manager.current_user = 'user1'
      @pages.login.fill_form(file['user1'])
      sleep 5
      if @pages.login.skipButton.visible?
        @pages.login.skipButton.click
      else
        puts 'Skip button is invisble'
      end
    when 'user2' then
      $user_manager.current_user = 'user2'
      @pages.login.fill_form(file['user2'])
    else
      raise 'Login is not correct!'
  end
end

=begin
And (/^I click on skip the tutorial/) do
  sleep 5
  if @pages.login.skipButton.visible?
    @pages.login.skipButton.click
  else
    puts 'Skip button is invisble'
  end
end
=end
