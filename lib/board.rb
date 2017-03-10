class Board

  attr_reader :grid

  WINNING_COMBOS = [['A1', 'A2', 'A3'],
                    ['B1', 'B2', 'B3'],
                    ['C1', 'C2', 'C3'],
                    ['A1', 'B1', 'C1'],
                    ['A2', 'B2', 'C2'],
                    ['A3', 'B3', 'C3'],
                    ['A1', 'B2', 'C3'],
                    ['A3', 'B2', 'C1']]

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

  def winner?
    find_possible_wins
    @possible_wins.each do |combo|
      return true if (@grid[combo[0].to_sym].taken_by == @grid[combo[1].to_sym].taken_by && @grid[combo[0].to_sym].taken_by == @grid[combo[2].to_sym].taken_by)
    end
    false
  end

  private

  def find_possible_wins
    @possible_wins = []
    WINNING_COMBOS.each do |combo|
      @possible_wins.push(combo) if (@grid[combo[0].to_sym].taken && @grid[combo[1].to_sym].taken && @grid[combo[2].to_sym].taken)
    end
  end

  def square_taken?(square_ref)
    @grid[square_ref.to_sym].taken == true
  end

end
