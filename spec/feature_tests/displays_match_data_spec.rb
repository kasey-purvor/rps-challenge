feature "keeps track of score" do
  scenario "player 1 wins a round " do
    sign_in_and_play
    click_link "Play"
    fill_in :player_1_hand, with: "scissors"
    fill_in :player_2_hand, with: "paper"
    click_button "Fight"
    expect(page).to have_content "Player 1 Wins This Round!"
    # code for playr 1 wining a ropund
  end
end
