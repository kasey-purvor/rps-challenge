class Round
  attr_reader :player_1_hand, :player_2_hand

  def initialise
    @round_winner = nil
  end

  def set_winner(player)
    @round_winner = player
  end

end
