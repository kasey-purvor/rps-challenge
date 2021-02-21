class Match
  attr_reader :winner, :round

  def initialize(player_1_name, player_2_name)
    $player_1 = Player.new(player_1_name)
    $player_2 = Player.new(player_2_name)
    @scores = {player_1_scores: nil, player_2_score: nil }
    @winner = []
    @round = 1
  end

  def save_result(round)


  end

end
