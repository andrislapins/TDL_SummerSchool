require_relative '../../features/pages/base'
# Login page class
class LoginPage < BasePage
  attr_accessor :email, :password, :loginButton, :skipButton, :homeButton, :friendsTab, :friendTag, :voiceCallButton
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton

  def initialize
    @email = Element.new(:xpath, "//*[@id='app-mount']/div[1]/div/div[2]/div/form/div/div[3]/div[1]/div/input")
    @password = Element.new(:xpath, "//input[@type='password']")
    @loginButton = Element.new(:xpath, "//button[@type='submit']")
    @skipButton = Element.new(:xpath, "//*[text()='Skip']")
  end

  def fill_form(user)
    @email.visible?
    @email.click
    @email.send_keys user['email']
    @password.click
    @password.send_keys user['password']
    @loginButton.click
  end

  def load_home_page
    visit ''
  end
end