require_relative '../../features/pages/base'
# Settings page class
class SettingsPage < BasePage
    attr_accessor :elems, :settingsSidebar, :appearanceSection

    def initialize
        # elems = []
        # page.all(:css, "div[class='side-8zPYf6'] div[class='item-PXvHYJ themed-OHr7kt']").each do |elem|
        #     elems.push(elem)
        # end

        # for i in elems do
        #     puts i
        # end
        ###
        # --- I Wanted to initalize each section as a new element with Element.new and then access elements by indexing through an array

        @settingsSidebar = Element.new(:css, "div[class='side-8zPYf6']")
        @appearanceSection = Element.new(:xpath, "//div[@class='side-8zPYf6']/div[16]")
    end
end