class Game

  attr_reader :player_1, :player_2, :current_player, :board

  def initialize(player_1 = Player.new('X'), player_2 = Player.new('O'), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @board = board
  end

  def play_turn(square_ref)
    @board.fill_square(@current_player.name, square_ref)
    switch_turn
  end

  def switch_turn
    @current_player == player_1 ? @current_player = player_2 : @current_player = player_1
  end

end
