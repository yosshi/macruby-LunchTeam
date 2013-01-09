#
#  AppDelegate.rb
#  LunchTeam
#
#  Created by Yoshiyuki MIYAGI on 2013/01/09.
#  Copyright 2013年 Yoshiyuki MIYAGI. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    attr_accessor :inputTextField
    attr_accessor :outputTextField
    attr_accessor :team_number
    
    def applicationDidFinishLaunching(a_notification)
        # Insert code here to initialize your application
    end

    def generateTeam(sender)
        # This method is called when "Let's go Lunch" button

        members = inputTextField.stringValue.split(" ").map do |name|
            Member.new(name.chomp)
        end
        
        teams = Splitter.shuffle(members, team_number.stringValue)
        
        outputTextField.setStringValue(adjustOutputText(teams))
    end
    
    private
    def adjustOutputText(teams)
        outputText = ""
        
        teams.each do |team|
            p team
            team.each do |member|
                outputText.concat member.name + " "
            end
            outputText.concat "\n"
        end
        outputText
    end
end

