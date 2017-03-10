class Board

  attr_reader :grid

  def initialize(square = Square)
    @grid = {}
    [*'A'..'C'].each do |letter|
      [*1..3].each do |number|
        grid["#{letter}#{number}".to_sym] = square.new
      end
    end
  end

  def fill_square(player, square_ref)
    raise 'That square is already taken!' if square_taken?(square_ref)
    @grid[square_ref.to_sym].set_to_taken(player)
  end

  def all_squares_taken?
    taken_squares = @grid.select{ |k,v| v.taken == true }
    taken_squares.length == @grid.length
  end

  private

  def square_taken?(square_ref)
    @grid[square_ref.to_sym].taken == true
  end

end
