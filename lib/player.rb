def Player
  attr_reader :name, :hand, :round_wins

  def initialize(name)
    @name = name
    @hand = nil
    @round_wins = 0
  end


end
