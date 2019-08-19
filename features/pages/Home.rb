require_relative '../../features/pages/base'
# Home page class
class HomePage < BasePage
  attr_accessor :email, :password, :loginButton, :skipButton, :homeButton, :friendsTab, :friendTag, :voiceCallButton
  attr_accessor :chatMessageInput, :leaveCallButton, :userSettings, :logOutButton

  def initialize
    @homeButton = Element.new(:css, "[aria-label='Home']") # ineffective in case of a different display language

    @friendsTab = Element.new(:css, "a[href='/channels/@me']")

    @friendTag = Element.new(:css, "div[class='channel-2QD9_O'] a[href='/channels/@me/610578747573403671']")   

    @voiceCallButton = Element.new(:css, "div[class='toolbar-1t6TWx'] :first-child")

    @leaveCallButton = Element.new(:css, "button[class='exitButton-1DkWLl button-38aScr lookFilled-1Gx00P colorRed-1TFJan sizeSmall-2cSMqn grow-q77ONN']")
  
    @chatMessageInput = Element.new(:css, "form div div div textarea")

    @userSettings = Element.new(:css,"div[class='container-3baos1'] :nth-of-type(3) button:nth-of-type(3)")

    @logOutButton = Element.new(:css,"div[role='dialog']:last-of-type div div div div div div div :nth-child(22)")

    @logOutConfirm = Element.new(:css,"form div:nth-child(3) button[type='submit']")
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