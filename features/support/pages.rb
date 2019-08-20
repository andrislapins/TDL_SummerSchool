class Pages
  attr_accessor :discordpage, :login, :home, :users, :usermanager, :settings

  def initialize
    @login ||= LoginPage.new
    @home ||= HomePage.new
    @settings ||= SettingsPage.new
  end
end