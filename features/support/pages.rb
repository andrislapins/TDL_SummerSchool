class Pages
  attr_accessor :discordpage, :login, :home, :users, :usermanager

  def initialize
    @login ||= LoginPage.new
    @home ||= HomePage.new
  end
end