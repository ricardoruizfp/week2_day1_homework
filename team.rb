class Teams


  attr_accessor :coach
  attr_reader :name, :players

  def initialize(arg1, arg2, arg3, arg4)
    @name = arg1
    @players = arg2
    @coach = arg3
    @points = arg4
  end

  @points = 0

  def add_player(player)
    @players.push(player)
  end

  def find_player(name)
    for player in @players
      if player == name
        return true
      end
    end
    return false
  end

# have an if statement, if true = +1 point, if false,
# no points; checks for string
  def victory_loss(victory)
    if victory
      @points += 1
    else
      return @points
    end
  end

end
