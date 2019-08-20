And (/^I Start a 30 Second Voice Call$/) do
    @pages.home.voiceCallButton.visible?
    @pages.home.voiceCallButton.click
    sleep 5 #  30
end

# --- Call v2.0
And (/^I Start a (\d+) Second Voice Call$/) do |seconds|
    @pages.home.voiceCallButton.visible?
    @pages.home.voiceCallButton.click
    sleep seconds
end

And (/^I End the Call$/) do
    @pages.home.leaveCallButton.visible?
    @pages.home.leaveCallButton.click
end
