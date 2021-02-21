require 'spec_helper'
def sign_in_and_play
  visit '/'
  fill_in :player_1_name, with: "Fred"
  fill_in :player_2_name, with: "Bob"
  click_button "Submit"
end

def player_1_wins_a_round
  fill_in :player_1_hand, with: "scissors"
  fill_in :player_2_hand, with: "paper"
  click_button "Fight"
end
