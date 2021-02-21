feature "name input form " do
  scenario " when starting, the players can save their names " do
    sign_in_and_play
    expect(page).to have_content "Fred VS. Bob"
  end
  scenario "when playing, the playrs can see their scores" do
    sign_in_and_play
    expect(page).to have_content "Score: Fred = 0 rounds, Bob = 0 rounds"
  end
end

feature "keeps track of score" do
  scenario "player 1 wins a round " do
    sign_in_and_play
    click_link "Play"
    player_1_wins_a_round
    expect(page).to have_content "player_1 Wins This Round!"
  end
  scenario "after player 1 wins a round, the stats page updates the score" do
    sign_in_and_play
    click_link "Play"
    player_1_wins_a_round
    click_link "Continue"
    expect(page).to have_content "Score: Fred = 1 rounds, Bob = 0 rounds"
  end
end
