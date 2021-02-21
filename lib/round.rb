class Round

  def initialize(player_1_hand = nil, player_2_hand = nil)
    if player_1_hand.nil? && !player_2_hand.nil?
      @computer = Computer.new(rand(), player_2_hand)
    elsif !player_1_hand.nil? && player_2_hand.nil?
      @computer = Computer.new(player_1_hand, rand())
    elsif player_1_hand.nil? && player_2_hand.nil?
      @computer = Computer.new(rand(), rand())
    else
      @computer = Computer.new(player_1_hand, player_2_hand)
    end
  end

  def who_won
    return @computer.compute
  end

  def rand
     sample["rock", "paper", "scissors"]
  end

end
