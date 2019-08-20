# --- Start Chat v.1.0
And (/^I Start a New Chat$/) do
    sleep 1
    @pages.home.friendsTab.click
    sleep 1
    @pages.home.friendTag.click
end

# --- Start Chat v.2.0
And (/^I Start a New Chat with (.*)$/) do |friend|
    sleep 1
    @pages.home.friendsTab.click
    sleep 1

    begin
        if(!isCertainFriend(friend))
            raise 'No friend with name: ' + friend
        end
    rescue StandardError => e  
        puts e.message  
        # puts e.backtrace.inspect
    end
    @pages.home.chatMessageInput.visible? # a "custom crash"
end

And (/^I Send a Chat Message with text (.*)$/) do |text_message|
    sleep 1
    @pages.home.chatMessageInput.visible?
    @pages.home.chatMessageInput.send_keys(text_message)

    @pages.home.chatMessageInput.send_keys(:return)
end

Then (/^I clean the direct message list$/) do
    @pages.home.friendsTab.click
    page.all(:xpath, "//button[starts-with(@class, 'close')]").each do |closeButton|
        closeButton.find(:xpath,".//..").hover
        closeButton.click
        sleep 1
    end
end 

# --- Comments ---
'''
xpath is good for getting the first occurence of a selector
css will throw an error if there are more than one match

'''

# --- Utilities ---
def isCertainFriend(friend)
    isFound = false
    page.all(:css,"span[class='username-2b1r56 username-1r0gCl']").each do |fr|
        if (fr.text == friend)
            fr.click
            isFound = true
            break
        end
    end
    return isFound
end