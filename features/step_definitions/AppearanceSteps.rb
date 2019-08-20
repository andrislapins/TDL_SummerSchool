And (/^Entering the Appearance section$/) do

    @pages.home.userSettings.visible?
    @pages.home.userSettings.click
    
    within :xpath, "//div[@class='side-8zPYf6']" do
        page.find(:xpath, "./div[16]").click
    end

    expect(page).to have_css("div[class='contentColumn-2hrIYH contentColumnDefault-1VQkGM']")
    expect(page).to have_xpath("//h5[text()='Theme']")
    page.has_content?("div[class='radioGroup-1GBvlr']")

end 

And (/^Changing the theme$/) do
    within :xpath, "(//div[@class='radioGroup-1GBvlr'])[1]", match: :first do #fiiirst
        page.all(:css, "label[class='checkboxWrapper-SkhIWG']").each do |box|
            if (box.find(:xpath, "div[not(contains(@class, 'checked-3_4uQ9'))]"))
                box.click
                break
            end
        end
    end
end

Then (/^Exiting the page$/) do
    page.find(:css, "*[class='closeButton-1tv5uR']").click
end
