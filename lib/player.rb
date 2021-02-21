class Player
  attr_reader :name, :round_wins

  def initialize(name)
    @name = name
    @round_wins = 0
  end

  def add_win
    @round_wins += 1
  end

end
