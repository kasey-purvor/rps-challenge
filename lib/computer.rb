class Computer
  attr_reader :player_1_hand, :player_2_hand

  def initialize(player_1_hand, player_2_hand)
    @player_1_hand = player_1_hand
    @player_2_hand = player_2_hand
  end

  def compute
    if @player_1_hand == "rock"
      case @player_2_hand
        when "scissors"
          return "player_1"
        when "rock"
          return "draw"
        when "paper"
          return "player_2"
      end
    elsif @player_1_hand == "paper"
      case @player_2_hand
        when "rock"
          return "player_1"
        when "paper"
          return "draw"
        when "scissors"
          return "player_2"
      end
    elsif @player_1_hand == "scissors"
      case @player_2_hand
        when "rock"
          return "player_2"
        when "paper"
          return "player_1"
        when "scissors"
          return "draw"
      end

    else
      return "incorrect hand submission"
    end
  end

end
