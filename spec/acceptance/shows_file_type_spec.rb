require File.dirname(__FILE__) + '/../acceptance_helper'

describe 'Showing the type of an attached file', js: true do

    it "shows the correct type" do
      visit '/'
      attach_file('File', File.dirname(__FILE__) + '/../fixtures/black.mp4')
      click_button('Show Type')

      console_messages  = page.driver.console_messages.map{|msg| msg[:message]}

      p console_messages

      expect(console_messages).to include('Type is: video/mp4')
    end

end
