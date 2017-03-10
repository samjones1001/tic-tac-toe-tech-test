class Game

  def initialize(player_1 = Player.new('Sam'), player_2 = Player.new('Dave'))
    @player_1 = player_1
    @player_2 = player_2
  end

end
