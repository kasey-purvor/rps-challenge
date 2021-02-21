feature "name input form " do
  before do
    sign_in_and_play
  end
  
  scenario " when starting, the players can save their names " do
    expect(page).to have_content "Fred VS. Bob"
  end
  scenario "when playing, the playrs can see their scores" do
    expect(page).to have_content "Score: Fred = 0 rounds, Bob = 0 rounds"
  end

end
