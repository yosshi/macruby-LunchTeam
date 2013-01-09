#
#  Splitter.rb
#  LunchTeam
#
#  Created by Yoshiyuki MIYAGI on 2013/01/09.
#  Copyright 2013年 Yoshiyuki MIYAGI. All rights reserved.
#


class Splitter
    def initialize
    end
    
    def self.shuffle(members, number_of_team)
        team_member_number = members.count / number_of_team.to_i
        if members.count % number_of_team.to_i > 0
            team_member_number = team_member_number + 1
        end
        members.shuffle.each_slice(team_member_number)
    end
end